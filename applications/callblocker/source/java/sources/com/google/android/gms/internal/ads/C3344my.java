package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.AbstractC2359d;
import com.google.android.gms.ads.mediation.C2381w;
/* renamed from: com.google.android.gms.internal.ads.my */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/my.class */
final class C3344my implements AbstractC2359d<C2381w, Object> {

    /* renamed from: a */
    private final /* synthetic */ AbstractC3327mh f16970a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC3286ku f16971b;

    public C3344my(BinderC3339mt binderC3339mt, AbstractC3327mh abstractC3327mh, AbstractC3286ku abstractC3286ku) {
        this.f16970a = abstractC3327mh;
        this.f16971b = abstractC3286ku;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2359d
    /* renamed from: a */
    public final void mo7437a(String str) {
        try {
            this.f16970a.mo7463a(str);
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
    }
}
