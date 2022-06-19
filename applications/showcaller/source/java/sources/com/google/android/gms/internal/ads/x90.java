package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5778k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x90.class */
final class x90 implements AbstractC5771d<AbstractC5778k, ?> {

    /* renamed from: a */
    final /* synthetic */ f90 f31937a;

    /* renamed from: b */
    final /* synthetic */ y70 f31938b;

    public x90(ca0 ca0Var, f90 f90Var, y70 y70Var) {
        this.f31937a = f90Var;
        this.f31938b = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        try {
            this.f31937a.mo8147x(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
