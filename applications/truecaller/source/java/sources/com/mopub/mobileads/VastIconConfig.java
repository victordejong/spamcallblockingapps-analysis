package com.mopub.mobileads;

import android.content.Context;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.Constants;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.VastIconConfig$handleClick$;
import com.mopub.network.TrackingRequest;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0017\u0018�� 62\u00020\u0001:\u00016BY\u0012\u0006\u0010+\u001a\u00020\u0004\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00020#0\"\u0012\b\u00100\u001a\u0004\u0018\u00010\u0006\u0012\f\u00103\u001a\b\u0012\u0004\u0012\u00020#0\"¢\u0006\u0004\b4\u00105J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0018\u001a\u00020\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001b\u001a\u00020\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0015\u001a\u0004\b\u001a\u0010\u0017R\u001c\u0010!\u001a\u00020\u001c8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010(\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001c\u0010+\u001a\u00020\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b)\u0010\u0015\u001a\u0004\b*\u0010\u0017R\u001e\u00100\u001a\u0004\u0018\u00010\u00068\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\"\u00103\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b1\u0010%\u001a\u0004\b2\u0010'¨\u00067"}, d2 = {"Lcom/mopub/mobileads/VastIconConfig;", "Ljava/io/Serializable;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "", "contentPlayHead", "", "assetUri", "Ls1/s;", "handleImpression", "(Landroid/content/Context;ILjava/lang/String;)V", "webViewClickThroughUri", "dspCreativeId", "handleClick", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "d", "Ljava/lang/Integer;", "getDurationMS", "()Ljava/lang/Integer;", "durationMS", AbstractC2405c.f7629a, "I", "getHeight", "()I", "height", "a", "getOffsetMS", "offsetMS", "Lcom/mopub/mobileads/VastResource;", "e", "Lcom/mopub/mobileads/VastResource;", "getVastResource", "()Lcom/mopub/mobileads/VastResource;", "vastResource", "", "Lcom/mopub/mobileads/VastTracker;", "f", "Ljava/util/List;", "getClickTrackingUris", "()Ljava/util/List;", "clickTrackingUris", C22021b.f61237c, "getWidth", "width", "g", "Ljava/lang/String;", "getClickThroughUri", "()Ljava/lang/String;", "clickThroughUri", "h", "getViewTrackingUris", "viewTrackingUris", "<init>", "(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastIconConfig.class */
public class VastIconConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @b(Constants.VAST_SKIP_OFFSET_MS)

    /* renamed from: a */
    private final int f8865a;
    @b("width")

    /* renamed from: b */
    private final int f8866b;
    @b("height")

    /* renamed from: c */
    private final int f8867c;
    @b(Constants.VAST_DURATION_MS)

    /* renamed from: d */
    private final Integer f8868d;
    @b(Constants.VAST_RESOURCE)

    /* renamed from: e */
    private final VastResource f8869e;
    @b(Constants.VAST_TRACKERS_CLICK)

    /* renamed from: f */
    private final List<VastTracker> f8870f;
    @b(Constants.VAST_URL_CLICKTHROUGH)

    /* renamed from: g */
    private final String f8871g;
    @b(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)

    /* renamed from: h */
    private final List<VastTracker> f8872h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/mopub/mobileads/VastIconConfig$Companion;", "", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastIconConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastIconConfig(int i, int i2, Integer num, Integer num2, VastResource vastResource, List<? extends VastTracker> list, String str, List<? extends VastTracker> list2) {
        l.f(vastResource, "vastResource");
        l.f(list, "clickTrackingUris");
        l.f(list2, "viewTrackingUris");
        this.f8866b = i;
        this.f8867c = i2;
        this.f8868d = num2;
        this.f8869e = vastResource;
        this.f8870f = list;
        this.f8871g = str;
        this.f8872h = list2;
        this.f8865a = num != null ? num.intValue() : 0;
    }

    public String getClickThroughUri() {
        return this.f8871g;
    }

    public List<VastTracker> getClickTrackingUris() {
        return this.f8870f;
    }

    public Integer getDurationMS() {
        return this.f8868d;
    }

    public int getHeight() {
        return this.f8867c;
    }

    public int getOffsetMS() {
        return this.f8865a;
    }

    public VastResource getVastResource() {
        return this.f8869e;
    }

    public List<VastTracker> getViewTrackingUris() {
        return this.f8872h;
    }

    public int getWidth() {
        return this.f8866b;
    }

    public void handleClick(Context context, String str, String str2) {
        l.f(context, AnalyticsConstants.CONTEXT);
        String correctClickThroughUrl = getVastResource().getCorrectClickThroughUrl(getClickThroughUri(), str);
        if (correctClickThroughUrl != null) {
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl == null) {
                return;
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new VastIconConfig$handleClick$.inlined.let.lambda.1(str2, context)).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    public void handleImpression(Context context, int i, String str) {
        l.f(context, AnalyticsConstants.CONTEXT);
        l.f(str, "assetUri");
        TrackingRequest.makeVastTrackingHttpRequest(getViewTrackingUris(), (VastErrorCode) null, Integer.valueOf(i), str, context);
    }
}
