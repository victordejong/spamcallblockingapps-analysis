package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.AbstractC2359d;
import com.google.android.gms.ads.mediation.AbstractC2371o;
/* renamed from: com.google.android.gms.internal.ads.ln */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ln.class */
public final class C3306ln implements AbstractC2359d<AbstractC2371o, Object> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3286ku f16920a;

    /* renamed from: b */
    private final /* synthetic */ BinderC3304ll f16921b;

    public C3306ln(BinderC3304ll binderC3304ll, AbstractC3286ku abstractC3286ku) {
        this.f16921b = binderC3304ll;
        this.f16920a = abstractC3286ku;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2359d
    /* renamed from: a */
    public final void mo7437a(String str) {
        Object obj;
        try {
            obj = this.f16921b.f16911a;
            String canonicalName = obj.getClass().getCanonicalName();
            C3645yb.m6751b(new StringBuilder(String.valueOf(canonicalName).length() + 31 + String.valueOf(str).length()).append(canonicalName).append("failed to loaded mediation ad: ").append(str).toString());
            this.f16920a.mo7589a(0, str);
            this.f16920a.mo7590a(0);
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
