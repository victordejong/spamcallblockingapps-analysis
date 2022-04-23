package com.apptentive.android.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.core.content.ContextCompat;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationManager;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.debug.LogMonitor;
import com.apptentive.android.sdk.encryption.SecurityManager;
import com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.model.EventPayload;
import com.apptentive.android.sdk.model.LogoutPayload;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.InteractionManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.apptentive.android.sdk.module.engagement.interaction.model.TermsAndConditions;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.rating.impl.GooglePlayRatingProvider;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.partners.apptimize.ApptentiveApptimize;
import com.apptentive.android.sdk.partners.apptimize.ApptentiveApptimizeTestInfo;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.AppReleaseManager;
import com.apptentive.android.sdk.storage.ApptentiveTaskManager;
import com.apptentive.android.sdk.storage.DeviceManager;
import com.apptentive.android.sdk.storage.Sdk;
import com.apptentive.android.sdk.storage.SdkManager;
import com.apptentive.android.sdk.storage.VersionHistoryItem;
import com.apptentive.android.sdk.util.AdvertiserManager;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInternal.class */
public class ApptentiveInternal implements ApptentiveInstance, ApptentiveNotificationObserver {
    private static final ApptentiveInstance NULL_INSTANCE = new ApptentiveNullInstance();
    @SuppressLint({"StaticFieldLeak"})
    private static volatile ApptentiveInternal sApptentiveInternal;
    private final Context appContext;
    private int appDefaultAppCompatThemeId;
    private String appPackageName;
    private final AppRelease appRelease;
    private final ApptentiveHttpClient apptentiveHttpClient;
    private final String apptentiveKey;
    private final String apptentiveSignature;
    private Resources.Theme apptentiveToolbarTheme;
    private final ConversationManager conversationManager;
    private Map<String, Object> customData;
    private final SharedPreferences globalSharedPrefs;
    private boolean loginInProgress;
    private WeakReference<OnSurveyFinishedListener> onSurveyFinishedListener;
    private IRatingProvider ratingProvider;
    private Map<String, String> ratingProviderArgs;
    private int statusBarColorDefault;
    private TermsAndConditions surveyTermsAndConditions;
    private final ApptentiveTaskManager taskManager;
    private String defaultAppDisplayName = "this app";
    private final LinkedBlockingQueue interactionUpdateListeners = new LinkedBlockingQueue();
    private WeakReference<Apptentive.AuthenticationFailedListener> authenticationFailedListenerRef = null;
    private final Object loginMutex = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.ApptentiveInternal$5 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInternal$5.class */
    public static /* synthetic */ class C07185 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$ApptentiveInternal$PushAction */
        static final /* synthetic */ int[] f6433xfe8eccb7;

