package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5784q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ba0.class */
final class ba0 implements AbstractC5771d<AbstractC5784q, ?> {

    /* renamed from: a */
    final /* synthetic */ o90 f20323a;

    /* renamed from: b */
    final /* synthetic */ y70 f20324b;

    /* renamed from: c */
    final /* synthetic */ ca0 f20325c;

    public ba0(ca0 ca0Var, o90 o90Var, y70 y70Var) {
        this.f20325c = ca0Var;
        this.f20323a = o90Var;
        this.f20324b = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        try {
            this.f20323a.mo12706x(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
