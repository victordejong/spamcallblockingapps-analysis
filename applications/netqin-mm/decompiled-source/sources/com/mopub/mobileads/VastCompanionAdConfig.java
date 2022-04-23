package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig.class */
public class VastCompanionAdConfig implements Serializable {
    public static final long serialVersionUID = 0;
    @AbstractC6134c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC6132a
    public final String mClickThroughUrl;
    @AbstractC6134c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC6132a
    public final List<VastTracker> mClickTrackers;
    @AbstractC6134c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC6132a
    public final List<VastTracker> mCreativeViewTrackers;
    @AbstractC6134c("height")
    @AbstractC6132a
    public final int mHeight;
    @AbstractC6134c(Constants.VAST_RESOURCE)
    @AbstractC6132a
    public final VastResource mVastResource;
    @AbstractC6134c("width")
    @AbstractC6132a
    public final int mWidth;

    /* renamed from: com.mopub.mobileads.VastCompanionAdConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$a.class */
    public class C8814a implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ String f34232a;

        /* renamed from: b */
        public final /* synthetic */ Context f34233b;

        /* renamed from: c */
        public final /* synthetic */ int f34234c;

        public C8814a(VastCompanionAdConfig vastCompanionAdConfig, String str, Context context, int i) {
            this.f34232a = str;
            this.f34233b = context;
            this.f34234c = i;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                Bundle bundle = new Bundle();
                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                if (!TextUtils.isEmpty(this.f34232a)) {
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, this.f34232a);
                }
                try {
                    ((Activity) this.f34233b).startActivityForResult(Intents.getStartActivityIntent(this.f34233b, MoPubBrowser.class, bundle), this.f34234c);
                } catch (ActivityNotFoundException e) {
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                }
            }
        }
    }

    public VastCompanionAdConfig(int i, int i2, VastResource vastResource, String str, List<VastTracker> list, List<VastTracker> list2) {
        Preconditions.checkNotNull(vastResource);
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        Preconditions.checkNotNull(list2, "creativeViewTrackers cannot be null");
        this.mWidth = i;
        this.mHeight = i2;
        this.mVastResource = vastResource;
        this.mClickThroughUrl = str;
        this.mClickTrackers = list;
        this.mCreativeViewTrackers = list2;
    }

    public void addClickTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        this.mClickTrackers.addAll(list);
    }

    public void addCreativeViewTrackers(List<VastTracker> list) {
        Preconditions.checkNotNull(list, "creativeViewTrackers cannot be null");
        this.mCreativeViewTrackers.addAll(list);
    }

    public String getClickThroughUrl() {
        return this.mClickThroughUrl;
    }

    public List<VastTracker> getClickTrackers() {
        return this.mClickTrackers;
    }

    public List<VastTracker> getCreativeViewTrackers() {
        return this.mCreativeViewTrackers;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public VastResource getVastResource() {
        return this.mVastResource;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void handleClick(Context context, int i, String str, String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkArgument(context instanceof Activity, "context must be an activity");
        String correctClickThroughUrl = this.mVastResource.getCorrectClickThroughUrl(this.mClickThroughUrl, str);
        if (!TextUtils.isEmpty(correctClickThroughUrl)) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C8814a(this, str2, context, i)).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    public void handleImpression(Context context, int i) {
        Preconditions.checkNotNull(context);
        TrackingRequest.makeVastTrackingHttpRequest(this.mCreativeViewTrackers, null, Integer.valueOf(i), null, context);
    }
}