        static {
            int[] iArr = new int[PushAction.values().length];
            f6433xfe8eccb7 = iArr;
            try {
                iArr[PushAction.pmc.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInternal$PushAction.class */
    public enum PushAction {
        pmc,
        unknown;

        public static PushAction parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLog.m15635w(ApptentiveLogTag.PUSH, "This version of the SDK can't handle push action '%s'", str);
                ApptentiveInternal.logException(e);
                return unknown;
            }
        }
    }

    private ApptentiveInternal(Application application, ApptentiveConfiguration apptentiveConfiguration, @NonNull String str) {
        if (apptentiveConfiguration != null) {
            String apptentiveKey = apptentiveConfiguration.getApptentiveKey();
            String apptentiveSignature = apptentiveConfiguration.getApptentiveSignature();
            apptentiveConfiguration.getBaseURL();
            this.apptentiveKey = apptentiveKey;
            this.apptentiveSignature = apptentiveSignature;
            this.surveyTermsAndConditions = apptentiveConfiguration.getSurveyTermsAndConditions();
            Encryption encryption = SecurityManager.getEncryption(application.getApplicationContext(), apptentiveConfiguration.getEncryption(), apptentiveConfiguration.shouldEncryptStorage());
            this.appContext = application.getApplicationContext();
            SharedPreferences sharedPreferences = application.getSharedPreferences("APPTENTIVE", 0);
            this.globalSharedPrefs = sharedPreferences;
            this.apptentiveHttpClient = new ApptentiveHttpClient(apptentiveKey, apptentiveSignature, getEndpointBase(sharedPreferences));
            DeviceManager deviceManager = new DeviceManager(str);
            Context context = this.appContext;
            this.conversationManager = new ConversationManager(context, Util.getInternalDir(context, "apptentive/conversations", true), encryption, deviceManager);
            this.appRelease = AppReleaseManager.generateCurrentAppRelease(application, this);
            this.taskManager = new ApptentiveTaskManager(this.appContext, this.apptentiveHttpClient, encryption);
            ApptentiveNotificationCenter defaultCenter = ApptentiveNotificationCenter.defaultCenter();
            defaultCenter.addObserver("CONVERSATION_STATE_DID_CHANGE", this);
            defaultCenter.addObserver("CONVERSATION_WILL_LOGOUT", this);
            defaultCenter.addObserver("AUTHENTICATION_FAILED", this);
            defaultCenter.addObserver("INTERACTION_MANIFEST_FETCHED", this);
            defaultCenter.addObserver("APP_ENTERED_FOREGROUND", this);
            defaultCenter.addObserver("APP_ENTERED_BACKGROUND", this);
            defaultCenter.addObserver("CONFIGURATION_FETCH_DID_FINISH", this);
            return;
        }
        throw new IllegalArgumentException("Configuration is null");
    }

    private boolean canShowMessageCenterInternal() {
        Conversation conversation = getConversation();
        return conversation != null && canShowMessageCenterInternal(conversation);
    }

    public static boolean canShowMessageCenterInternal(Conversation conversation) {
        return EngagementModule.canShowInteraction(conversation, "app", "show_message_center", "com.apptentive");
    }

    private void checkSendVersionChanges(Conversation conversation) {
        boolean z;
        Integer num;
        if (conversation == null) {
            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Can't check session data changes: session data is not initialized", new Object[0]);
            return;
        }
        VersionHistoryItem lastVersionSeen = conversation.getVersionHistory().getLastVersionSeen();
        int versionCode = this.appRelease.getVersionCode();
        String versionName = this.appRelease.getVersionName();
        String str = null;
        if (lastVersionSeen == null) {
            num = null;
            z = true;
        } else {
            num = Integer.valueOf(lastVersionSeen.getVersionCode());
            Apptentive.Version version = new Apptentive.Version();
            str = lastVersionSeen.getVersionName();
            version.setVersion(str);
            z = !ObjectUtils.equal(Integer.valueOf(versionCode), num) || !versionName.equals(version.getVersion());
        }
        String lastSeenSdkVersion = conversation.getLastSeenSdkVersion();
        String apptentiveSdkVersion = Constants.getApptentiveSdkVersion();
        boolean z2 = !StringUtils.equal(lastSeenSdkVersion, apptentiveSdkVersion);
        if (z) {
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Application version was changed: Name: %s => %s, Code: %d => %d", str, versionName, num, Integer.valueOf(versionCode));
            conversation.getVersionHistory().updateVersionHistory(Util.currentTimeSeconds(), Integer.valueOf(versionCode), versionName);
        }
        Sdk generateCurrentSdk = SdkManager.generateCurrentSdk(this.appContext);
        if (z2) {
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "SDK version was changed: %s => %s", lastSeenSdkVersion, apptentiveSdkVersion);
            conversation.setLastSeenSdkVersion(apptentiveSdkVersion);
            conversation.setSdk(generateCurrentSdk);
        }
        if (z || z2) {
            conversation.addPayload(AppReleaseManager.getPayload(generateCurrentSdk, this.appRelease));
            conversation.setAppRelease(this.appRelease);
            conversation.setSdk(generateCurrentSdk);
            invalidateCaches(conversation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void createInstance(@NonNull Application application, @NonNull ApptentiveConfiguration apptentiveConfiguration) {
        String apptentiveKey = apptentiveConfiguration.getApptentiveKey();
        String apptentiveSignature = apptentiveConfiguration.getApptentiveSignature();
        ApptentiveLog.setShouldSanitizeLogMessages(apptentiveConfiguration.shouldSanitizeLogMessages());
        ApptentiveLog.overrideLogLevel(apptentiveConfiguration.getLogLevel());
        if (apptentiveConfiguration.isTroubleshootingModeEnabled()) {
            ApptentiveLog.initializeLogWriter(application.getApplicationContext(), 2);
            LogMonitor.startSession(application.getApplicationContext(), apptentiveKey, apptentiveSignature);
        } else {
            ApptentiveLog.m15640i(ApptentiveLogTag.TROUBLESHOOT, "Troubleshooting is disabled in the app configuration", new Object[0]);
        }
        synchronized (ApptentiveInternal.class) {
            try {
                if (sApptentiveInternal == null) {
                    ApptentiveLog.m15639i("Registering Apptentive Android SDK %s", Constants.getApptentiveSdkVersion());
                    ApptentiveLog.m15636v("ApptentiveKey=%s ApptentiveSignature=%s", apptentiveKey, apptentiveSignature);
                    boolean z = false;
                    if (Build.VERSION.SDK_INT < 26) {
                        z = false;
                        if (!apptentiveConfiguration.shouldCollectAndroidIdOnPreOreoTargets()) {
                            z = true;
                        }
                    }
                    sApptentiveInternal = new ApptentiveInternal(application, apptentiveConfiguration, resolveAndroidID(application.getApplicationContext(), z));
                    ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveInternal.1
                        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                        protected void execute() {
                            ApptentiveInternal.sApptentiveInternal.start();
                        }
                    });
                    ApptentiveActivityLifecycleCallbacks.register(application);
                } else {
                    ApptentiveLog.m15633w("Apptentive instance is already initialized", new Object[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dismissAllInteractions() {
        if (!ApptentiveHelper.isConversationQueue()) {
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveInternal.4
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ApptentiveInternal.dismissAllInteractions();
                }
            });
        } else {
            ApptentiveNotificationCenter.defaultCenter().postNotification("INTERACTIONS_SHOULD_DISMISS");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean engageInternal(Context context, String str) {
        Conversation conversation = getConversation();
        boolean z = true;
        Assert.assertNotNull(conversation, "Attempted to engage '%s' internal event without an active conversation", str);
        if (conversation == null || !EngagementModule.engageInternal(context, conversation, str)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PendingIntent generatePendingIntentFromApptentivePushData(Conversation conversation, String str) {
        ApptentiveLog.m15646d(ApptentiveLogTag.PUSH, "Generating Apptentive push PendingIntent.", new Object[0]);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("conversation_id", null);
            if (optString == null || StringUtils.equal(conversation.getConversationId(), optString)) {
                PushAction pushAction = PushAction.unknown;
                if (jSONObject.has("action")) {
                    pushAction = PushAction.parse(jSONObject.getString("action"));
                }
                if (C07185.f6433xfe8eccb7[pushAction.ordinal()] != 1) {
                    ApptentiveLog.m15635w(ApptentiveLogTag.PUSH, "Unknown Apptentive push notification action: \"%s\"", pushAction.name());
                    return null;
                }
                MessageManager messageManager = conversation.getMessageManager();
                if (messageManager != null) {
                    messageManager.startMessagePreFetchTask();
                }
                return prepareMessageCenterPendingIntent(getInstance().getApplicationContext(), conversation);
            }
            ApptentiveLog.m15640i(ApptentiveLogTag.PUSH, "Can't generate pending intent from Apptentive push data: push conversation id doesn't match active conversation", new Object[0]);
            return null;
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.PUSH, e, "Error parsing JSON from push notification.", new Object[0]);
            logException(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApptentivePushNotificationData(Intent intent) {
        if (intent == null) {
            return null;
        }
        ApptentiveLog.m15638v(ApptentiveLogTag.PUSH, "Got an Intent.", new Object[0]);
        return getApptentivePushNotificationData(intent.getExtras());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApptentivePushNotificationData(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("com.parse.Data")) {
                ApptentiveLog.m15638v(ApptentiveLogTag.PUSH, "Got a Parse Push.", new Object[0]);
                String string = bundle.getString("com.parse.Data");
                if (string == null) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.PUSH, "com.parse.Data is null.", new Object[0]);
                    return null;
                }
                try {
                    return new JSONObject(string).optString("apptentive", null);
                } catch (JSONException e) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.PUSH, "com.parse.Data is corrupt: %s", string);
                    logException(e);
                    return null;
                }
            } else if (bundle.containsKey("com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE")) {
                ApptentiveLog.m15638v(ApptentiveLogTag.PUSH, "Got an Urban Airship push.", new Object[0]);
                Bundle bundle2 = bundle.getBundle("com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE");
                if (bundle2 != null) {
                    return bundle2.getString("apptentive");
                }
                ApptentiveLog.m15644e(ApptentiveLogTag.PUSH, "Urban Airship push extras bundle is null", new Object[0]);
                return null;
            } else if (bundle.containsKey("apptentive")) {
                ApptentiveLog.m15638v(ApptentiveLogTag.PUSH, "Found apptentive push data.", new Object[0]);
                return bundle.getString("apptentive");
            } else {
                ApptentiveLog.m15644e(ApptentiveLogTag.PUSH, "Got an unrecognizable push.", new Object[0]);
            }
        }
        ApptentiveLog.m15644e(ApptentiveLogTag.PUSH, "Push bundle was null.", new Object[0]);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApptentivePushNotificationData(Map<String, String> map) {
        if (map != null) {
            return map.get("apptentive");
        }
        return null;
    }

    private String getEndpointBase(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("serverUrl", null);
        String str = string;
        if (string == null) {
            str = "https://api.apptentive.com";
            sharedPreferences.edit().putString("serverUrl", "https://api.apptentive.com").apply();
        }
        return str;
    }

    @NonNull
    public static ApptentiveInstance getInstance() {
        ApptentiveInstance apptentiveInstance;
        synchronized (ApptentiveInternal.class) {
            try {
                apptentiveInstance = sApptentiveInternal != null ? sApptentiveInternal : NULL_INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return apptentiveInstance;
    }

    private void invalidateCaches(Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        conversation.setInteractionExpiration(0.0d);
        Configuration load = Configuration.load();
        load.setConfigurationCacheExpirationMillis(System.currentTimeMillis());
        load.save();
    }

    public static boolean isApptentiveRegistered() {
        return sApptentiveInternal != null;
    }

    public static boolean isConversationActive() {
        return (sApptentiveInternal == null || sApptentiveInternal.getConversation() == null) ? false : true;
    }

    private static String loadAndroidID(Context context) {
        return context.getSharedPreferences("com.apptentive.sdk.androidID", 0).getString("androidID", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    private void onAppEnterBackground() {
        ApptentiveHelper.checkConversationQueue();
        onAppExit(getApplicationContext());
    }

    private void onAppEnterForeground() {
        ApptentiveHelper.checkConversationQueue();
        if (ApptentiveLog.isLogWriterInitialized()) {
            LogMonitor.startSession(this.appContext, this.apptentiveKey, this.apptentiveSignature);
        }
        onAppLaunch(getApplicationContext());
    }

    private void onAppExit(Context context) {
        ApptentiveHelper.checkConversationQueue();
        if (isConversationActive()) {
            engageInternal(context, EventPayload.EventLabel.app__exit.getLabelName());
            getConversation().endSession();
        }
    }

    private void onAppLaunch(Context context) {
        ApptentiveHelper.checkConversationQueue();
        if (isConversationActive()) {
            Conversation conversation = getConversation();
            if (!conversation.hasSession()) {
                conversation.startSession();
            }
            engageInternal(context, EventPayload.EventLabel.app__launch.getLabelName());
        }
    }

    public static PendingIntent prepareMessageCenterPendingIntent(Context context, Conversation conversation) {
        Intent intent;
        if (canShowMessageCenterInternal(conversation)) {
            intent = new Intent();
            intent.setClass(context, ApptentiveViewActivity.class);
            intent.putExtra("fragmentType", 4);
            intent.putExtra("fragmentExtraData", "show_message_center");
        } else {
            intent = MessageCenterInteraction.generateMessageCenterErrorIntent(context);
        }
        return intent != null ? PendingIntent.getActivity(context, 0, intent, 1207959552) : null;
    }

    private static String resolveAndroidID(Context context, boolean z) {
        if (!z) {
            return Util.getAndroidID(context);
        }
        String loadAndroidID = loadAndroidID(context);
        if (loadAndroidID != null) {
            return loadAndroidID;
        }
        String randomAndroidID = StringUtils.randomAndroidID();
        saveAndroidID(context, randomAndroidID);
        return randomAndroidID;
    }

    private static void saveAndroidID(Context context, String str) {
        context.getSharedPreferences("com.apptentive.sdk.androidID", 0).edit().putString("androidID", str).apply();
    }

    private boolean setApplicationDefaultTheme(int i) {
        if (i == 0) {
            return false;
        }
        try {
            this.appContext.getResources().getResourceName(i);
            Resources.Theme newTheme = this.appContext.getResources().newTheme();
            newTheme.applyStyle(i, true);
            TypedArray obtainStyledAttributes = newTheme.obtainStyledAttributes(C0042R.styleable.AppCompatTheme);
            if (obtainStyledAttributes.hasValue(C0042R.styleable.AppCompatTheme_colorPrimaryDark)) {
                this.appDefaultAppCompatThemeId = i;
                obtainStyledAttributes.recycle();
                return true;
            }
            obtainStyledAttributes.recycle();
            return false;
        } catch (Resources.NotFoundException e) {
            ApptentiveLog.m15642e("Theme Res id not found", new Object[0]);
            logException(e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean start() {
        boolean z;
        ApptentiveHelper.checkConversationQueue();
        if (!this.conversationManager.loadActiveConversation(getApplicationContext())) {
            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "There is no active conversation. The SDK will be disabled until a conversation becomes active.", new Object[0]);
        }
        this.apptentiveToolbarTheme = this.appContext.getResources().newTheme();
        try {
            this.appPackageName = this.appContext.getPackageName();
            PackageManager packageManager = this.appContext.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(this.appPackageName, 130);
            setApplicationDefaultTheme(packageInfo.applicationInfo.theme);
            this.defaultAppDisplayName = packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageInfo.packageName, 0)).toString();
            ActivityInfo[] activityInfoArr = packageInfo.receivers;
            if (activityInfoArr != null) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (activityInfo.name.equals("com.apptentive.android.sdk.comm.NetworkStateReceiver")) {
                        throw new AssertionError("NetworkStateReceiver has been removed from Apptentive SDK, please make sure it's also removed from manifest file");
                    }
                }
            }
            tryInitializeApptimizeSDK();
            z = true;
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Unexpected error while reading application or package info.", new Object[0]);
            logException(e);
            z = false;
        }
        ApptentiveLog.m15636v("Application Info:\n\tApptentive Key: %s\n\tApptentive Key: %s\n\tDebuggable APK: %b\n\tDefault locale: %s", this.apptentiveKey, this.apptentiveSignature, Boolean.valueOf(this.appRelease.isDebug()), Locale.getDefault());
        return z;
    }

    private void storeManifestResponse(Context context, String str) {
        try {
            Util.writeText(new File(ApptentiveLog.getLogsDirectory(context), "apptentive-engagement-manifest.txt"), str);
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to save engagement manifest data", new Object[0]);
            logException(e);
        }
    }

    private void tryInitializeApptimizeSDK() {
        ApptentiveHelper.checkConversationQueue();
        tryUpdateApptimizeData();
    }

    private void updateConversationAdvertiserIdentifier(Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        try {
            if (Configuration.load().isCollectingAdID()) {
                AdvertiserManager.AdvertisingIdClientInfo advertisingIdClientInfo = AdvertiserManager.getAdvertisingIdClientInfo();
                conversation.getDevice().setAdvertiserId((advertisingIdClientInfo == null || advertisingIdClientInfo.isLimitAdTrackingEnabled()) ? null : advertisingIdClientInfo.getId());
            }
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.ADVERTISER_ID, e, "Exception while updating conversation advertiser id", new Object[0]);
            logException(e);
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void addInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener) {
        this.interactionUpdateListeners.add(interactionUpdateListener);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Map<String, Object> getAndClearCustomData() {
        Map<String, Object> map = this.customData;
        this.customData = null;
        return map;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public AppRelease getAppRelease() {
        return this.appRelease;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Context getApplicationContext() {
        return this.appContext;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public int getApplicationVersionCode() {
        return this.appRelease.getVersionCode();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public String getApplicationVersionName() {
        return this.appRelease.getVersionName();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public ApptentiveHttpClient getApptentiveHttpClient() {
        return this.apptentiveHttpClient;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public ApptentiveTaskManager getApptentiveTaskManager() {
        return this.taskManager;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Resources.Theme getApptentiveToolbarTheme() {
        return this.apptentiveToolbarTheme;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Conversation getConversation() {
        return this.conversationManager.getActiveConversation();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public ConversationProxy getConversationProxy() {
        return this.conversationManager.getActiveConversationProxy();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public Activity getCurrentTaskStackTopActivity() {
        return ApptentiveActivityLifecycleCallbacks.getCurrentTopActivity();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public String getDefaultAppDisplayName() {
        return this.defaultAppDisplayName;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public int getDefaultStatusBarColor() {
        return this.statusBarColorDefault;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public SharedPreferences getGlobalSharedPrefs() {
        return this.globalSharedPrefs;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public OnSurveyFinishedListener getOnSurveyFinishedListener() {
        WeakReference<OnSurveyFinishedListener> weakReference = this.onSurveyFinishedListener;
        return weakReference == null ? null : weakReference.get();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public IRatingProvider getRatingProvider() {
        if (this.ratingProvider == null) {
            this.ratingProvider = new GooglePlayRatingProvider();
        }
        return this.ratingProvider;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Map<String, String> getRatingProviderArgs() {
        return this.ratingProviderArgs;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public TermsAndConditions getSurveyTermsAndConditions() {
        return this.surveyTermsAndConditions;
    }

    public boolean isAppUsingAppCompatTheme() {
        return this.appDefaultAppCompatThemeId != 0;
    }

    @Override // com.apptentive.android.sdk.util.Nullsafe
    public boolean isNull() {
        return false;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void login(String str, final Apptentive.LoginCallback loginCallback) {
        synchronized (this.loginMutex) {
            if (this.loginInProgress) {
                if (loginCallback != null) {
                    loginCallback.onLoginFail("Another login request is currently in progress");
                }
                return;
            }
            this.loginInProgress = true;
            this.conversationManager.login(str, new Apptentive.LoginCallback() { // from class: com.apptentive.android.sdk.ApptentiveInternal.3
                @Override // com.apptentive.android.sdk.Apptentive.LoginCallback
                public void onLoginFail(String str2) {
                    synchronized (ApptentiveInternal.this.loginMutex) {
                        Assert.assertTrue(ApptentiveInternal.this.loginInProgress);
                        if (loginCallback != null) {
                            loginCallback.onLoginFail(str2);
                        }
                        ApptentiveInternal.this.loginInProgress = false;
                    }
                }

                @Override // com.apptentive.android.sdk.Apptentive.LoginCallback
                public void onLoginFinish() {
                    synchronized (ApptentiveInternal.this.loginMutex) {
                        Assert.assertTrue(ApptentiveInternal.this.loginInProgress);
                        ApptentiveInternal.this.engageInternal(ApptentiveInternal.this.getApplicationContext(), FirebaseAnalytics.Event.LOGIN);
                        if (loginCallback != null) {
                            loginCallback.onLoginFinish();
                        }
                        ApptentiveInternal.this.loginInProgress = false;
                    }
                }
            });
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void logout() {
        this.conversationManager.logout();
    }

    public void notifyAuthenticationFailedListener(final Apptentive.AuthenticationFailedReason authenticationFailedReason, String str) {
        ApptentiveHelper.checkConversationQueue();
        if (isConversationActive() && StringUtils.equal(getConversation().getConversationId(), str)) {
            WeakReference<Apptentive.AuthenticationFailedListener> weakReference = this.authenticationFailedListenerRef;
            final Apptentive.AuthenticationFailedListener authenticationFailedListener = weakReference != null ? weakReference.get() : null;
            if (authenticationFailedListener != null) {
                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask(this) { // from class: com.apptentive.android.sdk.ApptentiveInternal.2
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        authenticationFailedListener.onAuthenticationFailed(authenticationFailedReason);
                    }
                });
            }
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void notifyInteractionUpdated(boolean z) {
        ApptentiveHelper.checkConversationQueue();
        ApptentiveNotificationCenter.defaultCenter().postNotification("INTERACTIONS_DID_FETCH", "successful", Boolean.valueOf(z));
        Iterator it = this.interactionUpdateListeners.iterator();
        while (it.hasNext()) {
            InteractionManager.InteractionUpdateListener interactionUpdateListener = (InteractionManager.InteractionUpdateListener) it.next();
            if (interactionUpdateListener != null) {
                interactionUpdateListener.onInteractionUpdated(z);
            }
        }
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        Configuration configuration;
        Conversation conversation;
        Conversation conversation2;
        ApptentiveHelper.checkConversationQueue();
        if (apptentiveNotification.hasName("CONVERSATION_STATE_DID_CHANGE")) {
            Conversation conversation3 = (Conversation) apptentiveNotification.getRequiredUserInfo("conversation", Conversation.class);
            if (conversation3.hasActiveState()) {
                if (!conversation3.hasSession()) {
                    conversation3.startSession();
                }
                checkSendVersionChanges(conversation3);
                updateConversationAdvertiserIdentifier(conversation3);
            }
        } else if (apptentiveNotification.hasName("CONVERSATION_WILL_LOGOUT")) {
            ((Conversation) apptentiveNotification.getRequiredUserInfo("conversation", Conversation.class)).addPayload(new LogoutPayload());
        } else if (apptentiveNotification.hasName("AUTHENTICATION_FAILED")) {
            notifyAuthenticationFailedListener((Apptentive.AuthenticationFailedReason) apptentiveNotification.getUserInfo("authenticationFailedReason", Apptentive.AuthenticationFailedReason.class), (String) apptentiveNotification.getUserInfo("conversationId", String.class));
        } else if (apptentiveNotification.hasName("INTERACTION_MANIFEST_FETCHED")) {
            storeManifestResponse(this.appContext, (String) apptentiveNotification.getRequiredUserInfo("manifest", String.class));
        } else if (apptentiveNotification.hasName("APP_ENTERED_FOREGROUND")) {
            onAppEnterForeground();
            if (Configuration.load().isCollectingAdID() && AdvertiserManager.updateAdvertisingIdClientInfo(this.appContext) && (conversation2 = getConversation()) != null) {
                updateConversationAdvertiserIdentifier(conversation2);
            }
        } else if (apptentiveNotification.hasName("APP_ENTERED_BACKGROUND")) {
            onAppEnterBackground();
        } else if (apptentiveNotification.hasName("CONFIGURATION_FETCH_DID_FINISH") && (configuration = (Configuration) apptentiveNotification.getUserInfo("configuration", Configuration.class)) != null) {
            if (configuration.isCollectingAdID() && AdvertiserManager.updateAdvertisingIdClientInfo(this.appContext) && (conversation = getConversation()) != null) {
                updateConversationAdvertiserIdentifier(conversation);
            }
            if (configuration.isCollectingApptimizeData()) {
                tryUpdateApptimizeData();
            }
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void removeInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener) {
        this.interactionUpdateListeners.remove(interactionUpdateListener);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void setOnSurveyFinishedListener(OnSurveyFinishedListener onSurveyFinishedListener) {
        if (onSurveyFinishedListener != null) {
            this.onSurveyFinishedListener = new WeakReference<>(onSurveyFinishedListener);
        } else {
            this.onSurveyFinishedListener = null;
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void showAboutInternal(Context context, boolean z) {
        Intent intent = new Intent();
        intent.setClass(context, ApptentiveViewActivity.class);
        intent.putExtra("fragmentType", 1);
        intent.putExtra("fragmentExtraData", z);
        if (!(context instanceof Activity)) {
            intent.addFlags(402653184);
        }
        context.startActivity(intent);
    }

    public void showMessageCenterFallback(Context context) {
        EngagementModule.launchMessageCenterErrorActivity(context);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public boolean showMessageCenterInternal(@NonNull Context context, Map<String, Object> map) {
        boolean z = false;
        if (canShowMessageCenterInternal()) {
            if (map != null) {
                Iterator<String> it = map.keySet().iterator();
                while (it.hasNext()) {
                    Object obj = map.get(it.next());
                    if (obj != null && !(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Long) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Short)) {
                        ApptentiveLog.m15635w(ApptentiveLogTag.MESSAGES, "Removing invalid customData type: %s", obj.getClass().getSimpleName());
                        it.remove();
                    }
                }
            }
            this.customData = map;
            boolean engageInternal = engageInternal(context, "show_message_center");
            z = engageInternal;
            if (!engageInternal) {
                this.customData = null;
                z = engageInternal;
            }
        } else {
            showMessageCenterFallback(context);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tryUpdateApptimizeData() {
        ApptentiveHelper.checkConversationQueue();
        if (Configuration.load().isCollectingApptimizeData()) {
            Conversation conversation = getConversation();
            if (conversation == null) {
                ApptentiveLog.m15635w(ApptentiveLogTag.PARTNERS, "Unable to update Apptimize data: no active conversation", new Object[0]);
            } else if (!ApptentiveApptimize.isApptimizeSDKAvailable()) {
                ApptentiveLog.m15635w(ApptentiveLogTag.PARTNERS, "Unable to initialize Apptimize SDK support: SDK integration not found", new Object[0]);
            } else if (!ApptentiveApptimize.isSupportedLibraryVersion()) {
                ApptentiveLog.m15635w(ApptentiveLogTag.PARTNERS, "Unable to update Apptimize data: unsupported library version '%s'", ApptentiveApptimize.getLibraryVersion());
            } else {
                Map<String, ApptentiveApptimizeTestInfo> testInfo = ApptentiveApptimize.getTestInfo();
                if (testInfo == null || testInfo.size() == 0) {
                    ApptentiveLog.m15635w(ApptentiveLogTag.PARTNERS, "Unable to update Apptimize data: no experiments", new Object[0]);
                    return;
                }
                for (ApptentiveApptimizeTestInfo apptentiveApptimizeTestInfo : testInfo.values()) {
                    if (apptentiveApptimizeTestInfo != null) {
                        conversation.getDevice().getCustomData().put(StringUtils.format("Apptimize: %s %s", apptentiveApptimizeTestInfo.getTestName(), apptentiveApptimizeTestInfo.userHasParticipated() ? "participated" : "enrolled"), (Serializable) apptentiveApptimizeTestInfo.getEnrolledVariantName());
                    }
                }
            }
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void updateApptentiveInteractionTheme(Context context, Resources.Theme theme) {
        if (!(context instanceof Activity)) {
            theme.applyStyle(C0726R.style.ApptentiveTheme_Base_Versioned, true);
        }
        int i = this.appDefaultAppCompatThemeId;
        if (i != 0) {
            theme.applyStyle(i, true);
        }
        theme.applyStyle(C0726R.style.ApptentiveBaseFrameTheme, true);
        int identifier = context.getResources().getIdentifier("ApptentiveThemeOverride", "style", getApplicationContext().getPackageName());
        if (identifier != 0) {
            theme.applyStyle(identifier, true);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            int d = ContextCompat.m19675d(context, 17170445);
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(new int[]{16843857});
            try {
                this.statusBarColorDefault = obtainStyledAttributes.getColor(0, d);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        int resourceIdFromAttribute = Util.getResourceIdFromAttribute(theme, C0726R.attr.apptentiveToolbarTheme);
        this.apptentiveToolbarTheme.setTo(theme);
        this.apptentiveToolbarTheme.applyStyle(resourceIdFromAttribute, true);
    }
}
