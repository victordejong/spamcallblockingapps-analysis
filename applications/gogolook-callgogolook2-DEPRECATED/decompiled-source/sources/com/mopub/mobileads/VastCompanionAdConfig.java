package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p081h.p430l.p433b.C10715o;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig.class */
public class VastCompanionAdConfig implements Serializable {
    @AbstractC10120c("width")
    @AbstractC10118a

    /* renamed from: a */
    public final int f8532a;
    @AbstractC10120c("height")
    @AbstractC10118a

    /* renamed from: b */
    public final int f8533b;
    @NonNull
    @AbstractC10120c(Constants.VAST_RESOURCE)
    @AbstractC10118a

    /* renamed from: c */
    public final C10715o f8534c;
    @Nullable
    @AbstractC10120c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC10118a

    /* renamed from: d */
    public final String f8535d;
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC10118a

    /* renamed from: e */
    public final List<VastTracker> f8536e;
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC10118a

    /* renamed from: f */
    public final List<VastTracker> f8537f;

    /* renamed from: com.mopub.mobileads.VastCompanionAdConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$a.class */
    public class C3845a implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ String f8538a;

        /* renamed from: b */
        public final /* synthetic */ Context f8539b;

        /* renamed from: c */
        public final /* synthetic */ int f8540c;

        public C3845a(VastCompanionAdConfig vastCompanionAdConfig, String str, Context context, int i) {
            this.f8538a = str;
            this.f8539b = context;
            this.f8540c = i;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                Bundle bundle = new Bundle();
                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                if (!TextUtils.isEmpty(this.f8538a)) {
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, this.f8538a);
                }
                try {
                    ((Activity) this.f8539b).startActivityForResult(Intents.getStartActivityIntent(this.f8539b, MoPubBrowser.class, bundle), this.f8540c);
                } catch (ActivityNotFoundException e) {
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                }
            }
        }
    }

    public VastCompanionAdConfig(int i, int i2, @NonNull C10715o oVar, @Nullable String str, @NonNull List<VastTracker> list, @NonNull List<VastTracker> list2) {
        Preconditions.checkNotNull(oVar);
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        Preconditions.checkNotNull(list2, "creativeViewTrackers cannot be null");
        this.f8532a = i;
        this.f8533b = i2;
        this.f8534c = oVar;
        this.f8535d = str;
        this.f8536e = list;
        this.f8537f = list2;
    }

    /* renamed from: a */
    public void m30496a(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8537f, null, Integer.valueOf(i), null, context);
    }

    /* renamed from: a */
    public void m30495a(@NonNull Context context, int i, @Nullable String str, @Nullable String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkArgument(context instanceof Activity, "context must be an activity");
        String correctClickThroughUrl = this.f8534c.getCorrectClickThroughUrl(this.f8535d, str);
        if (!TextUtils.isEmpty(correctClickThroughUrl)) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C3845a(this, str2, context, i)).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    public void addClickTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        this.f8536e.addAll(list);
    }

    public void addCreativeViewTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "creativeViewTrackers cannot be null");
        this.f8537f.addAll(list);
    }

    @Nullable
    public String getClickThroughUrl() {
        return this.f8535d;
    }

    @NonNull
    public List<VastTracker> getClickTrackers() {
        return this.f8536e;
    }

    @NonNull
    public List<VastTracker> getCreativeViewTrackers() {
        return this.f8537f;
    }

    public int getHeight() {
        return this.f8533b;
    }

    @NonNull
    public C10715o getVastResource() {
        return this.f8534c;
    }

    public int getWidth() {
        return this.f8532a;
    }
}
