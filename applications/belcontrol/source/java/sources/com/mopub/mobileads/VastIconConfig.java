package com.mopub.mobileads;

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
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastIconConfig.class */
public class VastIconConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    private static final long serialVersionUID = 1;
    @SerializedName(Constants.VAST_SKIP_OFFSET_MS)
    @Expose

    /* renamed from: a */
    public final int f4818a;
    @SerializedName("width")
    @Expose

    /* renamed from: b */
    public final int f4819b;
    @SerializedName("height")
    @Expose

    /* renamed from: c */
    public final int f4820c;
    @SerializedName(Constants.VAST_DURATION_MS)
    @Expose

    /* renamed from: d */
    public final Integer f4821d;
    @SerializedName(Constants.VAST_RESOURCE)
    @Expose

    /* renamed from: f */
    public final VastResource f4822f;
    @SerializedName(Constants.VAST_TRACKERS_CLICK)
    @Expose

    /* renamed from: g */
    public final List<VastTracker> f4823g;
    @SerializedName(Constants.VAST_URL_CLICKTHROUGH)
    @Expose

    /* renamed from: h */
    public final String f4824h;
    @SerializedName(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @Expose

    /* renamed from: j */
    public final List<VastTracker> f4825j;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastIconConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastIconConfig(int i, int i2, Integer num, Integer num2, VastResource vastResource, List<? extends VastTracker> list, String str, List<? extends VastTracker> list2) {
        qk1.m744c(vastResource, "vastResource");
        qk1.m744c(list, "clickTrackingUris");
        qk1.m744c(list2, "viewTrackingUris");
        this.f4819b = i;
        this.f4820c = i2;
        this.f4821d = num2;
        this.f4822f = vastResource;
        this.f4823g = list;
        this.f4824h = str;
        this.f4825j = list2;
        this.f4818a = num != null ? num.intValue() : 0;
    }

    public String getClickThroughUri() {
        return this.f4824h;
    }

    public List<VastTracker> getClickTrackingUris() {
        return this.f4823g;
    }

    public Integer getDurationMS() {
        return this.f4821d;
    }

    public int getHeight() {
        return this.f4820c;
    }

    public int getOffsetMS() {
        return this.f4818a;
    }

    public VastResource getVastResource() {
        return this.f4822f;
    }

    public List<VastTracker> getViewTrackingUris() {
        return this.f4825j;
    }

    public int getWidth() {
        return this.f4819b;
    }

    public void handleClick(final Context context, String str, final String str2) {
        qk1.m744c(context, "context");
        String correctClickThroughUrl = getVastResource().getCorrectClickThroughUrl(getClickThroughUri(), str);
        if (correctClickThroughUrl != null) {
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl == null) {
                return;
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastIconConfig$handleClick$$inlined$let$lambda$1
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
                            Intents.startActivity(context, Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle));
                        } catch (IntentNotResolvableException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                        }
                    }
                }
            }).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    public void handleImpression(Context context, int i, String str) {
        qk1.m744c(context, "context");
        qk1.m744c(str, "assetUri");
        TrackingRequest.makeVastTrackingHttpRequest(getViewTrackingUris(), null, Integer.valueOf(i), str, context);
    }
}
