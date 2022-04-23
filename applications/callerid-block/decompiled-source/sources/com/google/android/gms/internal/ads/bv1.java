package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bv1.class */
public final class bv1 {

    /* renamed from: a */
    private final byte[] f6208a;

    /* renamed from: b */
    private int f6209b;

    /* renamed from: c */
    private int f6210c;

    /* renamed from: d */
    final /* synthetic */ dv1 f6211d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bv1(dv1 dv1Var, byte[] bArr, av1 av1Var) {
        this.f6211d = dv1Var;
        this.f6208a = bArr;
    }

    /* renamed from: a */
    public final void m7917a() {
        synchronized (this) {
            try {
                dv1 dv1Var = this.f6211d;
                if (dv1Var.f6377a) {
                    dv1Var.f6378b.M4(this.f6208a);
                    this.f6211d.f6378b.N0(this.f6209b);
                    this.f6211d.f6378b.Q1(this.f6210c);
                    this.f6211d.f6378b.w4((int[]) null);
                    this.f6211d.f6378b.a();
                }
            } catch (RemoteException e) {
                Log.d("GASS", "Clearcut log failed", e);
            }
        }
    }

    /* renamed from: b */
    public final bv1 m7916b(int i) {
        this.f6209b = i;
        return this;
    }

    /* renamed from: c */
    public final bv1 m7915c(int i) {
        this.f6210c = i;
        return this;
    }
}
