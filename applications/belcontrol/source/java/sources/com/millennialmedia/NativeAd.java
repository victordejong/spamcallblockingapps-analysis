package com.millennialmedia;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.internal.telephony.PhoneConstants;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.ErrorStatus;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.NativeAdapter;
import com.millennialmedia.internal.adadapters.NativeMediatedAdAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TrackingEvent;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd.class */
public class NativeAd extends AdPlacement {
    public static final String COMPONENT_ID_BODY = "body";
    public static final String COMPONENT_ID_CALL_TO_ACTION = "callToAction";
    public static final String COMPONENT_ID_DISCLAIMER = "disclaimer";
    public static final String COMPONENT_ID_ICON_IMAGE = "iconImage";
    public static final String COMPONENT_ID_MAIN_IMAGE = "mainImage";
    public static final String COMPONENT_ID_RATING = "rating";
    public static final String COMPONENT_ID_TITLE = "title";
    private static final String DEFAULT_DISCLAIMER_TEXT = "Sponsored";
    private static final int MAX_COMP_INSTANCE_ID = 900;
    private static final int MIN_COMP_INSTANCE_ID = 1;
    public static final String NATIVE_TYPE_INLINE = "inline";
    public static final String STATE_EXPIRED = "expired";
    private static final String TAG = "NativeAd";
    private ThreadUtils.ScheduledRunnable adAdapterRequestTimeoutRunnable;
    private List<NativeAdapter.TextComponentInfo> bodyInfoList;
    private List<NativeAdapter.TextComponentInfo> callToActionInfoList;
    private WeakReference<Context> contextRef;
    private volatile NativeAdapter currentNativeAdAdapter;
    private List<NativeAdapter.TextComponentInfo> disclaimerInfoList;
    private ThreadUtils.ScheduledRunnable expirationRunnable;
    private List<NativeAdapter.ImageComponentInfo> iconImageInfoList;
    private ImpressionReporter impressionReporter;
    private List<NativeAdapter.ImageComponentInfo> mainImageInfoList;
    private NativeAdMetadata nativeAdMetadata;
    private NativeListener nativeListener;
    private Handshake.NativeTypeDefinition nativeTypeDefinition;
    private volatile NativeAdapter nextNativeAdAdapter;
    private ThreadUtils.ScheduledRunnable placementRequestTimeoutRunnable;
    private List<NativeAdapter.TextComponentInfo> ratingInfoList;
    private List<String> requestedNativeTypes;
    private List<NativeAdapter.TextComponentInfo> titleInfoList;
    private boolean usingManagedLayout = false;
    private boolean impressionReported = false;
    private Map<String, Set<Integer>> accessedComponentIndices = new HashMap();
    public Map<String, List<Object>> loadedComponents = new HashMap();

    /* renamed from: com.millennialmedia.NativeAd$4 */
    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$4.class */
    public class C07544 implements NativeAdapter.NativeAdapterListener {
        public final /* synthetic */ AdPlacement.RequestState val$localRequestState;
        public final /* synthetic */ AdPlacementReporter.PlayListItemReporter val$playListItemReporter;

        public C07544(AdPlacement.RequestState requestState, AdPlacementReporter.PlayListItemReporter playListItemReporter) {
            NativeAd.this = r4;
            this.val$localRequestState = requestState;
            this.val$playListItemReporter = playListItemReporter;
        }

        @Override // com.millennialmedia.internal.adadapters.NativeAdapter.NativeAdapterListener
        public void initFailed(Throwable th) {
            AdPlacementReporter.reportPlayListItem(this.val$localRequestState.getAdPlacementReporter(), this.val$playListItemReporter, -3);
            NativeAd.this.onAdAdapterLoadFailed(this.val$localRequestState);
        }

