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
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018�� '2\u00020\u0001:\u0001'BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\u000fJ$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\r2\b\u0010#\u001a\u0004\u0018\u00010\rH\u0016J \u0010$\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\rH\u0016R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0005\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0018¨\u0006("}, m815d2 = {"Lcom/mopub/mobileads/VastIconConfigTwo;", "Ljava/io/Serializable;", "width", "", "height", "offsetMS", "durationMS", "vastResource", "Lcom/mopub/mobileads/VastResourceTwo;", "clickTrackingUris", "", "Lcom/mopub/mobileads/VastTrackerTwo;", "clickThroughUri", "", "viewTrackingUris", "(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResourceTwo;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "getClickThroughUri", "()Ljava/lang/String;", "getClickTrackingUris", "()Ljava/util/List;", "getDurationMS", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHeight", "()I", "getOffsetMS", "getVastResource", "()Lcom/mopub/mobileads/VastResourceTwo;", "getViewTrackingUris", "getWidth", "handleClick", "", "context", "Landroid/content/Context;", "webViewClickThroughUri", "dspCreativeId", "handleImpression", "contentPlayHead", "assetUri", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconConfigTwo.class */
public class VastIconConfigTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    @AbstractC10120c(Constants.VAST_SKIP_OFFSET_MS)
    @AbstractC10118a

    /* renamed from: a */
    public final int f8563a;
    @AbstractC10120c("width")
    @AbstractC10118a

    /* renamed from: b */
    public final int f8564b;
    @AbstractC10120c("height")
    @AbstractC10118a

    /* renamed from: c */
    public final int f8565c;
    @AbstractC10120c(Constants.VAST_DURATION_MS)
    @AbstractC10118a

    /* renamed from: d */
    public final Integer f8566d;
    @AbstractC10120c(Constants.VAST_RESOURCE)
    @AbstractC10118a

    /* renamed from: e */
    public final VastResourceTwo f8567e;
    @AbstractC10120c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC10118a

    /* renamed from: f */
    public final List<VastTrackerTwo> f8568f;
    @AbstractC10120c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC10118a

    /* renamed from: g */
    public final String f8569g;
    @AbstractC10120c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC10118a

    /* renamed from: h */
    public final List<VastTrackerTwo> f8570h;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/mobileads/VastIconConfigTwo$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconConfigTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastIconConfigTwo(int i, int i2, Integer num, Integer num2, VastResourceTwo vastResourceTwo, List<? extends VastTrackerTwo> list, String str, List<? extends VastTrackerTwo> list2) {
        C15149k.m377b(vastResourceTwo, "vastResource");
        C15149k.m377b(list, "clickTrackingUris");
        C15149k.m377b(list2, "viewTrackingUris");
        this.f8564b = i;
        this.f8565c = i2;
        this.f8566d = num2;
        this.f8567e = vastResourceTwo;
        this.f8568f = list;
        this.f8569g = str;
        this.f8570h = list2;
        this.f8563a = num != null ? num.intValue() : 0;
    }

    public String getClickThroughUri() {
        return this.f8569g;
    }

    public List<VastTrackerTwo> getClickTrackingUris() {
        return this.f8568f;
    }

    public Integer getDurationMS() {
        return this.f8566d;
    }

    public int getHeight() {
        return this.f8565c;
    }

    public int getOffsetMS() {
        return this.f8563a;
    }

    public VastResourceTwo getVastResource() {
        return this.f8567e;
    }

    public List<VastTrackerTwo> getViewTrackingUris() {
        return this.f8570h;
    }

    public int getWidth() {
        return this.f8564b;
    }

    public void handleClick(final Context context, String str, final String str2) {
        C15149k.m377b(context, "context");
        String correctClickThroughUrl = getVastResource().getCorrectClickThroughUrl(getClickThroughUri(), str);
        if (correctClickThroughUrl != null) {
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl != null) {
                new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastIconConfigTwo$handleClick$$inlined$let$lambda$1
                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public void urlHandlingFailed(String str3, UrlAction urlAction) {
                        C15149k.m377b(str3, "url");
                        C15149k.m377b(urlAction, "lastFailedUrlAction");
                    }

                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public void urlHandlingSucceeded(String str3, UrlAction urlAction) {
                        C15149k.m377b(str3, "url");
                        C15149k.m377b(urlAction, "urlAction");
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
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "assetUri");
        TrackingRequest.makeVastTrackingTwoHttpRequest(getViewTrackingUris(), null, Integer.valueOf(i), str, context);
    }
}
