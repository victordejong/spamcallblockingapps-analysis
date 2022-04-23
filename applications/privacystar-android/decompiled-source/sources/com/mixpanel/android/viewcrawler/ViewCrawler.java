package com.mixpanel.android.viewcrawler;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.JsonWriter;
import com.apptentive.android.sdk.util.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.mpmetrics.MPConfig;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import com.mixpanel.android.mpmetrics.OnMixpanelTweaksUpdatedListener;
import com.mixpanel.android.mpmetrics.ResourceReader;
import com.mixpanel.android.mpmetrics.SuperPropertyUpdate;
import com.mixpanel.android.mpmetrics.Tweaks;
import com.mixpanel.android.util.ImageStore;
import com.mixpanel.android.util.JSONUtils;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.MPPair;
import com.mixpanel.android.viewcrawler.EditProtocol;
import com.mixpanel.android.viewcrawler.EditorConnection;
import com.mixpanel.android.viewcrawler.FlipGesture;
import com.mixpanel.android.viewcrawler.ViewVisitor;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler.class */
public class ViewCrawler implements UpdatesFromMixpanel, TrackingDebug, ViewVisitor.OnLayoutErrorListener {
    private static final int EMULATOR_CONNECT_ATTEMPT_INTERVAL_MILLIS = 30000;
    private static final String LOGTAG = "MixpanelAPI.ViewCrawler";
    private static final int MESSAGE_CONNECT_TO_EDITOR = 1;
    private static final int MESSAGE_EVENT_BINDINGS_RECEIVED = 5;
    private static final int MESSAGE_HANDLE_EDITOR_BINDINGS_RECEIVED = 6;
    private static final int MESSAGE_HANDLE_EDITOR_CHANGES_CLEARED = 10;
    private static final int MESSAGE_HANDLE_EDITOR_CHANGES_RECEIVED = 3;
    private static final int MESSAGE_HANDLE_EDITOR_CLOSED = 8;
    private static final int MESSAGE_HANDLE_EDITOR_TWEAKS_RECEIVED = 11;
    private static final int MESSAGE_INITIALIZE_CHANGES = 0;
    private static final int MESSAGE_PERSIST_VARIANTS_RECEIVED = 13;
    private static final int MESSAGE_SEND_DEVICE_INFO = 4;
    private static final int MESSAGE_SEND_EVENT_TRACKED = 7;
    private static final int MESSAGE_SEND_LAYOUT_ERROR = 12;
    private static final int MESSAGE_SEND_STATE_FOR_EDITING = 2;
    private static final int MESSAGE_VARIANTS_RECEIVED = 9;
    private static final String SHARED_PREF_BINDINGS_KEY = "mixpanel.viewcrawler.bindings";
    private static final String SHARED_PREF_CHANGES_KEY = "mixpanel.viewcrawler.changes";
    private static final String SHARED_PREF_EDITS_FILE = "mixpanel.viewcrawler.changes";
    private final MPConfig mConfig;
    private final Context mContext;
    private final Map<String, String> mDeviceInfo;
    private final DynamicEventTracker mDynamicEventTracker;
    private final ViewCrawlerHandler mMessageThreadHandler;
    private final MixpanelAPI mMixpanel;
    private final Tweaks mTweaks;
    private final EditState mEditState = new EditState();
    private final float mScaledDensity = Resources.getSystem().getDisplayMetrics().scaledDensity;
    private final Set<OnMixpanelTweaksUpdatedListener> mTweaksUpdatedListeners = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler$Editor.class */
    public class Editor implements EditorConnection.Editor {
        private Editor() {
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void bindEvents(JSONObject jSONObject) {
            Message obtainMessage = ViewCrawler.this.mMessageThreadHandler.obtainMessage(6);
            obtainMessage.obj = jSONObject;
            ViewCrawler.this.mMessageThreadHandler.sendMessage(obtainMessage);
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void cleanup() {
            ViewCrawler.this.mMessageThreadHandler.sendMessage(ViewCrawler.this.mMessageThreadHandler.obtainMessage(8));
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void clearEdits(JSONObject jSONObject) {
            Message obtainMessage = ViewCrawler.this.mMessageThreadHandler.obtainMessage(10);
            obtainMessage.obj = jSONObject;
            ViewCrawler.this.mMessageThreadHandler.sendMessage(obtainMessage);
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void performEdit(JSONObject jSONObject) {
            Message obtainMessage = ViewCrawler.this.mMessageThreadHandler.obtainMessage(3);
            obtainMessage.obj = jSONObject;
            ViewCrawler.this.mMessageThreadHandler.sendMessage(obtainMessage);
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void sendDeviceInfo() {
            ViewCrawler.this.mMessageThreadHandler.sendMessage(ViewCrawler.this.mMessageThreadHandler.obtainMessage(4));
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void sendSnapshot(JSONObject jSONObject) {
            Message obtainMessage = ViewCrawler.this.mMessageThreadHandler.obtainMessage(2);
            obtainMessage.obj = jSONObject;
            ViewCrawler.this.mMessageThreadHandler.sendMessage(obtainMessage);
        }

        @Override // com.mixpanel.android.viewcrawler.EditorConnection.Editor
        public void setTweaks(JSONObject jSONObject) {
            Message obtainMessage = ViewCrawler.this.mMessageThreadHandler.obtainMessage(11);
            obtainMessage.obj = jSONObject;
            ViewCrawler.this.mMessageThreadHandler.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler$EmulatorConnector.class */
    public class EmulatorConnector implements Runnable {
        private volatile boolean mStopped = true;

        public EmulatorConnector() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mStopped) {
                ViewCrawler.this.mMessageThreadHandler.sendMessage(ViewCrawler.this.mMessageThreadHandler.obtainMessage(1));
            }
            ViewCrawler.this.mMessageThreadHandler.postDelayed(this, 30000L);
        }

        public void start() {
            this.mStopped = false;
            ViewCrawler.this.mMessageThreadHandler.post(this);
        }

        public void stop() {
            this.mStopped = true;
            ViewCrawler.this.mMessageThreadHandler.removeCallbacks(this);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler$LifecycleCallbacks.class */
    private class LifecycleCallbacks implements Application.ActivityLifecycleCallbacks, FlipGesture.OnFlipGestureListener {
        private final EmulatorConnector mEmulatorConnector;
        private final FlipGesture mFlipGesture = new FlipGesture(this);

        public LifecycleCallbacks() {
            this.mEmulatorConnector = new EmulatorConnector();
        }

        private void installConnectionSensor(Activity activity) {
            if (isInEmulator() && !ViewCrawler.this.mConfig.getDisableEmulatorBindingUI()) {
                this.mEmulatorConnector.start();
            } else if (!ViewCrawler.this.mConfig.getDisableGestureBindingUI()) {
                SensorManager sensorManager = (SensorManager) activity.getSystemService("sensor");
                sensorManager.registerListener(this.mFlipGesture, sensorManager.getDefaultSensor(1), 3);
            }
        }

        private boolean isInEmulator() {
            if (Build.HARDWARE.toLowerCase().equals("goldfish") || Build.HARDWARE.toLowerCase().equals("ranchu")) {
                return (Build.BRAND.toLowerCase().startsWith("generic") || Build.BRAND.toLowerCase().equals(AbstractSpiCall.ANDROID_CLIENT_TYPE) || Build.BRAND.toLowerCase().equals("google")) && Build.DEVICE.toLowerCase().startsWith("generic") && Build.PRODUCT.toLowerCase().contains("sdk") && Build.MODEL.toLowerCase(Locale.US).contains("sdk");
            }
            return false;
        }

        private void uninstallConnectionSensor(Activity activity) {
            if (isInEmulator() && !ViewCrawler.this.mConfig.getDisableEmulatorBindingUI()) {
                this.mEmulatorConnector.stop();
            } else if (!ViewCrawler.this.mConfig.getDisableGestureBindingUI()) {
                ((SensorManager) activity.getSystemService("sensor")).unregisterListener(this.mFlipGesture);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            ViewCrawler.this.mEditState.remove(activity);
            uninstallConnectionSensor(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            installConnectionSensor(activity);
            ViewCrawler.this.mEditState.add(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // com.mixpanel.android.viewcrawler.FlipGesture.OnFlipGestureListener
        public void onFlipGesture() {
            ViewCrawler.this.mMessageThreadHandler.sendMessage(ViewCrawler.this.mMessageThreadHandler.obtainMessage(1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler$VariantChange.class */
    public static class VariantChange {
        public final String activityName;
        public final JSONObject change;
        public final String name;
        public final MPPair<Integer, Integer> variantId;

        public VariantChange(String str, String str2, JSONObject jSONObject, MPPair<Integer, Integer> mPPair) {
            this.name = str;
            this.activityName = str2;
            this.change = jSONObject;
            this.variantId = mPPair;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof VariantChange)) {
                return false;
            }
            if (obj.hashCode() == hashCode()) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return this.name.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler$VariantTweak.class */
    public static class VariantTweak {
        public final JSONObject tweak;
        public final String tweakName;
        public final MPPair<Integer, Integer> variantId;

        public VariantTweak(String str, JSONObject jSONObject, MPPair<Integer, Integer> mPPair) {
            this.tweakName = str;
            this.tweak = jSONObject;
            this.variantId = mPPair;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (!(obj instanceof VariantTweak)) {
                return false;
            }
            if (obj.hashCode() == hashCode()) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return this.tweakName.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/ViewCrawler$ViewCrawlerHandler.class */
    public class ViewCrawlerHandler extends Handler {
        private final Set<VariantTweak> mAppliedTweaks;
        private final Set<VariantChange> mAppliedVisualChanges;
        private final List<String> mEditorAssetUrls;
        private final Map<String, MPPair<String, JSONObject>> mEditorChanges;
        private EditorConnection mEditorConnection;
        private final Map<String, MPPair<String, JSONObject>> mEditorEventBindings;
        private final List<JSONObject> mEditorTweaks;
        private final Set<MPPair<Integer, Integer>> mEmptyExperiments;
        private final ImageStore mImageStore;
        private final Set<MPPair<String, JSONObject>> mOriginalEventBindings;
        private final Set<MPPair<String, JSONObject>> mPersistentEventBindings;
        private final EditProtocol mProtocol;
        private final Set<MPPair<Integer, Integer>> mSeenExperiments;
        private ViewSnapshot mSnapshot = null;
        private final Lock mStartLock;
        private final String mToken;

        public ViewCrawlerHandler(Context context, String str, Looper looper, ViewVisitor.OnLayoutErrorListener onLayoutErrorListener) {
            super(looper);
            this.mToken = str;
            String resourcePackageName = ViewCrawler.this.mConfig.getResourcePackageName();
            ResourceReader.Ids ids = new ResourceReader.Ids(resourcePackageName == null ? context.getPackageName() : resourcePackageName, context);
            this.mImageStore = new ImageStore(context, "ViewCrawler");
            this.mProtocol = new EditProtocol(context, ids, this.mImageStore, onLayoutErrorListener);
            this.mOriginalEventBindings = new HashSet();
            this.mEditorChanges = new HashMap();
            this.mEditorTweaks = new ArrayList();
            this.mEditorAssetUrls = new ArrayList();
            this.mEditorEventBindings = new HashMap();
            this.mAppliedVisualChanges = new HashSet();
            this.mAppliedTweaks = new HashSet();
            this.mEmptyExperiments = new HashSet();
            this.mPersistentEventBindings = new HashSet();
            this.mSeenExperiments = new HashSet();
            this.mStartLock = new ReentrantLock();
            this.mStartLock.lock();
        }

        private void applyVariantsAndEventBindings() {
            List list;
            Tweaks.TweakValue fromJson;
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (VariantChange variantChange : this.mAppliedVisualChanges) {
                try {
                    arrayList.add(new MPPair(variantChange.activityName, this.mProtocol.readEdit(variantChange.change).visitor));
                    if (!this.mSeenExperiments.contains(variantChange.variantId)) {
                        hashSet.add(variantChange.variantId);
                    }
                } catch (EditProtocol.CantGetEditAssetsException e) {
                    MPLog.m306v(ViewCrawler.LOGTAG, "Can't load assets for an edit, won't apply the change now", e);
                } catch (EditProtocol.InapplicableInstructionsException e2) {
                    MPLog.m309i(ViewCrawler.LOGTAG, e2.getMessage());
                } catch (EditProtocol.BadInstructionsException e3) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Bad persistent change request cannot be applied.", e3);
                }
            }
            for (VariantTweak variantTweak : this.mAppliedTweaks) {
                try {
                    MPPair<String, Object> readTweak = this.mProtocol.readTweak(variantTweak.tweak);
                    if (!this.mSeenExperiments.contains(variantTweak.variantId)) {
                        hashSet.add(variantTweak.variantId);
                        hashSet2.add(readTweak.first);
                    } else if (ViewCrawler.this.mTweaks.isNewValue((String) readTweak.first, readTweak.second)) {
                        hashSet2.add(readTweak.first);
                    }
                    if (!ViewCrawler.this.mTweaks.getAllValues().containsKey(readTweak.first) && (fromJson = Tweaks.TweakValue.fromJson(variantTweak.tweak)) != null) {
                        ViewCrawler.this.mTweaks.declareTweak((String) readTweak.first, fromJson.getDefaultValue(), fromJson.getMinimum(), fromJson.getMaximum(), fromJson.type);
                    }
                    ViewCrawler.this.mTweaks.set((String) readTweak.first, readTweak.second);
                } catch (EditProtocol.BadInstructionsException e4) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Bad editor tweak cannot be applied.", e4);
                }
            }
            if (this.mAppliedTweaks.size() == 0) {
                for (Map.Entry<String, Tweaks.TweakValue> entry : ViewCrawler.this.mTweaks.getDefaultValues().entrySet()) {
                    Tweaks.TweakValue value = entry.getValue();
                    String key = entry.getKey();
                    if (ViewCrawler.this.mTweaks.isNewValue(key, value.getValue())) {
                        ViewCrawler.this.mTweaks.set(key, value.getValue());
                        hashSet2.add(key);
                    }
                }
            }
            for (MPPair<String, JSONObject> mPPair : this.mEditorChanges.values()) {
                try {
                    EditProtocol.Edit readEdit = this.mProtocol.readEdit((JSONObject) mPPair.second);
                    arrayList.add(new MPPair(mPPair.first, readEdit.visitor));
                    this.mEditorAssetUrls.addAll(readEdit.imageUrls);
                } catch (EditProtocol.InapplicableInstructionsException e5) {
                    MPLog.m309i(ViewCrawler.LOGTAG, e5.getMessage());
                } catch (EditProtocol.BadInstructionsException e6) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Bad editor change request cannot be applied.", e6);
                } catch (EditProtocol.CantGetEditAssetsException e7) {
                    MPLog.m306v(ViewCrawler.LOGTAG, "Can't load assets for an edit, won't apply the change now", e7);
                }
            }
            int size = this.mEditorTweaks.size();
            for (int i = 0; i < size; i++) {
                try {
                    MPPair<String, Object> readTweak2 = this.mProtocol.readTweak(this.mEditorTweaks.get(i));
                    if (ViewCrawler.this.mTweaks.isNewValue((String) readTweak2.first, readTweak2.second)) {
                        hashSet2.add(readTweak2.first);
                    }
                    ViewCrawler.this.mTweaks.set((String) readTweak2.first, readTweak2.second);
                } catch (EditProtocol.BadInstructionsException e8) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Strange tweaks received", e8);
                }
            }
            if (this.mEditorEventBindings.size() == 0 && this.mOriginalEventBindings.size() == 0) {
                for (MPPair<String, JSONObject> mPPair2 : this.mPersistentEventBindings) {
                    try {
                        arrayList.add(new MPPair(mPPair2.first, this.mProtocol.readEventBinding((JSONObject) mPPair2.second, ViewCrawler.this.mDynamicEventTracker)));
                    } catch (EditProtocol.InapplicableInstructionsException e9) {
                        MPLog.m309i(ViewCrawler.LOGTAG, e9.getMessage());
                    } catch (EditProtocol.BadInstructionsException e10) {
                        MPLog.m310e(ViewCrawler.LOGTAG, "Bad persistent event binding cannot be applied.", e10);
                    }
                }
            }
            for (MPPair<String, JSONObject> mPPair3 : this.mEditorEventBindings.values()) {
                try {
                    arrayList.add(new MPPair(mPPair3.first, this.mProtocol.readEventBinding((JSONObject) mPPair3.second, ViewCrawler.this.mDynamicEventTracker)));
                } catch (EditProtocol.InapplicableInstructionsException e11) {
                    MPLog.m309i(ViewCrawler.LOGTAG, e11.getMessage());
                } catch (EditProtocol.BadInstructionsException e12) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Bad editor event binding cannot be applied.", e12);
                }
            }
            HashMap hashMap = new HashMap();
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                MPPair mPPair4 = (MPPair) arrayList.get(i2);
                if (hashMap.containsKey(mPPair4.first)) {
                    list = (List) hashMap.get(mPPair4.first);
                } else {
                    list = new ArrayList();
                    hashMap.put(mPPair4.first, list);
                }
                list.add(mPPair4.second);
            }
            ViewCrawler.this.mEditState.setEdits(hashMap);
            this.mSeenExperiments.addAll(hashSet);
            hashSet.addAll(this.mEmptyExperiments);
            trackSeenExperiments(hashSet);
            this.mEmptyExperiments.clear();
            if (hashSet2.size() > 0) {
                for (OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener : ViewCrawler.this.mTweaksUpdatedListeners) {
                    onMixpanelTweaksUpdatedListener.onMixpanelTweakUpdated(hashSet2);
                }
            }
        }

        private void connectToEditor() {
            MPLog.m307v(ViewCrawler.LOGTAG, "connecting to editor");
            if (this.mEditorConnection == null || !this.mEditorConnection.isValid()) {
                SSLSocketFactory sSLSocketFactory = ViewCrawler.this.mConfig.getSSLSocketFactory();
                if (sSLSocketFactory == null) {
                    MPLog.m307v(ViewCrawler.LOGTAG, "SSL is not available on this device, no connection will be attempted to the events editor.");
                    return;
                }
                String str = MPConfig.getInstance(ViewCrawler.this.mContext).getEditorUrl() + this.mToken;
                try {
                    this.mEditorConnection = new EditorConnection(new URI(str), new Editor(), sSLSocketFactory.createSocket());
                } catch (EditorConnection.EditorConnectionException e) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Error connecting to URI " + str, e);
                } catch (IOException e2) {
                    MPLog.m308i(ViewCrawler.LOGTAG, "Can't create SSL Socket to connect to editor service", e2);
                } catch (URISyntaxException e3) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Error parsing URI " + str + " for editor websocket", e3);
                }
            } else {
                MPLog.m307v(ViewCrawler.LOGTAG, "There is already a valid connection to an events editor.");
            }
        }

        private SharedPreferences getSharedPreferences() {
            return ViewCrawler.this.mContext.getSharedPreferences("mixpanel.viewcrawler.changes" + this.mToken, 0);
        }

        private void handleEditorBindingsCleared(JSONObject jSONObject) {
            try {
                JSONArray jSONArray = jSONObject.getJSONObject("payload").getJSONArray("actions");
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.mEditorChanges.remove(jSONArray.getString(i));
                }
            } catch (JSONException e) {
                MPLog.m310e(ViewCrawler.LOGTAG, "Bad clear request received", e);
            }
            applyVariantsAndEventBindings();
        }

        private void handleEditorBindingsReceived(JSONObject jSONObject) {
            try {
                JSONArray jSONArray = jSONObject.getJSONObject("payload").getJSONArray(Constants.PREF_KEY_RATING_EVENTS);
                int length = jSONArray.length();
                this.mEditorEventBindings.clear();
                if (!this.mPersistentEventBindings.isEmpty() && this.mOriginalEventBindings.isEmpty()) {
                    this.mOriginalEventBindings.addAll(this.mPersistentEventBindings);
                    for (MPPair<String, JSONObject> mPPair : this.mPersistentEventBindings) {
                        try {
                            this.mEditorEventBindings.put(((JSONObject) mPPair.second).get("path").toString(), mPPair);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                    this.mPersistentEventBindings.clear();
                }
                for (int i = 0; i < length; i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        this.mEditorEventBindings.put(jSONObject2.get("path").toString(), new MPPair<>(JSONUtils.optionalStringKey(jSONObject2, "target_activity"), jSONObject2));
                    } catch (JSONException e2) {
                        MPLog.m310e(ViewCrawler.LOGTAG, "Bad event binding received from editor in " + jSONArray.toString(), e2);
                    }
                }
                applyVariantsAndEventBindings();
            } catch (JSONException e3) {
                MPLog.m310e(ViewCrawler.LOGTAG, "Bad event bindings received", e3);
            }
        }

        private void handleEditorChangeReceived(JSONObject jSONObject) {
            try {
                JSONArray jSONArray = jSONObject.getJSONObject("payload").getJSONArray("actions");
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    String optionalStringKey = JSONUtils.optionalStringKey(jSONObject2, "target_activity");
                    this.mEditorChanges.put(jSONObject2.getString("name"), new MPPair<>(optionalStringKey, jSONObject2));
                }
                applyVariantsAndEventBindings();
            } catch (JSONException e) {
                MPLog.m310e(ViewCrawler.LOGTAG, "Bad change request received", e);
            }
        }

        private void handleEditorClosed() {
            this.mEditorChanges.clear();
            this.mEditorEventBindings.clear();
            this.mEditorTweaks.clear();
            this.mPersistentEventBindings.addAll(this.mOriginalEventBindings);
            this.mOriginalEventBindings.clear();
            this.mSnapshot = null;
            MPLog.m307v(ViewCrawler.LOGTAG, "Editor closed- freeing snapshot");
            applyVariantsAndEventBindings();
            for (String str : this.mEditorAssetUrls) {
                this.mImageStore.deleteStorage(str);
            }
        }

        private void handleEditorTweaksReceived(JSONObject jSONObject) {
            try {
                this.mEditorTweaks.clear();
                JSONArray jSONArray = jSONObject.getJSONObject("payload").getJSONArray("tweaks");
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    this.mEditorTweaks.add(jSONArray.getJSONObject(i));
                }
            } catch (JSONException e) {
                MPLog.m310e(ViewCrawler.LOGTAG, "Bad tweaks received", e);
            }
            applyVariantsAndEventBindings();
        }

        private void handleEventBindingsReceived(JSONArray jSONArray) {
            SharedPreferences.Editor edit = getSharedPreferences().edit();
            edit.putString(ViewCrawler.SHARED_PREF_BINDINGS_KEY, jSONArray.toString());
            edit.apply();
            loadEventBindings(jSONArray.toString());
            applyVariantsAndEventBindings();
        }

        private void handleVariantsReceived(JSONArray jSONArray) {
            persistVariants(jSONArray);
            loadVariants(jSONArray.toString(), true);
            applyVariantsAndEventBindings();
        }

        private void loadEventBindings(String str) {
            if (str != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    this.mPersistentEventBindings.clear();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        this.mPersistentEventBindings.add(new MPPair<>(JSONUtils.optionalStringKey(jSONObject, "target_activity"), jSONObject));
                    }
                } catch (JSONException e) {
                    MPLog.m308i(ViewCrawler.LOGTAG, "JSON error when loading event bindings, clearing persistent memory", e);
                    SharedPreferences.Editor edit = getSharedPreferences().edit();
                    edit.remove(ViewCrawler.SHARED_PREF_BINDINGS_KEY);
                    edit.apply();
                }
            }
        }

        private void loadKnownChanges() {
            SharedPreferences sharedPreferences = getSharedPreferences();
            String string = sharedPreferences.getString("mixpanel.viewcrawler.changes", null);
            String string2 = sharedPreferences.getString(ViewCrawler.SHARED_PREF_BINDINGS_KEY, null);
            this.mAppliedVisualChanges.clear();
            this.mAppliedTweaks.clear();
            this.mSeenExperiments.clear();
            loadVariants(string, false);
            this.mPersistentEventBindings.clear();
            loadEventBindings(string2);
            applyVariantsAndEventBindings();
        }

        private void loadVariants(String str, boolean z) {
            if (str != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        MPPair<Integer, Integer> mPPair = new MPPair<>(Integer.valueOf(jSONObject.getInt("experiment_id")), Integer.valueOf(jSONObject.getInt("id")));
                        JSONArray jSONArray2 = jSONObject.getJSONArray("actions");
                        int length2 = jSONArray2.length();
                        for (int i2 = 0; i2 < length2; i2++) {
                            JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                            this.mAppliedVisualChanges.add(new VariantChange(jSONObject2.getString("name"), JSONUtils.optionalStringKey(jSONObject2, "target_activity"), jSONObject2, mPPair));
                        }
                        JSONArray jSONArray3 = jSONObject.getJSONArray("tweaks");
                        int length3 = jSONArray3.length();
                        for (int i3 = 0; i3 < length3; i3++) {
                            JSONObject jSONObject3 = jSONArray3.getJSONObject(i3);
                            this.mAppliedTweaks.add(new VariantTweak(jSONObject3.getString("name"), jSONObject3, mPPair));
                        }
                        if (!z) {
                            this.mSeenExperiments.add(mPPair);
                        }
                        if (length3 == 0 && length2 == 0) {
                            this.mEmptyExperiments.add(mPPair);
                        }
                    }
                } catch (JSONException e) {
                    MPLog.m308i(ViewCrawler.LOGTAG, "JSON error when loading ab tests / tweaks, clearing persistent memory", e);
                    SharedPreferences.Editor edit = getSharedPreferences().edit();
                    edit.remove("mixpanel.viewcrawler.changes");
                    edit.apply();
                }
            }
        }

        private void persistVariants(JSONArray jSONArray) {
            SharedPreferences.Editor edit = getSharedPreferences().edit();
            edit.putString("mixpanel.viewcrawler.changes", jSONArray.toString());
            edit.apply();
        }

        private void sendDeviceInfo() {
            if (this.mEditorConnection != null && this.mEditorConnection.isValid() && this.mEditorConnection.isConnected()) {
                JsonWriter jsonWriter = new JsonWriter(new OutputStreamWriter(this.mEditorConnection.getBufferedOutputStream()));
                try {
                    try {
                        try {
                            jsonWriter.beginObject();
                            jsonWriter.name("type").value("device_info_response");
                            jsonWriter.name("payload").beginObject();
                            jsonWriter.name("device_type").value("Android");
                            JsonWriter name = jsonWriter.name("device_name");
                            name.value(Build.BRAND + "/" + Build.MODEL);
                            jsonWriter.name("scaled_density").value((double) ViewCrawler.this.mScaledDensity);
                            for (Map.Entry entry : ViewCrawler.this.mDeviceInfo.entrySet()) {
                                jsonWriter.name((String) entry.getKey()).value((String) entry.getValue());
                            }
                            Map<String, Tweaks.TweakValue> allValues = ViewCrawler.this.mTweaks.getAllValues();
                            jsonWriter.name("tweaks").beginArray();
                            for (Map.Entry<String, Tweaks.TweakValue> entry2 : allValues.entrySet()) {
                                Tweaks.TweakValue value = entry2.getValue();
                                String key = entry2.getKey();
                                jsonWriter.beginObject();
                                jsonWriter.name("name").value(key);
                                jsonWriter.name("minimum").value(value.getMinimum());
                                jsonWriter.name("maximum").value(value.getMaximum());
                                switch (value.type) {
                                    case 1:
                                        jsonWriter.name("type").value("boolean");
                                        jsonWriter.name(FirebaseAnalytics.Param.VALUE).value(value.getBooleanValue().booleanValue());
                                        jsonWriter.name("default").value(((Boolean) value.getDefaultValue()).booleanValue());
                                        break;
                                    case 2:
                                        jsonWriter.name("type").value("number");
                                        jsonWriter.name("encoding").value("d");
                                        jsonWriter.name(FirebaseAnalytics.Param.VALUE).value(value.getNumberValue().doubleValue());
                                        jsonWriter.name("default").value(((Number) value.getDefaultValue()).doubleValue());
                                        break;
                                    case 3:
                                        jsonWriter.name("type").value("number");
                                        jsonWriter.name("encoding").value("l");
                                        jsonWriter.name(FirebaseAnalytics.Param.VALUE).value(value.getNumberValue().longValue());
                                        jsonWriter.name("default").value(((Number) value.getDefaultValue()).longValue());
                                        break;
                                    case 4:
                                        jsonWriter.name("type").value("string");
                                        jsonWriter.name(FirebaseAnalytics.Param.VALUE).value(value.getStringValue());
                                        jsonWriter.name("default").value((String) value.getDefaultValue());
                                        break;
                                    default:
                                        MPLog.wtf(ViewCrawler.LOGTAG, "Unrecognized Tweak Type " + value.type + " encountered.");
                                        break;
                                }
                                jsonWriter.endObject();
                            }
                            jsonWriter.endArray();
                            jsonWriter.endObject();
                            jsonWriter.endObject();
                            jsonWriter.close();
                        } catch (IOException e) {
                            MPLog.m310e(ViewCrawler.LOGTAG, "Can't write device_info to server", e);
                            jsonWriter.close();
                        }
                    } catch (IOException e2) {
                        MPLog.m310e(ViewCrawler.LOGTAG, "Can't close websocket writer", e2);
                    }
                } catch (Throwable th) {
                    try {
                        jsonWriter.close();
                    } catch (IOException e3) {
                        MPLog.m310e(ViewCrawler.LOGTAG, "Can't close websocket writer", e3);
                    }
                    throw th;
                }
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:21:0x0084
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1185)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1018)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
            */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0085 -> B:23:0x008e). Please submit an issue!!! */
        private void sendError(java.lang.String r5) {
            /*
                r4 = this;
                r0 = r4
                com.mixpanel.android.viewcrawler.EditorConnection r0 = r0.mEditorConnection
                if (r0 == 0) goto L_0x00a2
                r0 = r4
                com.mixpanel.android.viewcrawler.EditorConnection r0 = r0.mEditorConnection
                boolean r0 = r0.isValid()
                if (r0 == 0) goto L_0x00a2
                r0 = r4
                com.mixpanel.android.viewcrawler.EditorConnection r0 = r0.mEditorConnection
                boolean r0 = r0.isConnected()
                if (r0 != 0) goto L_0x001e
                goto L_0x00a2
            L_0x001e:
                org.json.JSONObject r0 = new org.json.JSONObject
                r1 = r0
                r1.<init>()
                r6 = r0
                r0 = r6
                java.lang.String r1 = "error_message"
                r2 = r5
                org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: JSONException -> 0x0032
                goto L_0x003c
            L_0x0032:
                r5 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Apparently impossible JSONException"
                r2 = r5
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
            L_0x003c:
                java.io.OutputStreamWriter r0 = new java.io.OutputStreamWriter
                r1 = r0
                r2 = r4
                com.mixpanel.android.viewcrawler.EditorConnection r2 = r2.mEditorConnection
                java.io.BufferedOutputStream r2 = r2.getBufferedOutputStream()
                r1.<init>(r2)
                r5 = r0
                r0 = r5
                java.lang.String r1 = "{\"type\": \"error\", "
                r0.write(r1)     // Catch: all -> 0x006f, IOException -> 0x0073
                r0 = r5
                java.lang.String r1 = "\"payload\": "
                r0.write(r1)     // Catch: all -> 0x006f, IOException -> 0x0073
                r0 = r5
                r1 = r6
                java.lang.String r1 = r1.toString()     // Catch: all -> 0x006f, IOException -> 0x0073
                r0.write(r1)     // Catch: all -> 0x006f, IOException -> 0x0073
                r0 = r5
                java.lang.String r1 = "}"
                r0.write(r1)     // Catch: all -> 0x006f, IOException -> 0x0073
                r0 = r5
                r0.close()     // Catch: IOException -> 0x0084
                goto L_0x008e
            L_0x006f:
                r6 = move-exception
                goto L_0x008f
            L_0x0073:
                r6 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Can't write error message to editor"
                r2 = r6
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)     // Catch: all -> 0x006f
                r0 = r5
                r0.close()     // Catch: IOException -> 0x0084
                goto L_0x008e
            L_0x0084:
                r5 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Could not close output writer to editor"
                r2 = r5
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
            L_0x008e:
                return
            L_0x008f:
                r0 = r5
                r0.close()     // Catch: IOException -> 0x0096
                goto L_0x00a0
            L_0x0096:
                r5 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Could not close output writer to editor"
                r2 = r5
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
            L_0x00a0:
                r0 = r6
                throw r0
            L_0x00a2:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.viewcrawler.ViewCrawler.ViewCrawlerHandler.sendError(java.lang.String):void");
        }

        private void sendLayoutError(ViewVisitor.LayoutErrorMessage layoutErrorMessage) {
            if (this.mEditorConnection != null && this.mEditorConnection.isValid() && this.mEditorConnection.isConnected()) {
                JsonWriter jsonWriter = new JsonWriter(new OutputStreamWriter(this.mEditorConnection.getBufferedOutputStream()));
                try {
                    try {
                        try {
                            jsonWriter.beginObject();
                            jsonWriter.name("type").value("layout_error");
                            jsonWriter.name("exception_type").value(layoutErrorMessage.getErrorType());
                            jsonWriter.name("cid").value(layoutErrorMessage.getName());
                            jsonWriter.endObject();
                            jsonWriter.close();
                        } catch (Throwable th) {
                            try {
                                jsonWriter.close();
                            } catch (IOException e) {
                                MPLog.m310e(ViewCrawler.LOGTAG, "Can't close writer.", e);
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        MPLog.m310e(ViewCrawler.LOGTAG, "Can't write track_message to server", e2);
                        jsonWriter.close();
                    }
                } catch (IOException e3) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Can't close writer.", e3);
                }
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:17:0x008a
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1185)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1018)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
            */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x008b -> B:19:0x0094). Please submit an issue!!! */
        private void sendReportTrackToEditor(java.lang.String r7) {
            /*
                r6 = this;
                r0 = r6
                com.mixpanel.android.viewcrawler.EditorConnection r0 = r0.mEditorConnection
                if (r0 == 0) goto L_0x00a8
                r0 = r6
                com.mixpanel.android.viewcrawler.EditorConnection r0 = r0.mEditorConnection
                boolean r0 = r0.isValid()
                if (r0 == 0) goto L_0x00a8
                r0 = r6
                com.mixpanel.android.viewcrawler.EditorConnection r0 = r0.mEditorConnection
                boolean r0 = r0.isConnected()
                if (r0 != 0) goto L_0x001e
                goto L_0x00a8
            L_0x001e:
                android.util.JsonWriter r0 = new android.util.JsonWriter
                r1 = r0
                java.io.OutputStreamWriter r2 = new java.io.OutputStreamWriter
                r3 = r2
                r4 = r6
                com.mixpanel.android.viewcrawler.EditorConnection r4 = r4.mEditorConnection
                java.io.BufferedOutputStream r4 = r4.getBufferedOutputStream()
                r3.<init>(r4)
                r1.<init>(r2)
                r8 = r0
                r0 = r8
                android.util.JsonWriter r0 = r0.beginObject()     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                java.lang.String r1 = "type"
                android.util.JsonWriter r0 = r0.name(r1)     // Catch: all -> 0x0075, IOException -> 0x0079
                java.lang.String r1 = "track_message"
                android.util.JsonWriter r0 = r0.value(r1)     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                java.lang.String r1 = "payload"
                android.util.JsonWriter r0 = r0.name(r1)     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                android.util.JsonWriter r0 = r0.beginObject()     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                java.lang.String r1 = "event_name"
                android.util.JsonWriter r0 = r0.name(r1)     // Catch: all -> 0x0075, IOException -> 0x0079
                r1 = r7
                android.util.JsonWriter r0 = r0.value(r1)     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                android.util.JsonWriter r0 = r0.endObject()     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                android.util.JsonWriter r0 = r0.endObject()     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                r0.flush()     // Catch: all -> 0x0075, IOException -> 0x0079
                r0 = r8
                r0.close()     // Catch: IOException -> 0x008a
                goto L_0x0094
            L_0x0075:
                r7 = move-exception
                goto L_0x0095
            L_0x0079:
                r7 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Can't write track_message to server"
                r2 = r7
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)     // Catch: all -> 0x0075
                r0 = r8
                r0.close()     // Catch: IOException -> 0x008a
                goto L_0x0094
            L_0x008a:
                r7 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Can't close writer."
                r2 = r7
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
            L_0x0094:
                return
            L_0x0095:
                r0 = r8
                r0.close()     // Catch: IOException -> 0x009c
                goto L_0x00a6
            L_0x009c:
                r8 = move-exception
                java.lang.String r0 = "MixpanelAPI.ViewCrawler"
                java.lang.String r1 = "Can't close writer."
                r2 = r8
                com.mixpanel.android.util.MPLog.m310e(r0, r1, r2)
            L_0x00a6:
                r0 = r7
                throw r0
            L_0x00a8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.viewcrawler.ViewCrawler.ViewCrawlerHandler.sendReportTrackToEditor(java.lang.String):void");
        }

        private void sendSnapshot(JSONObject jSONObject) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject("payload");
                if (jSONObject2.has("config")) {
                    this.mSnapshot = this.mProtocol.readSnapshotConfig(jSONObject2);
                    MPLog.m307v(ViewCrawler.LOGTAG, "Initializing snapshot with configuration");
                }
                if (this.mSnapshot == null) {
                    sendError("No snapshot configuration (or a malformed snapshot configuration) was sent.");
                    MPLog.m305w(ViewCrawler.LOGTAG, "Mixpanel editor is misconfigured, sent a snapshot request without a valid configuration.");
                    return;
                }
                BufferedOutputStream bufferedOutputStream = this.mEditorConnection.getBufferedOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(bufferedOutputStream);
                try {
                    try {
                        try {
                            outputStreamWriter.write("{");
                            outputStreamWriter.write("\"type\": \"snapshot_response\",");
                            outputStreamWriter.write("\"payload\": {");
                            outputStreamWriter.write("\"activities\":");
                            outputStreamWriter.flush();
                            this.mSnapshot.snapshots(ViewCrawler.this.mEditState, bufferedOutputStream);
                            long currentTimeMillis2 = System.currentTimeMillis();
                            outputStreamWriter.write(",\"snapshot_time_millis\": ");
                            outputStreamWriter.write(Long.toString(currentTimeMillis2 - currentTimeMillis));
                            outputStreamWriter.write("}");
                            outputStreamWriter.write("}");
                            outputStreamWriter.close();
                        } catch (Throwable th) {
                            try {
                                outputStreamWriter.close();
                            } catch (IOException e) {
                                MPLog.m310e(ViewCrawler.LOGTAG, "Can't close writer.", e);
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        MPLog.m310e(ViewCrawler.LOGTAG, "Can't write snapshot request to server", e2);
                        outputStreamWriter.close();
                    }
                } catch (IOException e3) {
                    MPLog.m310e(ViewCrawler.LOGTAG, "Can't close writer.", e3);
                }
            } catch (EditProtocol.BadInstructionsException e4) {
                MPLog.m310e(ViewCrawler.LOGTAG, "Editor sent malformed message with snapshot request", e4);
                sendError(e4.getMessage());
            } catch (JSONException e5) {
                MPLog.m310e(ViewCrawler.LOGTAG, "Payload with snapshot config required with snapshot request", e5);
                sendError("Payload with snapshot config required with snapshot request");
            }
        }

        private void trackSeenExperiments(Set<MPPair<Integer, Integer>> set) {
            if (set != null && set.size() > 0) {
                final JSONObject jSONObject = new JSONObject();
                try {
                    for (MPPair<Integer, Integer> mPPair : set) {
                        int intValue = ((Integer) mPPair.first).intValue();
                        int intValue2 = ((Integer) mPPair.second).intValue();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("$experiment_id", intValue);
                        jSONObject2.put("$variant_id", intValue2);
                        jSONObject.put(Integer.toString(intValue), intValue2);
                        ViewCrawler.this.mMixpanel.getPeople().merge("$experiments", jSONObject);
                        ViewCrawler.this.mMixpanel.updateSuperProperties(new SuperPropertyUpdate() { // from class: com.mixpanel.android.viewcrawler.ViewCrawler.ViewCrawlerHandler.1
                            @Override // com.mixpanel.android.mpmetrics.SuperPropertyUpdate
                            public JSONObject update(JSONObject jSONObject3) {
                                try {
                                    jSONObject3.put("$experiments", jSONObject);
                                } catch (JSONException e) {
                                    MPLog.wtf(ViewCrawler.LOGTAG, "Can't write $experiments super property", e);
                                }
                                return jSONObject3;
                            }
                        });
                        ViewCrawler.this.mMixpanel.track("$experiment_started", jSONObject2);
                    }
                } catch (JSONException e) {
                    MPLog.wtf(ViewCrawler.LOGTAG, "Could not build JSON for reporting experiment start", e);
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            this.mStartLock.lock();
            try {
                switch (message.what) {
                    case 0:
                        loadKnownChanges();
                        break;
                    case 1:
                        connectToEditor();
                        break;
                    case 2:
                        sendSnapshot((JSONObject) message.obj);
                        break;
                    case 3:
                        handleEditorChangeReceived((JSONObject) message.obj);
                        break;
                    case 4:
                        sendDeviceInfo();
                        break;
                    case 5:
                        handleEventBindingsReceived((JSONArray) message.obj);
                        break;
                    case 6:
                        handleEditorBindingsReceived((JSONObject) message.obj);
                        break;
                    case 7:
                        sendReportTrackToEditor((String) message.obj);
                        break;
                    case 8:
                        handleEditorClosed();
                        break;
                    case 9:
                        handleVariantsReceived((JSONArray) message.obj);
                        break;
                    case 10:
                        handleEditorBindingsCleared((JSONObject) message.obj);
                        break;
                    case 11:
                        handleEditorTweaksReceived((JSONObject) message.obj);
                        break;
                    case 12:
                        sendLayoutError((ViewVisitor.LayoutErrorMessage) message.obj);
                        break;
                    case 13:
                        persistVariants((JSONArray) message.obj);
                        break;
                }
            } finally {
                this.mStartLock.unlock();
            }
        }

        public void start() {
            this.mStartLock.unlock();
        }
    }

    public ViewCrawler(Context context, String str, MixpanelAPI mixpanelAPI, Tweaks tweaks) {
        this.mConfig = MPConfig.getInstance(context);
        this.mContext = context;
        this.mTweaks = tweaks;
        this.mDeviceInfo = mixpanelAPI.getDeviceInfo();
        HandlerThread handlerThread = new HandlerThread(ViewCrawler.class.getCanonicalName());
        handlerThread.setPriority(10);
        handlerThread.start();
        this.mMessageThreadHandler = new ViewCrawlerHandler(context, str, handlerThread.getLooper(), this);
        this.mDynamicEventTracker = new DynamicEventTracker(mixpanelAPI, this.mMessageThreadHandler);
        this.mMixpanel = mixpanelAPI;
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new LifecycleCallbacks());
        this.mTweaks.addOnTweakDeclaredListener(new Tweaks.OnTweakDeclaredListener() { // from class: com.mixpanel.android.viewcrawler.ViewCrawler.1
            @Override // com.mixpanel.android.mpmetrics.Tweaks.OnTweakDeclaredListener
            public void onTweakDeclared() {
                ViewCrawler.this.mMessageThreadHandler.sendMessage(ViewCrawler.this.mMessageThreadHandler.obtainMessage(4));
            }
        });
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void addOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener) {
        if (onMixpanelTweaksUpdatedListener == null) {
            throw new NullPointerException("Listener cannot be null");
        }
        this.mTweaksUpdatedListeners.add(onMixpanelTweaksUpdatedListener);
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void applyPersistedUpdates() {
        this.mMessageThreadHandler.sendMessage(this.mMessageThreadHandler.obtainMessage(0));
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public Tweaks getTweaks() {
        return this.mTweaks;
    }

    @Override // com.mixpanel.android.viewcrawler.ViewVisitor.OnLayoutErrorListener
    public void onLayoutError(ViewVisitor.LayoutErrorMessage layoutErrorMessage) {
        Message obtainMessage = this.mMessageThreadHandler.obtainMessage();
        obtainMessage.what = 12;
        obtainMessage.obj = layoutErrorMessage;
        this.mMessageThreadHandler.sendMessage(obtainMessage);
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void removeOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener) {
        this.mTweaksUpdatedListeners.remove(onMixpanelTweaksUpdatedListener);
    }

    @Override // com.mixpanel.android.viewcrawler.TrackingDebug
    public void reportTrack(String str) {
        Message obtainMessage = this.mMessageThreadHandler.obtainMessage();
        obtainMessage.what = 7;
        obtainMessage.obj = str;
        this.mMessageThreadHandler.sendMessage(obtainMessage);
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void setEventBindings(JSONArray jSONArray) {
        if (jSONArray != null) {
            Message obtainMessage = this.mMessageThreadHandler.obtainMessage(5);
            obtainMessage.obj = jSONArray;
            this.mMessageThreadHandler.sendMessage(obtainMessage);
        }
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void setVariants(JSONArray jSONArray) {
        if (jSONArray != null) {
            Message obtainMessage = this.mMessageThreadHandler.obtainMessage(9);
            obtainMessage.obj = jSONArray;
            this.mMessageThreadHandler.sendMessage(obtainMessage);
        }
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void startUpdates() {
        this.mMessageThreadHandler.start();
        applyPersistedUpdates();
    }

    @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
    public void storeVariants(JSONArray jSONArray) {
        if (jSONArray != null) {
            Message obtainMessage = this.mMessageThreadHandler.obtainMessage(13);
            obtainMessage.obj = jSONArray;
            this.mMessageThreadHandler.sendMessage(obtainMessage);
        }
    }
}