        @Override // com.millennialmedia.internal.adadapters.NativeAdapter.NativeAdapterListener
        public void initSucceeded() {
            synchronized (NativeAd.this) {
                if (!NativeAd.this.currentRequestState.compare(this.val$localRequestState)) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(NativeAd.TAG, "initSucceeded called but request state is not valid");
                    }
                } else if (NativeAd.this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                    NativeAd nativeAd = NativeAd.this;
                    nativeAd.setCurrentAdAdapter(nativeAd.nextNativeAdAdapter);
                    NativeAd.this.nextNativeAdAdapter = null;
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NativeAd nativeAd2 = NativeAd.this;
                            final boolean loadComponents = nativeAd2.loadComponents(nativeAd2.currentNativeAdAdapter);
                            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.NativeAd.4.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (loadComponents) {
                                        AdPlacementReporter.reportPlayListItem(C07544.this.val$localRequestState.getAdPlacementReporter(), C07544.this.val$playListItemReporter);
                                        C07544 c07544 = C07544.this;
                                        NativeAd.this.onLoadSucceeded(c07544.val$localRequestState);
                                        return;
                                    }
                                    AdPlacementReporter.reportPlayListItem(C07544.this.val$localRequestState.getAdPlacementReporter(), C07544.this.val$playListItemReporter, -3);
                                    C07544 c075442 = C07544.this;
                                    NativeAd.this.onAdAdapterLoadFailed(c075442.val$localRequestState);
                                }
                            });
                        }
                    });
                } else {
                    if (MMLog.isDebugEnabled()) {
                        String str = NativeAd.TAG;
                        MMLog.m4070d(str, "initSucceeded called but placement state is not valid: " + NativeAd.this.placementState);
                    }
                }
            }
        }

        @Override // com.millennialmedia.internal.adadapters.NativeAdapter.NativeAdapterListener
        public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
            NativeAd.this.onIncentiveEarned(xIncentiveEvent);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$ComponentName.class */
    public enum ComponentName {
        TITLE,
        BODY,
        ICON_IMAGE,
        MAIN_IMAGE,
        CALL_TO_ACTION,
        RATING,
        DISCLAIMER
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$ExpirationRunnable.class */
    public static class ExpirationRunnable implements Runnable {
        public WeakReference<NativeAd> nativeAdRef;
        public WeakReference<AdPlacement.RequestState> requestStateRef;

        public ExpirationRunnable(NativeAd nativeAd, AdPlacement.RequestState requestState) {
            this.nativeAdRef = new WeakReference<>(nativeAd);
            this.requestStateRef = new WeakReference<>(requestState);
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            NativeAd nativeAd = this.nativeAdRef.get();
            if (nativeAd == null) {
                str = NativeAd.TAG;
                str2 = "NativeAd instance has been destroyed, aborting expiration state change";
            } else {
                nativeAd.expirationRunnable = null;
                AdPlacement.RequestState requestState = this.requestStateRef.get();
                if (requestState != null) {
                    nativeAd.onExpired(requestState);
                    return;
                } else {
                    str = NativeAd.TAG;
                    str2 = "No valid RequestStateComponents is available, unable to trigger expired state change";
                }
            }
            MMLog.m4068e(str, str2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$ImpressionReporter.class */
    public static class ImpressionReporter implements ViewUtils.ViewabilityListener {
        public final long impressionDelay;
        public volatile ThreadUtils.ScheduledRunnable impressionTimerRunnable;
        public final View layout;
        public final NativeAd nativeAd;
        public ViewUtils.ViewabilityWatcher viewabilityWatcher;

        public ImpressionReporter(NativeAd nativeAd, View view, long j) {
            this.nativeAd = nativeAd;
            this.layout = view;
            this.impressionDelay = j;
        }

        private void cancelImpressionTimer() {
            if (this.impressionTimerRunnable != null) {
                MMLog.m4070d(NativeAd.TAG, "Cancelling previous impression timer runnable");
                this.impressionTimerRunnable.cancel();
                this.impressionTimerRunnable = null;
            }
        }

        private void prepareImpressionTimer(final NativeAd nativeAd) {
            this.impressionTimerRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.NativeAd.ImpressionReporter.1
                @Override // java.lang.Runnable
                public void run() {
                    MMLog.m4070d(NativeAd.TAG, "Preparing impression timer runnable");
                    synchronized (ImpressionReporter.this) {
                        if (ImpressionReporter.this.viewabilityWatcher.viewable && !nativeAd.isDestroyed()) {
                            int i = 1;
                            if (ImpressionReporter.this.impressionDelay == 0) {
                                i = 0;
                            }
                            NativeAd nativeAd2 = nativeAd;
                            nativeAd2.reportImpression(nativeAd2.currentRequestState.getAdPlacementReporter(), i);
                        }
                        ImpressionReporter.this.cancel();
                    }
                }
            }, this.impressionDelay);
        }

        private boolean wasImpressionTimerPrepared() {
            return this.impressionTimerRunnable != null;
        }

        public void cancel() {
            synchronized (this) {
                cancelImpressionTimer();
                if (this.viewabilityWatcher != null) {
                    MMLog.m4070d(NativeAd.TAG, "Stopping previous impression viewability watcher");
                    this.viewabilityWatcher.stopWatching();
                }
            }
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            synchronized (this) {
                if (z) {
                    if (!wasImpressionTimerPrepared() && !this.nativeAd.impressionReported) {
                        prepareImpressionTimer(this.nativeAd);
                    }
                }
                if (!z) {
                    cancelImpressionTimer();
                }
            }
        }

        public void start() {
            if (this.viewabilityWatcher == null) {
                this.viewabilityWatcher = new ViewUtils.ViewabilityWatcher(this.layout, this);
            }
            this.viewabilityWatcher.setMinViewabilityPercent(50);
            this.viewabilityWatcher.startWatching();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$NativeAdMetadata.class */
    public static class NativeAdMetadata extends AdPlacementMetadata<NativeAdMetadata> {
        private static final String PLACEMENT_TYPE_NATIVE = "native";

        public NativeAdMetadata() {
            super(PLACEMENT_TYPE_NATIVE);
        }

        public Map<String, Object> toMap(NativeAd nativeAd) {
            Map<String, Object> map = super.toMap((AdPlacement) nativeAd);
            Utils.injectIfNotNull(map, AdPlacementMetadata.METADATA_KEY_NATIVE_TYPES, nativeAd.requestedNativeTypes);
            return map;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$NativeErrorStatus.class */
    public static class NativeErrorStatus extends ErrorStatus {
        public static final int EXPIRED = 301;

        static {
            ErrorStatus.errorCodes.put(Integer.valueOf((int) EXPIRED), "EXPIRED");
        }

        public NativeErrorStatus(int i) {
            super(i);
        }

        public NativeErrorStatus(int i, String str, Throwable th) {
            super(i, str, th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/NativeAd$NativeListener.class */
    public interface NativeListener {
        void onAdLeftApplication(NativeAd nativeAd);

        void onClicked(NativeAd nativeAd, ComponentName componentName, int i);

        void onExpired(NativeAd nativeAd);

        void onLoadFailed(NativeAd nativeAd, NativeErrorStatus nativeErrorStatus);

        void onLoaded(NativeAd nativeAd);
    }

    private NativeAd(String str, String[] strArr) {
        super(str);
        String str2;
        Map.Entry<String, Handshake.NativeTypeDefinition> next;
        if (strArr == null || strArr.length == 0 || strArr[0] == null || strArr[0].isEmpty()) {
            throw new MMException("Unable to create native ad, nativeTypes is required");
        }
        ArrayList arrayList = new ArrayList();
        Map<String, Handshake.NativeTypeDefinition> nativeTypeDefinitions = Handshake.getNativeTypeDefinitions();
        for (String str3 : strArr) {
            Iterator<Map.Entry<String, Handshake.NativeTypeDefinition>> it = nativeTypeDefinitions.entrySet().iterator();
            do {
                str2 = null;
                if (!it.hasNext()) {
                    break;
                }
                next = it.next();
                str2 = next.getKey();
            } while (!str3.equals(next.getValue().typeName));
            if (str2 == null) {
                throw new MMException("Unable to load native ad, specified native type <" + str3 + "> is not recognized");
            }
            arrayList.add(str2);
        }
        this.requestedNativeTypes = arrayList;
    }

    public static NativeAd createInstance(String str, String str2) {
        return createInstance(str, new String[]{str2});
    }

    public static NativeAd createInstance(String str, String[] strArr) {
        if (MMSDK.isInitialized()) {
            return new NativeAd(str, strArr);
        }
        throw new MMInitializationException("Unable to create instance, SDK must be initialized first");
    }

    private void fillImageViews(List<ImageView> list, String str, ComponentName componentName, List<NativeAdapter.ImageComponentInfo> list2, boolean z) {
        if (list == null) {
            return;
        }
        List<Object> list3 = this.loadedComponents.get(str);
        int size = z ? list.size() : Math.min(list.size(), list3.size());
        for (int i = 0; i < size; i++) {
            ImageView imageView = list.get(i);
            if (i < list3.size()) {
                imageView.setImageDrawable(((ImageView) list3.get(i)).getDrawable());
                setComponentClickListener(imageView, componentName, i, list2.get(i));
            } else {
                imageView.setImageDrawable(null);
                imageView.setOnClickListener(null);
            }
        }
    }

    private void fillTextViews(List<TextView> list, String str, ComponentName componentName, List<NativeAdapter.TextComponentInfo> list2, boolean z) {
        if (list == null) {
            return;
        }
        List<Object> list3 = this.loadedComponents.get(str);
        int size = z ? list.size() : Math.min(list.size(), list3.size());
        for (int i = 0; i < size; i++) {
            TextView textView = list.get(i);
            if (i < list3.size()) {
                textView.setText(((TextView) list3.get(i)).getText());
                setComponentClickListener(textView, componentName, i, list2.get(i));
            } else {
                textView.setText("");
                textView.setOnClickListener(null);
            }
        }
    }

    private List<ImageView> findImageViewsByComponentId(View view, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= MAX_COMP_INSTANCE_ID; i++) {
            View findViewWithTag = view.findViewWithTag(str + "_" + i);
            if (findViewWithTag == null) {
                break;
            } else if (!(findViewWithTag instanceof ImageView)) {
                throw new MMException("Expected View with tag = " + findViewWithTag.getTag() + " to be a ImageView.");
            } else {
                arrayList.add((ImageView) findViewWithTag);
            }
        }
        return arrayList;
    }

    private List<TextView> findTextViewsByComponentId(View view, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= MAX_COMP_INSTANCE_ID; i++) {
            View findViewWithTag = view.findViewWithTag(str + "_" + i);
            if (findViewWithTag == null) {
                break;
            } else if (!(findViewWithTag instanceof TextView)) {
                throw new MMException("Expected View with tag = " + findViewWithTag.getTag() + " to be a TextView.");
            } else {
                arrayList.add((TextView) findViewWithTag);
            }
        }
        return arrayList;
    }

    private NativeAdapter.ComponentInfo getComponentInfo(ComponentName componentName, int i) {
        List<NativeAdapter.TextComponentInfo> list = componentName == ComponentName.CALL_TO_ACTION ? this.callToActionInfoList : componentName == ComponentName.ICON_IMAGE ? this.iconImageInfoList : componentName == ComponentName.MAIN_IMAGE ? this.mainImageInfoList : null;
        if (list == null) {
            MMLog.m4068e(TAG, String.format(Locale.getDefault(), "Unable to get component info for component name <%s> and instance id <%d>, did not find component info list", componentName, Integer.valueOf(i)));
            return null;
        } else if (i < 1) {
            MMLog.m4068e(TAG, "Unable to get component info for component name <" + componentName + "> and instance id <" + i + ">, instance id must be greater than 0");
            return null;
        } else if (list.size() < i) {
            MMLog.m4068e(TAG, "Unable to get component info for component name <" + componentName + "> and instance id <" + i + ">, only <" + list.size() + "> instances found");
            return null;
        } else {
            int i2 = i - 1;
            NativeAdapter.ImageComponentInfo imageComponentInfo = list.get(i2);
            if (imageComponentInfo != null) {
                return imageComponentInfo;
            }
            MMLog.m4068e(TAG, "Unable to get component info for component name <" + componentName + "> and instance id <" + i2 + ">, found value is null");
            return null;
        }
    }

    private Object getComponentInstance(int i, String str, String str2) {
        if (i < 1) {
            String str3 = TAG;
            MMLog.m4068e(str3, "Unable to retrieve the requested <" + str2 + "> instance, instance value must be 1 or greater");
            return null;
        }
        List<Object> list = this.loadedComponents.get(str);
        if (list.size() >= i) {
            markComponentAsAccessed(str, i);
            return list.get(i - 1);
        }
        String str4 = TAG;
        MMLog.m4068e(str4, "Unable to retrieve the requested <" + str2 + "> instance <" + i + ">, only <" + list.size() + "> instances available");
        return null;
    }

    private static long getImpressionDelay(AdAdapter adAdapter) {
        return adAdapter.getImpressionDelay();
    }

    private boolean internalUpdateLayout(View view, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        HashMap hashMap = new HashMap();
        for (Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition : this.nativeTypeDefinition.componentDefinitions) {
            hashMap.put(componentDefinition.componentId, componentDefinition);
        }
        List<TextView> findTextViewsByComponentId = findTextViewsByComponentId(view, "body");
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition2 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get("body");
        if (componentDefinition2 == null || findTextViewsByComponentId.size() >= componentDefinition2.publisherRequired) {
            z3 = true;
        } else {
            MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the body component.");
            z3 = false;
        }
        List<TextView> findTextViewsByComponentId2 = findTextViewsByComponentId(view, COMPONENT_ID_CALL_TO_ACTION);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition3 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_CALL_TO_ACTION);
        boolean z5 = z3;
        if (componentDefinition3 != null) {
            z5 = z3;
            if (findTextViewsByComponentId2.size() < componentDefinition3.publisherRequired) {
                MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the 'Call To Action' component.");
                z5 = false;
            }
        }
        List<TextView> findTextViewsByComponentId3 = findTextViewsByComponentId(view, COMPONENT_ID_DISCLAIMER);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition4 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_DISCLAIMER);
        boolean z6 = z5;
        if (componentDefinition4 != null) {
            z6 = z5;
            if (findTextViewsByComponentId3.size() < componentDefinition4.publisherRequired) {
                MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the Disclaimer component.");
                z6 = false;
            }
        }
        List<ImageView> findImageViewsByComponentId = findImageViewsByComponentId(view, COMPONENT_ID_ICON_IMAGE);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition5 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_ICON_IMAGE);
        boolean z7 = z6;
        if (componentDefinition5 != null) {
            z7 = z6;
            if (findImageViewsByComponentId.size() < componentDefinition5.publisherRequired) {
                MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the 'Icon Image' component.");
                z7 = false;
            }
        }
        List<ImageView> findImageViewsByComponentId2 = findImageViewsByComponentId(view, COMPONENT_ID_MAIN_IMAGE);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition6 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_MAIN_IMAGE);
        boolean z8 = z7;
        if (componentDefinition6 != null) {
            z8 = z7;
            if (findImageViewsByComponentId2.size() < componentDefinition6.publisherRequired) {
                MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the 'Main Image' component.");
                z8 = false;
            }
        }
        List<TextView> findTextViewsByComponentId4 = findTextViewsByComponentId(view, COMPONENT_ID_RATING);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition7 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_RATING);
        boolean z9 = z8;
        if (componentDefinition7 != null) {
            z9 = z8;
            if (findTextViewsByComponentId4.size() < componentDefinition7.publisherRequired) {
                MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the Rating component.");
                z9 = false;
            }
        }
        List<TextView> findTextViewsByComponentId5 = findTextViewsByComponentId(view, "title");
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition8 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get("title");
        boolean z10 = z9;
        if (componentDefinition8 != null) {
            z10 = z9;
            if (findTextViewsByComponentId5.size() < componentDefinition8.publisherRequired) {
                MMLog.m4068e(TAG, "Layout does not contain the required number of Views for the Title component.");
                z10 = false;
            }
        }
        if (!z10) {
            MMLog.m4068e(TAG, "Layout was not updated because it did not contain the required Views.");
            z4 = false;
        } else if ((findTextViewsByComponentId.size() <= this.bodyInfoList.size() && findTextViewsByComponentId3.size() <= this.disclaimerInfoList.size() && findTextViewsByComponentId4.size() <= this.ratingInfoList.size() && findTextViewsByComponentId5.size() <= this.titleInfoList.size() && findTextViewsByComponentId2.size() <= this.callToActionInfoList.size() && findImageViewsByComponentId.size() <= this.iconImageInfoList.size() && findImageViewsByComponentId2.size() <= this.mainImageInfoList.size()) || !z) {
            fillTextViews(findTextViewsByComponentId, "body", ComponentName.BODY, this.bodyInfoList, z2);
            fillTextViews(findTextViewsByComponentId3, COMPONENT_ID_DISCLAIMER, ComponentName.DISCLAIMER, this.disclaimerInfoList, z2);
            fillTextViews(findTextViewsByComponentId4, COMPONENT_ID_RATING, ComponentName.RATING, this.ratingInfoList, z2);
            fillTextViews(findTextViewsByComponentId5, "title", ComponentName.TITLE, this.titleInfoList, z2);
            fillTextViews(findTextViewsByComponentId2, COMPONENT_ID_CALL_TO_ACTION, ComponentName.CALL_TO_ACTION, this.callToActionInfoList, z2);
            fillImageViews(findImageViewsByComponentId, COMPONENT_ID_ICON_IMAGE, ComponentName.ICON_IMAGE, this.iconImageInfoList, z2);
            fillImageViews(findImageViewsByComponentId2, COMPONENT_ID_MAIN_IMAGE, ComponentName.MAIN_IMAGE, this.mainImageInfoList, z2);
            this.usingManagedLayout = true;
            ImpressionReporter impressionReporter = this.impressionReporter;
            if (impressionReporter != null) {
                impressionReporter.cancel();
            }
            ImpressionReporter impressionReporter2 = new ImpressionReporter(this, view, getImpressionDelay(this.currentNativeAdAdapter));
            this.impressionReporter = impressionReporter2;
            impressionReporter2.start();
            z4 = true;
        } else {
            z4 = false;
        }
        return z4;
    }

    public void invokeAction(String str, String str2) {
        if (str2 == null) {
            String str3 = TAG;
            MMLog.m4068e(str3, "Unable to invoke " + str + " action, url is null");
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str2));
        Context context = this.contextRef.get();
        if (context == null || !Utils.startActivity(context, intent)) {
            return;
        }
        onAdLeftApplication();
    }

    private boolean isLoading() {
        return !this.placementState.equals(AdPlacement.STATE_IDLE) && !this.placementState.equals(AdPlacement.STATE_LOAD_FAILED) && !this.placementState.equals(AdPlacement.STATE_LOADED) && !this.placementState.equals("expired") && !this.placementState.equals(AdPlacement.STATE_DESTROYED);
    }

    public void loadAdAdapter(AdPlacement.RequestState requestState) {
        final AdPlacement.RequestState copy = requestState.copy();
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (this.currentRequestState.compareRequest(copy) && (this.placementState.equals(AdPlacement.STATE_PLAY_LIST_LOADED) || this.placementState.equals(AdPlacement.STATE_AD_ADAPTER_LOAD_FAILED))) {
                this.placementState = AdPlacement.STATE_LOADING_AD_ADAPTER;
                copy.getItemHash();
                this.currentRequestState = copy;
                if (!this.playList.hasNext()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(TAG, "Unable to find ad adapter in play list");
                    }
                    onLoadFailed(copy);
                    return;
                }
                final AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(requestState.getAdPlacementReporter());
                this.nextNativeAdAdapter = (NativeAdapter) this.playList.getNextAdAdapter(this, playListItemReporter);
                Context context = this.contextRef.get();
                if (this.nextNativeAdAdapter == null || context == null) {
                    AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                    onAdAdapterLoadFailed(copy);
                    return;
                }
                int i = this.nextNativeAdAdapter.requestTimeout;
                if (i > 0) {
                    ThreadUtils.ScheduledRunnable scheduledRunnable = this.adAdapterRequestTimeoutRunnable;
                    if (scheduledRunnable != null) {
                        scheduledRunnable.cancel();
                    }
                    this.adAdapterRequestTimeoutRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.NativeAd.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(NativeAd.TAG, "Ad adapter load timed out");
                            }
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -2);
                            NativeAd.this.onAdAdapterLoadFailed(copy);
                        }
                    }, i);
                }
                this.nextNativeAdAdapter.init(new C07544(copy, playListItemReporter));
            }
        }
    }

    private void loadButtonComponentArray(String str, ComponentName componentName, List<NativeAdapter.TextComponentInfo> list) {
        ArrayList arrayList = new ArrayList();
        Context context = this.contextRef.get();
        if (context != null) {
            for (int i = 0; i < list.size(); i++) {
                NativeAdapter.TextComponentInfo textComponentInfo = list.get(i);
                if (textComponentInfo != null) {
                    Button button = new Button(context);
                    button.setText(textComponentInfo.value);
                    setComponentClickListener(button, componentName, i, textComponentInfo);
                    arrayList.add(button);
                }
            }
        }
        this.loadedComponents.put(str, arrayList);
    }

    public boolean loadComponents(NativeAdapter nativeAdapter) {
        String str;
        StringBuilder sb;
        String str2;
        String sb2;
        String type = nativeAdapter.getType();
        if (type == null) {
            str = TAG;
            sb2 = "Unable to load components, native type is not set";
        } else {
            if (!this.requestedNativeTypes.contains(type)) {
                str = TAG;
                sb = new StringBuilder();
                sb.append("Unable to load components, native type <");
                sb.append(type);
                str2 = "> is not a requested native type";
            } else {
                Handshake.NativeTypeDefinition nativeTypeDefinition = Handshake.getNativeTypeDefinition(type);
                this.nativeTypeDefinition = nativeTypeDefinition;
                if (nativeTypeDefinition != null) {
                    List<NativeAdapter.TextComponentInfo> titleList = nativeAdapter.getTitleList();
                    this.titleInfoList = titleList;
                    loadTextComponentArray("title", ComponentName.TITLE, titleList);
                    List<NativeAdapter.TextComponentInfo> bodyList = nativeAdapter.getBodyList();
                    this.bodyInfoList = bodyList;
                    loadTextComponentArray("body", ComponentName.BODY, bodyList);
                    List<NativeAdapter.ImageComponentInfo> iconImageList = nativeAdapter.getIconImageList();
                    this.iconImageInfoList = iconImageList;
                    loadImageComponentArray(COMPONENT_ID_ICON_IMAGE, ComponentName.ICON_IMAGE, iconImageList);
                    List<NativeAdapter.ImageComponentInfo> mainImageList = nativeAdapter.getMainImageList();
                    this.mainImageInfoList = mainImageList;
                    loadImageComponentArray(COMPONENT_ID_MAIN_IMAGE, ComponentName.MAIN_IMAGE, mainImageList);
                    List<NativeAdapter.TextComponentInfo> callToActionList = nativeAdapter.getCallToActionList();
                    this.callToActionInfoList = callToActionList;
                    loadButtonComponentArray(COMPONENT_ID_CALL_TO_ACTION, ComponentName.CALL_TO_ACTION, callToActionList);
                    List<NativeAdapter.TextComponentInfo> ratingList = nativeAdapter.getRatingList();
                    this.ratingInfoList = ratingList;
                    loadTextComponentArray(COMPONENT_ID_RATING, ComponentName.RATING, ratingList);
                    List<NativeAdapter.TextComponentInfo> disclaimerList = nativeAdapter.getDisclaimerList();
                    this.disclaimerInfoList = disclaimerList;
                    if (disclaimerList.isEmpty()) {
                        NativeAdapter.TextComponentInfo textComponentInfo = new NativeAdapter.TextComponentInfo();
                        textComponentInfo.value = DEFAULT_DISCLAIMER_TEXT;
                        this.disclaimerInfoList.add(textComponentInfo);
                    }
                    loadTextComponentArray(COMPONENT_ID_DISCLAIMER, ComponentName.DISCLAIMER, this.disclaimerInfoList);
                    return validateLoadedComponents(type);
                }
                str = TAG;
                sb = new StringBuilder();
                sb.append("Unable to load components, unable to find list of required components for native type <");
                sb.append(type);
                str2 = ">";
            }
            sb.append(str2);
            sb2 = sb.toString();
        }
        MMLog.m4068e(str, sb2);
        return false;
    }

    private void loadImageComponentArray(String str, ComponentName componentName, List<NativeAdapter.ImageComponentInfo> list) {
        ArrayList arrayList = new ArrayList();
        Context context = this.contextRef.get();
        if (context != null) {
            for (int i = 0; i < list.size(); i++) {
                NativeAdapter.ImageComponentInfo imageComponentInfo = list.get(i);
                if (imageComponentInfo != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(imageComponentInfo.bitmap);
                    ImageView imageView = new ImageView(context);
                    imageView.setImageDrawable(bitmapDrawable);
                    setComponentClickListener(imageView, componentName, i, imageComponentInfo);
                    arrayList.add(imageView);
                }
            }
        }
        this.loadedComponents.put(str, arrayList);
    }

    private void loadTextComponentArray(String str, ComponentName componentName, List<NativeAdapter.TextComponentInfo> list) {
        ArrayList arrayList = new ArrayList();
        Context context = this.contextRef.get();
        if (context != null) {
            for (int i = 0; i < list.size(); i++) {
                NativeAdapter.TextComponentInfo textComponentInfo = list.get(i);
                if (textComponentInfo != null) {
                    TextView textView = new TextView(context);
                    textView.setText(textComponentInfo.value);
                    setComponentClickListener(textView, componentName, i, textComponentInfo);
                    arrayList.add(textView);
                }
            }
        }
        this.loadedComponents.put(str, arrayList);
    }

    private void markComponentAsAccessed(String str, int i) {
        Set<Integer> set = this.accessedComponentIndices.get(str);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            this.accessedComponentIndices.put(str, hashSet);
        }
        hashSet.add(Integer.valueOf(i));
    }

    public void onAdAdapterLoadFailed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onAdAdapterLoadFailed called but load state is not valid");
                }
            } else if (this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                if (doPendingDestroy()) {
                    return;
                }
                this.placementState = AdPlacement.STATE_AD_ADAPTER_LOAD_FAILED;
                loadAdAdapter(requestState);
            } else {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onAdAdapterLoadFailed called but placement state is not valid: " + this.placementState);
                }
            }
        }
    }

    private void onAdLeftApplication() {
        MMLog.m4066i(TAG, "Ad left application");
        final NativeListener nativeListener = this.nativeListener;
        if (nativeListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.8
                @Override // java.lang.Runnable
                public void run() {
                    nativeListener.onAdLeftApplication(NativeAd.this);
                }
            });
        }
    }

    public void onExpired(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onExpired called but load state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADED)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onExpired called but placement state is not valid: " + this.placementState);
                }
            } else {
                this.placementState = "expired";
                MMLog.m4066i(TAG, "Ad expired");
                final NativeListener nativeListener = this.nativeListener;
                if (nativeListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.9
                    @Override // java.lang.Runnable
                    public void run() {
                        nativeListener.onExpired(NativeAd.this);
                    }
                });
            }
        }
    }

    public void onLoadFailed(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (doPendingDestroy()) {
                return;
            }
            if (!this.currentRequestState.compareRequest(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "onLoadFailed called but load state is not valid");
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER) && !this.placementState.equals(AdPlacement.STATE_LOADING_PLAY_LIST)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onLoadFailed called but placement state is not valid: " + this.placementState);
                }
            } else {
                this.placementState = AdPlacement.STATE_LOAD_FAILED;
                String str2 = TAG;
                MMLog.m4062w(str2, "Load failed for placement ID: " + this.placementId + ". If this warning persists please check your placement configuration.");
                stopRequestTimeoutTimers();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final NativeListener nativeListener = this.nativeListener;
                if (nativeListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.7
                    @Override // java.lang.Runnable
                    public void run() {
                        nativeListener.onLoadFailed(NativeAd.this, new NativeErrorStatus(5));
                    }
                });
            }
        }
    }

    public void onLoadSucceeded(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.currentRequestState.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    String str = TAG;
                    MMLog.m4070d(str, "onLoadSucceeded called but load state is not valid; current = " + this.currentRequestState + ", caller = " + requestState);
                }
            } else if (!this.placementState.equals(AdPlacement.STATE_LOADING_AD_ADAPTER)) {
                if (MMLog.isDebugEnabled()) {
                    String str2 = TAG;
                    MMLog.m4070d(str2, "onLoadSucceeded called but placement state is not valid: " + this.placementState);
                }
            } else if (doPendingDestroy()) {
            } else {
                this.placementState = AdPlacement.STATE_LOADED;
                MMLog.m4066i(TAG, "Load succeeded");
                stopRequestTimeoutTimers();
                startExpirationTimer(requestState);
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                if (this.currentNativeAdAdapter instanceof NativeMediatedAdAdapter) {
                    ((NativeMediatedAdAdapter) this.currentNativeAdAdapter).onAdLoaded(this);
                }
                final NativeListener nativeListener = this.nativeListener;
                if (nativeListener == null) {
                    return;
                }
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.6
                    @Override // java.lang.Runnable
                    public void run() {
                        nativeListener.onLoaded(NativeAd.this);
                    }
                });
            }
        }
    }

    private void releaseAdapters() {
        if (this.currentNativeAdAdapter != null) {
            this.currentNativeAdAdapter.release();
            this.currentNativeAdAdapter = null;
        }
        if (this.nextNativeAdAdapter != null) {
            this.nextNativeAdAdapter.release();
            this.nextNativeAdAdapter = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reportClick(com.millennialmedia.internal.AdPlacementReporter r5, com.millennialmedia.internal.adadapters.NativeAdapter.ComponentInfo r6) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r2 = 2
            r0.reportImpression(r1, r2)
            r0 = r5
            com.millennialmedia.internal.AdPlacementReporter.setClicked(r0)
            r0 = r6
            if (r0 == 0) goto L19
            r0 = r6
            java.util.List<java.lang.String> r0 = r0.clickTrackerUrls
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L21
        L19:
            r0 = r4
            com.millennialmedia.internal.adadapters.NativeAdapter r0 = r0.currentNativeAdAdapter
            java.util.List r0 = r0.getClickTrackers()
            r5 = r0
        L21:
            r0 = r5
            java.lang.String r1 = "click tracker"
            com.millennialmedia.internal.utils.TrackingEvent.fireUrls(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.NativeAd.reportClick(com.millennialmedia.internal.AdPlacementReporter, com.millennialmedia.internal.adadapters.NativeAdapter$ComponentInfo):void");
    }

    public void reportImpression(AdPlacementReporter adPlacementReporter, int i) {
        if (!this.impressionReported) {
            this.impressionReported = true;
            AdPlacementReporter.setDisplayed(adPlacementReporter, i);
            TrackingEvent.fireUrls(this.currentNativeAdAdapter.getImpressionTrackers(), "impression tracker");
            stopExpirationTimer();
        }
    }

    private void setComponentClickListener(View view, final ComponentName componentName, final int i, final NativeAdapter.ComponentInfo componentInfo) {
        final AdPlacementReporter adPlacementReporter = this.currentRequestState.getAdPlacementReporter();
        view.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.NativeAd.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (NativeAd.this.isDestroyed()) {
                    return;
                }
                MMLog.m4066i(NativeAd.TAG, "Ad clicked");
                NativeAd.this.reportClick(adPlacementReporter, componentInfo);
                if (NativeAd.this.currentNativeAdAdapter instanceof NativeMediatedAdAdapter) {
                    ((NativeMediatedAdAdapter) NativeAd.this.currentNativeAdAdapter).onAdClicked(NativeAd.this);
                }
                final NativeListener nativeListener = NativeAd.this.nativeListener;
                if (nativeListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NativeListener nativeListener2 = nativeListener;
                            View$OnClickListenerC07575 view$OnClickListenerC07575 = View$OnClickListenerC07575.this;
                            nativeListener2.onClicked(NativeAd.this, componentName, i);
                        }
                    });
                }
                NativeAd.this.invokeAction("click", componentInfo.clickUrl);
            }
        });
    }

    public void setCurrentAdAdapter(NativeAdapter nativeAdapter) {
        if (this.currentNativeAdAdapter != null && this.currentNativeAdAdapter != nativeAdapter) {
            this.currentNativeAdAdapter.release();
        }
        this.currentNativeAdAdapter = nativeAdapter;
    }

    private void startExpirationTimer(AdPlacement.RequestState requestState) {
        stopExpirationTimer();
        int nativeExpirationDuration = Handshake.getNativeExpirationDuration();
        if (nativeExpirationDuration > 0) {
            this.expirationRunnable = ThreadUtils.runOnWorkerThreadDelayed(new ExpirationRunnable(this, requestState), nativeExpirationDuration);
        }
    }

    private void stopExpirationTimer() {
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.expirationRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.expirationRunnable = null;
        }
    }

    private void stopRequestTimeoutTimers() {
        ThreadUtils.ScheduledRunnable scheduledRunnable = this.placementRequestTimeoutRunnable;
        if (scheduledRunnable != null) {
            scheduledRunnable.cancel();
            this.placementRequestTimeoutRunnable = null;
        }
        ThreadUtils.ScheduledRunnable scheduledRunnable2 = this.adAdapterRequestTimeoutRunnable;
        if (scheduledRunnable2 != null) {
            scheduledRunnable2.cancel();
            this.adAdapterRequestTimeoutRunnable = null;
        }
    }

    private boolean validateLoadedComponents(String str) {
        ArrayList arrayList = new ArrayList();
        for (Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition : this.nativeTypeDefinition.componentDefinitions) {
            if (componentDefinition == null) {
                MMLog.m4068e(TAG, String.format("Missing configuration data for native type: %s.", str));
                return false;
            }
            int i = componentDefinition.adverstiserRequired;
            List<Object> list = this.loadedComponents.get(componentDefinition.componentId);
            if (list == null || list.size() < i) {
                arrayList.add(componentDefinition.componentId);
            }
        }
        if (arrayList.size() > 0) {
            String str2 = TAG;
            MMLog.m4068e(str2, "Unable to load required components <" + TextUtils.join(", ", arrayList) + "> for native type <" + str + ">");
            return false;
        }
        return true;
    }

    @SuppressLint({"DefaultLocale"})
    private void validateRequiredComponentAccess() {
        ArrayList arrayList = new ArrayList();
        for (Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition : this.nativeTypeDefinition.componentDefinitions) {
            Set<Integer> set = this.accessedComponentIndices.get(componentDefinition.componentId);
            int size = set != null ? set.size() : 0;
            int i = componentDefinition.publisherRequired;
            if (size < i) {
                arrayList.add(String.format("Component: %s, required: %d, accessed: %d", componentDefinition.componentId, Integer.valueOf(i), Integer.valueOf(size)));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        String str = "Unable to validate that all required native components have been accessed:\n" + arrayList.toString();
        MMLog.m4068e(TAG, str);
        throw new MMException(str);
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public boolean canDestroyNow() {
        return !isLoading();
    }

    public void fireCallToActionClicked() {
        if (isDestroyed()) {
            return;
        }
        NativeAdapter.ComponentInfo componentInfo = getComponentInfo(ComponentName.CALL_TO_ACTION, 1);
        if (componentInfo == null) {
            MMLog.m4068e(TAG, "Unable to fire clicked, found component info is null");
        } else {
            reportClick(this.currentRequestState.getAdPlacementReporter(), componentInfo);
        }
    }

    public void fireImpression() {
        if (isDestroyed()) {
            return;
        }
        if (!isReady()) {
            Utils.logAndFireMMException(TAG, "Native ad is not in a loaded state, you must load before showing");
        } else if (this.usingManagedLayout) {
            MMLog.m4062w(TAG, "Impression firing is disabled when using a managed layout.");
        } else {
            validateRequiredComponentAccess();
            MMLog.m4066i(TAG, "All required components have been accessed, firing impression");
            reportImpression(this.currentRequestState.getAdPlacementReporter(), -1);
        }
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public Map<String, Object> getAdPlacementMetaDataMap() {
        NativeAdMetadata nativeAdMetadata = this.nativeAdMetadata;
        if (nativeAdMetadata == null) {
            return null;
        }
        return nativeAdMetadata.toMap(this);
    }

    public TextView getBody() {
        return getBody(1);
    }

    public TextView getBody(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (TextView) getComponentInstance(i, "body", "body");
        }
        MMLog.m4068e(TAG, "Unable to get body, ad not loaded");
        return null;
    }

    public Button getCallToActionButton() {
        return getCallToActionButton(1);
    }

    public Button getCallToActionButton(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (Button) getComponentInstance(i, COMPONENT_ID_CALL_TO_ACTION, "call to action");
        }
        MMLog.m4068e(TAG, "Unable to get call to action button, ad not loaded");
        return null;
    }

    public String getCallToActionUrl() {
        if (isDestroyed()) {
            return null;
        }
        NativeAdapter.ComponentInfo componentInfo = getComponentInfo(ComponentName.CALL_TO_ACTION, 1);
        if (componentInfo != null) {
            return componentInfo.clickUrl;
        }
        MMLog.m4068e(TAG, "Unable to get call to action url, found component info is not for a call to action component");
        return null;
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public Context getContext() {
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public CreativeInfo getCreativeInfo() {
        return this.currentNativeAdAdapter != null ? this.currentNativeAdAdapter.getCreativeInfo() : null;
    }

    public TextView getDisclaimer() {
        return getDisclaimer(1);
    }

    public TextView getDisclaimer(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (TextView) getComponentInstance(i, COMPONENT_ID_DISCLAIMER, COMPONENT_ID_DISCLAIMER);
        }
        MMLog.m4068e(TAG, "Unable to get disclaimer, ad not loaded");
        return null;
    }

    public ImageView getIconImage() {
        return getIconImage(1);
    }

    public ImageView getIconImage(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (ImageView) getComponentInstance(i, COMPONENT_ID_ICON_IMAGE, "icon image");
        }
        MMLog.m4068e(TAG, "Unable to get icon image, ad not loaded");
        return null;
    }

    public String getImageUrl(ComponentName componentName, int i) {
        if (isDestroyed()) {
            return null;
        }
        NativeAdapter.ComponentInfo componentInfo = getComponentInfo(componentName, i);
        if (componentInfo instanceof NativeAdapter.ImageComponentInfo) {
            return ((NativeAdapter.ImageComponentInfo) componentInfo).bitmapUrl;
        }
        MMLog.m4068e(TAG, "Unable to get image url, found component info is not for a image component");
        return null;
    }

    public ImageView getMainImage() {
        return getMainImage(1);
    }

    public ImageView getMainImage(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (ImageView) getComponentInstance(i, COMPONENT_ID_MAIN_IMAGE, "main image");
        }
        MMLog.m4068e(TAG, "Unable to get main image, ad not loaded");
        return null;
    }

    public String getNativeType() {
        if (isDestroyed()) {
            return null;
        }
        if (!isReady()) {
            MMLog.m4068e(TAG, "Unable to get native type, ad not loaded");
            return null;
        } else if (this.currentNativeAdAdapter != null) {
            return this.nativeTypeDefinition.typeName;
        } else {
            return null;
        }
    }

    public TextView getRating() {
        return getRating(1);
    }

    public TextView getRating(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (TextView) getComponentInstance(i, COMPONENT_ID_RATING, COMPONENT_ID_RATING);
        }
        MMLog.m4068e(TAG, "Unable to get rating, ad not loaded");
        return null;
    }

    public TextView getTitle() {
        return getTitle(1);
    }

    public TextView getTitle(int i) {
        if (isDestroyed()) {
            return null;
        }
        if (isReady()) {
            return (TextView) getComponentInstance(i, "title", "title");
        }
        MMLog.m4068e(TAG, "Unable to get title, ad not loaded");
        return null;
    }

    public boolean hasExpired() {
        if (isDestroyed()) {
            return false;
        }
        return this.placementState.equals("expired");
    }

    public View inflateLayout(Context context, int[] iArr) {
        String str;
        String str2;
        View view;
        if (isDestroyed()) {
            return null;
        }
        if (!ThreadUtils.isUiThread()) {
            str = TAG;
            str2 = "NativeAd.inflateLayout must be called on the UI thread.";
        } else if (context == null) {
            str = TAG;
            str2 = "Unable to inflate a layout because the provided Context is null.";
        } else if (iArr == null || iArr.length == 0) {
            str = TAG;
            str2 = "Unable to inflate a layout because the layoutIds are null or empty.";
        } else if (isReady()) {
            LayoutInflater from = LayoutInflater.from(context);
            int i = 0;
            while (true) {
                view = null;
                if (i >= iArr.length) {
                    break;
                }
                view = from.inflate(iArr[i], (ViewGroup) null);
                boolean z = true;
                if (i >= iArr.length - 1) {
                    z = false;
                }
                if (internalUpdateLayout(view, z, false)) {
                    break;
                }
                i++;
            }
            return view;
        } else {
            str = TAG;
            str2 = "Cannot inflate a layout. The NativeAd is not loaded.";
        }
        MMLog.m4068e(str, str2);
        return null;
    }

    public void invokeDefaultAction() {
        if (isDestroyed()) {
            return;
        }
        if (!isReady()) {
            MMLog.m4068e(TAG, "Unable to invoke default action, ad not loaded");
        } else if (this.currentNativeAdAdapter == null) {
        } else {
            reportClick(this.currentRequestState.getAdPlacementReporter(), null);
            invokeAction(PhoneConstants.APN_TYPE_DEFAULT, this.currentNativeAdAdapter.getDefaultAction());
        }
    }

    public boolean isReady() {
        if (isDestroyed()) {
            return false;
        }
        return this.placementState.equals(AdPlacement.STATE_LOADED);
    }

    public void load(Context context, NativeAdMetadata nativeAdMetadata) {
        if (isDestroyed()) {
            return;
        }
        String str = TAG;
        MMLog.m4066i(str, "Loading playlist for placement ID: " + this.placementId);
        if (context == null) {
            throw new MMException("Unable to load native, specified context cannot be null");
        }
        this.contextRef = new WeakReference<>(context);
        this.nativeAdMetadata = nativeAdMetadata;
        synchronized (this) {
            if (!this.placementState.equals(AdPlacement.STATE_IDLE) && !this.placementState.equals(AdPlacement.STATE_LOAD_FAILED) && !this.placementState.equals(AdPlacement.STATE_LOADED) && !this.placementState.equals("expired")) {
                return;
            }
            this.placementState = AdPlacement.STATE_LOADING_PLAY_LIST;
            this.playList = null;
            this.accessedComponentIndices.clear();
            this.loadedComponents.clear();
            this.usingManagedLayout = false;
            NativeAdMetadata nativeAdMetadata2 = nativeAdMetadata;
            if (nativeAdMetadata == null) {
                nativeAdMetadata2 = new NativeAdMetadata();
            }
            final AdPlacement.RequestState requestState = getRequestState();
            ThreadUtils.ScheduledRunnable scheduledRunnable = this.placementRequestTimeoutRunnable;
            if (scheduledRunnable != null) {
                scheduledRunnable.cancel();
            }
            int nativeTimeout = Handshake.getNativeTimeout();
            this.placementRequestTimeoutRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.NativeAd.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(NativeAd.TAG, "Play list load timed out");
                    }
                    NativeAd.this.onLoadFailed(requestState);
                }
            }, nativeTimeout);
            final String impressionGroup = nativeAdMetadata2.getImpressionGroup();
            PlayListServer.loadPlayList(nativeAdMetadata2.toMap(this), new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.NativeAd.2
                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoadFailed(Throwable th) {
                    synchronized (NativeAd.this) {
                        if (NativeAd.this.doPendingDestroy()) {
                            return;
                        }
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(NativeAd.TAG, "Play list load failed");
                        }
                        NativeAd.this.onLoadFailed(requestState);
                    }
                }

                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoaded(PlayList playList) {
                    synchronized (NativeAd.this) {
                        if (NativeAd.this.doPendingDestroy()) {
                            return;
                        }
                        if (!NativeAd.this.currentRequestState.compareRequest(requestState)) {
                            return;
                        }
                        NativeAd.this.placementState = AdPlacement.STATE_PLAY_LIST_LOADED;
                        NativeAd.this.playList = playList;
                        requestState.setAdPlacementReporter(AdPlacementReporter.getPlayListReporter(playList, impressionGroup));
                        NativeAd.this.currentRequestState = requestState;
                        NativeAd.this.impressionReported = false;
                        NativeAd.this.loadAdAdapter(requestState);
                    }
                }
            }, nativeTimeout);
        }
    }

    @Override // com.millennialmedia.internal.AdPlacement
    public void onDestroy() {
        this.nativeListener = null;
        this.incentivizedEventListener = null;
        this.nativeAdMetadata = null;
        stopRequestTimeoutTimers();
        stopExpirationTimer();
        ImpressionReporter impressionReporter = this.impressionReporter;
        if (impressionReporter != null) {
            impressionReporter.cancel();
            this.impressionReporter = null;
        }
        releaseAdapters();
        this.nativeTypeDefinition = null;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.10
            @Override // java.lang.Runnable
            public void run() {
                for (Map.Entry<String, List<Object>> entry : NativeAd.this.loadedComponents.entrySet()) {
                    List<Object> value = entry.getValue();
                    for (int i = 0; i < value.size(); i++) {
                        if (value.get(i) != null) {
                            ViewUtils.removeFromParent((View) value.get(i));
                        }
                    }
                }
                NativeAd.this.loadedComponents.clear();
            }
        });
        this.accessedComponentIndices.clear();
        List<String> list = this.requestedNativeTypes;
        if (list != null) {
            list.clear();
            this.requestedNativeTypes = null;
        }
        this.bodyInfoList = null;
        this.disclaimerInfoList = null;
        this.ratingInfoList = null;
        this.titleInfoList = null;
        this.callToActionInfoList = null;
        this.iconImageInfoList = null;
        this.mainImageInfoList = null;
        this.playList = null;
    }

    public void setListener(NativeListener nativeListener) {
        if (isDestroyed()) {
            return;
        }
        this.nativeListener = nativeListener;
    }

    public void updateLayout(View view) {
        if (isDestroyed()) {
            return;
        }
        if (!ThreadUtils.isUiThread()) {
            MMLog.m4068e(TAG, "NativeAd.updateLayout must be called on the UI thread.");
        } else if (view == null) {
            MMLog.m4068e(TAG, "Unable to updated; the provided layout was null.");
        } else if (!isReady()) {
            MMLog.m4068e(TAG, "Cannot update the layout. The NativeAd is not loaded.");
        } else {
            internalUpdateLayout(view, false, true);
        }
    }
}
