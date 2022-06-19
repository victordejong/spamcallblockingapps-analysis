package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5774g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w90.class */
final class w90 implements AbstractC5771d<AbstractC5774g, ?> {

    /* renamed from: a */
    final /* synthetic */ f90 f31472a;

    /* renamed from: b */
    final /* synthetic */ y70 f31473b;

    public w90(ca0 ca0Var, f90 f90Var, y70 y70Var) {
        this.f31472a = f90Var;
        this.f31473b = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        try {
            this.f31472a.mo8147x(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
