package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5791v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z90.class */
public final class z90 implements AbstractC5771d<AbstractC5791v, ?> {

    /* renamed from: a */
    final /* synthetic */ l90 f32847a;

    /* renamed from: b */
    final /* synthetic */ y70 f32848b;

    public z90(ca0 ca0Var, l90 l90Var, y70 y70Var) {
        this.f32847a = l90Var;
        this.f32848b = y70Var;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5771d
    /* renamed from: a */
    public final void mo8479a(C5592a c5592a) {
        try {
            this.f32847a.mo11752x(c5592a.m18307d());
        } catch (RemoteException e) {
            ei0.m15466d("", e);
        }
    }
}
