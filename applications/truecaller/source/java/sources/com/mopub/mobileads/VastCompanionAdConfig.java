package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.Constants;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.mobileads.VastCompanionAdConfig$handleClick$;
import com.mopub.mobileads.VastResource;
import com.mopub.network.TrackingRequest;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0017\u0018�� C2\u00020\u0001:\u0001CBO\u0012\u0006\u00104\u001a\u00020\f\u0012\u0006\u0010=\u001a\u00020\f\u0012\u0006\u0010:\u001a\u000205\u0012\b\u0010@\u001a\u0004\u0018\u00010\u0018\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030*\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030*\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\bA\u0010BJ\u001b\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\t\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\t\u0010\u0007J\u001d\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J3\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0096\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\fH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0018H\u0016¢\u0006\u0004\b$\u0010%R\u001e\u0010)\u001a\u0004\u0018\u00010\u00188\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010%R\"\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030*8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\"\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030*8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b/\u0010,\u001a\u0004\b0\u0010.R\u001c\u00104\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u0010#R\u001c\u0010:\u001a\u0002058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001c\u0010=\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b;\u00102\u001a\u0004\b<\u0010#R\u001e\u0010@\u001a\u0004\u0018\u00010\u00188\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b>\u0010'\u001a\u0004\b?\u0010%¨\u0006D"}, d2 = {"Lcom/mopub/mobileads/VastCompanionAdConfig;", "Ljava/io/Serializable;", "", "Lcom/mopub/mobileads/VastTracker;", "clickTrackers", "Ls1/s;", "addClickTrackers", "(Ljava/util/Collection;)V", "creativeViewTrackers", "addCreativeViewTrackers", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "", "contentPlayHead", "handleImpression", "(Landroid/content/Context;I)V", "", "formatScore", "()D", "containerWidth", "containerHeight", "calculateScore", "(II)D", "requestCode", "", "webViewClickThroughUrl", "dspCreativeId", "handleClick", "(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "g", "Ljava/lang/String;", "getCustomCtaText", "customCtaText", "", "e", "Ljava/util/List;", "getClickTrackers", "()Ljava/util/List;", "f", "getCreativeViewTrackers", "a", "I", "getWidth", "width", "Lcom/mopub/mobileads/VastResource;", AbstractC2405c.f7629a, "Lcom/mopub/mobileads/VastResource;", "getVastResource", "()Lcom/mopub/mobileads/VastResource;", "vastResource", C22021b.f61237c, "getHeight", "height", "d", "getClickThroughUrl", "clickThroughUrl", "<init>", "(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig.class */
public class VastCompanionAdConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @b("width")

    /* renamed from: a */
    private final int f8849a;
    @b("height")

    /* renamed from: b */
    private final int f8850b;
    @b(Constants.VAST_RESOURCE)

    /* renamed from: c */
    private final VastResource f8851c;
    @b(Constants.VAST_URL_CLICKTHROUGH)

    /* renamed from: d */
    private final String f8852d;
    @b(Constants.VAST_TRACKERS_CLICK)

    /* renamed from: e */
    private final List<VastTracker> f8853e;
    @b(Constants.VAST_TRACKERS_IMPRESSION)

    /* renamed from: f */
    private final List<VastTracker> f8854f;
    @b(Constants.VAST_CUSTOM_TEXT_CTA)

    /* renamed from: g */
    private final String f8855g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;", "", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            VastResource.Type.values();
            $EnumSwitchMapping$0 = r0;
            int[] iArr = {2, 1, 3, 4};
        }
    }

    public VastCompanionAdConfig(int i, int i2, VastResource vastResource, String str, List<VastTracker> list, List<VastTracker> list2, String str2) {
        l.f(vastResource, "vastResource");
        l.f(list, "clickTrackers");
        l.f(list2, "creativeViewTrackers");
        this.f8849a = i;
        this.f8850b = i2;
        this.f8851c = vastResource;
        this.f8852d = str;
        this.f8853e = list;
        this.f8854f = list2;
        this.f8855g = str2;
    }

    public final void addClickTrackers(Collection<? extends VastTracker> collection) {
        l.f(collection, "clickTrackers");
        this.f8853e.addAll(collection);
    }

    public final void addCreativeViewTrackers(Collection<? extends VastTracker> collection) {
        l.f(collection, "creativeViewTrackers");
        this.f8854f.addAll(collection);
    }

    public double calculateScore(int i, int i2) {
        int i3;
        if (i2 == 0 || (i3 = this.f8850b) == 0) {
            return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        }
        double d = i;
        return formatScore() / (1 + (Math.abs((d - this.f8849a) / d) + Math.abs((d / i2) - (this.f8849a / i3))));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastCompanionAdConfig)) {
            return false;
        }
        VastCompanionAdConfig vastCompanionAdConfig = (VastCompanionAdConfig) obj;
        return this.f8849a == vastCompanionAdConfig.f8849a && this.f8850b == vastCompanionAdConfig.f8850b && !(l.a(this.f8851c, vastCompanionAdConfig.f8851c) ^ true) && !(l.a(this.f8852d, vastCompanionAdConfig.f8852d) ^ true) && !(l.a(this.f8853e, vastCompanionAdConfig.f8853e) ^ true) && !(l.a(this.f8854f, vastCompanionAdConfig.f8854f) ^ true) && !(l.a(this.f8855g, vastCompanionAdConfig.f8855g) ^ true);
    }

    public final double formatScore() {
        int ordinal = this.f8851c.getType().ordinal();
        char c = 0;
        if (ordinal == 0) {
            c = 13107;
        } else if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    throw new i();
                }
            }
            c = 0;
        } else {
            if (!VastResource.CreativeType.JAVASCRIPT.equals(this.f8851c.getCreativeType())) {
                if (VastResource.CreativeType.IMAGE.equals(this.f8851c.getCreativeType())) {
                    c = 39322;
                }
            }
            c = 0;
        }
        return c;
    }

    public final String getClickThroughUrl() {
        return this.f8852d;
    }

    public final List<VastTracker> getClickTrackers() {
        return this.f8853e;
    }

    public final List<VastTracker> getCreativeViewTrackers() {
        return this.f8854f;
    }

    public final String getCustomCtaText() {
        return this.f8855g;
    }

    public final int getHeight() {
        return this.f8850b;
    }

    public final VastResource getVastResource() {
        return this.f8851c;
    }

    public final int getWidth() {
        return this.f8849a;
    }

    public void handleClick(Context context, int i, String str, String str2) {
        l.f(context, AnalyticsConstants.CONTEXT);
        if (context instanceof Activity) {
            String correctClickThroughUrl = this.f8851c.getCorrectClickThroughUrl(this.f8852d, str);
            if (correctClickThroughUrl == null) {
                return;
            }
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl == null) {
                return;
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new VastCompanionAdConfig$handleClick$.inlined.let.lambda.1(str2, context, i)).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
            return;
        }
        throw new IllegalArgumentException("context must be an activity".toString());
    }

    public final void handleImpression(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8854f, (VastErrorCode) null, Integer.valueOf(i), (String) null, context);
    }

    public int hashCode() {
        int i = this.f8849a;
        int i2 = this.f8850b;
        int hashCode = this.f8851c.hashCode();
        String str = this.f8852d;
        int i3 = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.f8853e.hashCode();
        int hashCode4 = this.f8854f.hashCode();
        String str2 = this.f8855g;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return ((hashCode4 + ((hashCode3 + ((((hashCode + (((i * 31) + i2) * 31)) * 31) + hashCode2) * 31)) * 31)) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VastCompanionAdConfig(width=");
        m8728C.append(this.f8849a);
        m8728C.append(", height=");
        m8728C.append(this.f8850b);
        m8728C.append(", vastResource=");
        m8728C.append(this.f8851c);
        m8728C.append(", ");
        m8728C.append("clickThroughUrl=");
        m8728C.append(this.f8852d);
        m8728C.append(", clickTrackers=");
        m8728C.append(this.f8853e);
        m8728C.append(", ");
        m8728C.append("creativeViewTrackers=");
        m8728C.append(this.f8854f);
        m8728C.append(", customCtaText=");
        return C22128a.m8630e(m8728C, this.f8855g, ')');
    }
}
