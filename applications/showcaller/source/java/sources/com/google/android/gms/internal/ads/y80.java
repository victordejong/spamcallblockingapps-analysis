package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y80.class */
final class y80 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AdRequest$ErrorCode f32437d;

    /* renamed from: e */
    final /* synthetic */ z80 f32438e;

    public y80(z80 z80Var, AdRequest$ErrorCode adRequest$ErrorCode) {
        this.f32438e = z80Var;
        this.f32437d = adRequest$ErrorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y70 y70Var;
        try {
            y70Var = this.f32438e.f32840a;
            y70Var.mo8920Z(a90.m16670a(this.f32437d));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }
}
