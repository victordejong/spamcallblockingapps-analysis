package com.mopub.mobileads;

import android.content.Context;
import android.os.Bundle;
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
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconConfigTwo.class */
public class VastIconConfigTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 1;
    @AbstractC6134c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC6132a
    public final String clickThroughUri;
    @AbstractC6134c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC6132a
    public final List<VastTrackerTwo> clickTrackingUris;
    @AbstractC6134c(Constants.VAST_DURATION_MS)
    @AbstractC6132a
    public final Integer durationMS;
    @AbstractC6134c("height")
    @AbstractC6132a
    public final int height;
    @AbstractC6134c(Constants.VAST_SKIP_OFFSET_MS)
    @AbstractC6132a
    public final int offsetMS;
    @AbstractC6134c(Constants.VAST_RESOURCE)
    @AbstractC6132a
    public final VastResourceTwo vastResource;
    @AbstractC6134c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC6132a
    public final List<VastTrackerTwo> viewTrackingUris;
    @AbstractC6134c("width")
    @AbstractC6132a
    public final int width;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconConfigTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastIconConfigTwo(int i, int i2, Integer num, Integer num2, VastResourceTwo vastResourceTwo, List<? extends VastTrackerTwo> list, String str, List<? extends VastTrackerTwo> list2) {
        C10059q.m1637b(vastResourceTwo, "vastResource");
        C10059q.m1637b(list, "clickTrackingUris");
        C10059q.m1637b(list2, "viewTrackingUris");
        this.width = i;
        this.height = i2;
        this.durationMS = num2;
        this.vastResource = vastResourceTwo;
        this.clickTrackingUris = list;
        this.clickThroughUri = str;
        this.viewTrackingUris = list2;
        this.offsetMS = num != null ? num.intValue() : 0;
    }

    public String getClickThroughUri() {
        return this.clickThroughUri;
    }

    public List<VastTrackerTwo> getClickTrackingUris() {
        return this.clickTrackingUris;
    }

    public Integer getDurationMS() {
        return this.durationMS;
    }

    public int getHeight() {
        return this.height;
    }

    public int getOffsetMS() {
        return this.offsetMS;
    }

    public VastResourceTwo getVastResource() {
        return this.vastResource;
    }

    public List<VastTrackerTwo> getViewTrackingUris() {
        return this.viewTrackingUris;
    }

    public int getWidth() {
        return this.width;
    }

    public void handleClick(final Context context, String str, final String str2) {
        C10059q.m1637b(context, "context");
        String correctClickThroughUrl = getVastResource().getCorrectClickThroughUrl(getClickThroughUri(), str);
        if (correctClickThroughUrl != null) {
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl != null) {
                new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastIconConfigTwo$handleClick$$inlined$let$lambda$1
                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public void urlHandlingFailed(String str3, UrlAction urlAction) {
                        C10059q.m1637b(str3, "url");
                        C10059q.m1637b(urlAction, "lastFailedUrlAction");
                    }

                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public void urlHandlingSucceeded(String str3, UrlAction urlAction) {
                        C10059q.m1637b(str3, "url");
                        C10059q.m1637b(urlAction, "urlAction");
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
    }

    public void handleImpression(Context context, int i, String str) {
        C10059q.m1637b(context, "context");
        C10059q.m1637b(str, "assetUri");
        TrackingRequest.makeVastTrackingTwoHttpRequest(getViewTrackingUris(), null, Integer.valueOf(i), str, context);
    }
}
