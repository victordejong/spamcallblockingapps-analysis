package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig.class */
public class VastCompanionAdConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 3;
    @SerializedName("width")
    @Expose

    /* renamed from: a */
    public final int f4798a;
    @SerializedName("height")
    @Expose

    /* renamed from: b */
    public final int f4799b;
    @SerializedName(Constants.VAST_RESOURCE)
    @Expose

    /* renamed from: c */
    public final VastResource f4800c;
    @SerializedName(Constants.VAST_URL_CLICKTHROUGH)
    @Expose

    /* renamed from: d */
    public final String f4801d;
    @SerializedName(Constants.VAST_TRACKERS_CLICK)
    @Expose

    /* renamed from: f */
    public final List<VastTracker> f4802f;
    @SerializedName(Constants.VAST_TRACKERS_IMPRESSION)
    @Expose

    /* renamed from: g */
    public final List<VastTracker> f4803g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }
    }

    public VastCompanionAdConfig(int i, int i2, VastResource vastResource, String str, List<VastTracker> list, List<VastTracker> list2) {
        qk1.m744c(vastResource, "vastResource");
        qk1.m744c(list, "clickTrackers");
        qk1.m744c(list2, "creativeViewTrackers");
        this.f4798a = i;
        this.f4799b = i2;
        this.f4800c = vastResource;
        this.f4801d = str;
        this.f4802f = list;
        this.f4803g = list2;
    }

    public final void addClickTrackers(Collection<? extends VastTracker> collection) {
        qk1.m744c(collection, "clickTrackers");
        this.f4802f.addAll(collection);
    }

    public final void addCreativeViewTrackers(Collection<? extends VastTracker> collection) {
        qk1.m744c(collection, "creativeViewTrackers");
        this.f4803g.addAll(collection);
    }

    public final String getClickThroughUrl() {
        return this.f4801d;
    }

    public final List<VastTracker> getClickTrackers() {
        return this.f4802f;
    }

    public final List<VastTracker> getCreativeViewTrackers() {
        return this.f4803g;
    }

    public final int getHeight() {
        return this.f4799b;
    }

    public final VastResource getVastResource() {
        return this.f4800c;
    }

    public final int getWidth() {
        return this.f4798a;
    }

    public void handleClick(final Context context, final int i, String str, final String str2) {
        qk1.m744c(context, "context");
        if (context instanceof Activity) {
            String correctClickThroughUrl = this.f4800c.getCorrectClickThroughUrl(this.f4801d, str);
            if (correctClickThroughUrl == null) {
                return;
            }
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl == null) {
                return;
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastCompanionAdConfig$handleClick$$inlined$let$lambda$1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(String str3, UrlAction urlAction) {
                    qk1.m744c(str3, ImagesContract.URL);
                    qk1.m744c(urlAction, "lastFailedUrlAction");
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(String str3, UrlAction urlAction) {
                    qk1.m744c(str3, ImagesContract.URL);
                    qk1.m744c(urlAction, "urlAction");
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str3);
                        String str4 = str2;
                        if (!(str4 == null || str4.length() == 0)) {
                            bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                        }
                        try {
                            ((Activity) context).startActivityForResult(Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle), i);
                        } catch (ActivityNotFoundException e) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        }
                    }
                }
            }).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
            return;
        }
        throw new IllegalArgumentException("context must be an activity".toString());
    }

    public final void handleImpression(Context context, int i) {
        qk1.m744c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4803g, null, Integer.valueOf(i), null, context);
    }
}
