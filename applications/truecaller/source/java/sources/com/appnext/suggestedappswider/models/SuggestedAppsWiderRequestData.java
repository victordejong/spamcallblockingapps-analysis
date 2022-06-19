package com.appnext.suggestedappswider.models;

import android.content.Context;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.appnext.nativeads.NativeAdObject;
import com.appnext.suggestedappswider.p023b.C0683b;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.j;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016¨\u0006\u0013"}, d2 = {"Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData;", "Lcom/appnext/core/Ad;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "placementID", "", "(Landroid/content/Context;Ljava/lang/String;)V", "getAUID", "getECPM", "", "onECPMLoaded", "Lcom/appnext/core/callbacks/OnECPMLoaded;", "getTID", "getVID", "isAdLoaded", "", "loadAd", "showAd", "Companion", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData.class */
public final class SuggestedAppsWiderRequestData extends AbstractC0501Ad {
    public static final String AUID = "1200";
    public static final C0689a Companion = new C0689a(null);

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$Companion;", "", "()V", "AUID", "", "TID", "VID", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.appnext.suggestedappswider.models.SuggestedAppsWiderRequestData$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/models/SuggestedAppsWiderRequestData$a.class */
    public static final class C0689a {
        private C0689a() {
        }

        public /* synthetic */ C0689a(f fVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestedAppsWiderRequestData(Context context, String str) {
        super(context, str);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "placementID");
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final String getAUID() {
        return AUID;
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final void getECPM(OnECPMLoaded onECPMLoaded) {
        throw new j("An operation is not implemented: Not yet implemented");
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final String getTID() {
        return NativeAdObject.TID;
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final String getVID() {
        return NativeAdObject.VID;
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final boolean isAdLoaded() {
        return C0683b.f2129ho.m42112br().mo42117a(this);
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final void loadAd() {
        throw new j("An operation is not implemented: Not yet implemented");
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public final void showAd() {
        throw new j("An operation is not implemented: Not yet implemented");
    }
}
