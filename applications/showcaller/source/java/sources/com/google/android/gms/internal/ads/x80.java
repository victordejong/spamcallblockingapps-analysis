package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest$ErrorCode;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x80.class */
final class x80 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AdRequest$ErrorCode f31928d;

    /* renamed from: e */
    final /* synthetic */ z80 f31929e;

    public x80(z80 z80Var, AdRequest$ErrorCode adRequest$ErrorCode) {
        this.f31929e = z80Var;
        this.f31928d = adRequest$ErrorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y70 y70Var;
        try {
            y70Var = this.f31929e.f32840a;
            y70Var.mo8920Z(a90.m16670a(this.f31928d));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }
}
