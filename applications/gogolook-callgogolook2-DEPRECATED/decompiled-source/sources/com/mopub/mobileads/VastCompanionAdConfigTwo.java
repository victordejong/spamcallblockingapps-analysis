package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
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
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� $2\u00020\u0001:\u0001$BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\rJ\u0014\u0010\u0018\u001a\u00020\u00192\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001aJ\u0014\u0010\u001b\u001a\u00020\u00192\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001aJ*\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010\b2\b\u0010!\u001a\u0004\u0018\u00010\bJ\u0016\u0010\"\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u0003R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0014¨\u0006%"}, m815d2 = {"Lcom/mopub/mobileads/VastCompanionAdConfigTwo;", "Ljava/io/Serializable;", "width", "", "height", "vastResource", "Lcom/mopub/mobileads/VastResourceTwo;", "clickThroughUrl", "", "clickTrackers", "", "Lcom/mopub/mobileads/VastTrackerTwo;", "creativeViewTrackers", "(IILcom/mopub/mobileads/VastResourceTwo;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getClickThroughUrl", "()Ljava/lang/String;", "getClickTrackers", "()Ljava/util/List;", "getCreativeViewTrackers", "getHeight", "()I", "getVastResource", "()Lcom/mopub/mobileads/VastResourceTwo;", "getWidth", "addClickTrackers", "", "", "addCreativeViewTrackers", "handleClick", "context", "Landroid/content/Context;", "requestCode", "webViewClickThroughUrl", "dspCreativeId", "handleImpression", "contentPlayHead", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfigTwo.class */
public final class VastCompanionAdConfigTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    @AbstractC10120c("width")
    @AbstractC10118a

    /* renamed from: a */
    public final int f8541a;
    @AbstractC10120c("height")
    @AbstractC10118a

    /* renamed from: b */
    public final int f8542b;
    @AbstractC10120c(Constants.VAST_RESOURCE)
    @AbstractC10118a

    /* renamed from: c */
    public final VastResourceTwo f8543c;
    @AbstractC10120c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC10118a

    /* renamed from: d */
    public final String f8544d;
    @AbstractC10120c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC10118a

    /* renamed from: e */
    public final List<VastTrackerTwo> f8545e;
    @AbstractC10120c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC10118a

    /* renamed from: f */
    public final List<VastTrackerTwo> f8546f;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/mobileads/VastCompanionAdConfigTwo$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfigTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public VastCompanionAdConfigTwo(int i, int i2, VastResourceTwo vastResourceTwo, String str, List<VastTrackerTwo> list, List<VastTrackerTwo> list2) {
        C15149k.m377b(vastResourceTwo, "vastResource");
        C15149k.m377b(list, "clickTrackers");
        C15149k.m377b(list2, "creativeViewTrackers");
        this.f8541a = i;
        this.f8542b = i2;
        this.f8543c = vastResourceTwo;
        this.f8544d = str;
        this.f8545e = list;
        this.f8546f = list2;
    }

    public final void addClickTrackers(Collection<? extends VastTrackerTwo> collection) {
        C15149k.m377b(collection, "clickTrackers");
        this.f8545e.addAll(collection);
    }

    public final void addCreativeViewTrackers(Collection<? extends VastTrackerTwo> collection) {
        C15149k.m377b(collection, "creativeViewTrackers");
        this.f8546f.addAll(collection);
    }

    public final String getClickThroughUrl() {
        return this.f8544d;
    }

    public final List<VastTrackerTwo> getClickTrackers() {
        return this.f8545e;
    }

    public final List<VastTrackerTwo> getCreativeViewTrackers() {
        return this.f8546f;
    }

    public final int getHeight() {
        return this.f8542b;
    }

    public final VastResourceTwo getVastResource() {
        return this.f8543c;
    }

    public final int getWidth() {
        return this.f8541a;
    }

    public final void handleClick(final Context context, final int i, String str, final String str2) {
        C15149k.m377b(context, "context");
        if (context instanceof Activity) {
            String correctClickThroughUrl = this.f8543c.getCorrectClickThroughUrl(this.f8544d, str);
            if (correctClickThroughUrl != null) {
                if (!(correctClickThroughUrl.length() > 0)) {
                    correctClickThroughUrl = null;
                }
                if (correctClickThroughUrl != null) {
                    new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1
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
                return;
            }
            return;
        }
        throw new IllegalArgumentException("context must be an activity".toString());
    }

    public final void handleImpression(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8546f, null, Integer.valueOf(i), null, context);
    }
}
