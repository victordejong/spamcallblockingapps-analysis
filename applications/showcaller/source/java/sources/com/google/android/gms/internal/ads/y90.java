package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5779l;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y90.class */
final class y90 implements AbstractC5771d<AbstractC5779l, ?> {

    /* renamed from: a */
    final /* synthetic */ i90 f32442a;

    /* renamed from: b */
    final /* synthetic */ y70 f32443b;

    /* renamed from: c */
    final /* synthetic */ ca0 f32444c;

    public y90(ca0 ca0Var, i90 i90Var, y70 y70Var) {
        this.f32444c = ca0Var;
        this.f32442a = i90Var;
        this.f32443b = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        try {
            this.f32442a.mo14463x(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
