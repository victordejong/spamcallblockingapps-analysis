package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zv2.class */
public final class zv2 {

    /* renamed from: a */
    private final byte[] f9446a;

    /* renamed from: b */
    private int f9447b;

    /* renamed from: c */
    final /* synthetic */ aw2 f9448c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zv2(aw2 aw2Var, byte[] bArr, yv2 yv2Var) {
        this.f9448c = aw2Var;
        this.f9446a = bArr;
    }

    /* renamed from: a */
    public final void m4504a() {
        synchronized (this) {
            try {
                aw2 aw2Var = this.f9448c;
                if (aw2Var.f6096b) {
                    aw2Var.f6095a.m6315C2(this.f9446a);
                    this.f9448c.f6095a.m6314Q1(0);
                    this.f9448c.f6095a.m6311d3(this.f9447b);
                    this.f9448c.f6095a.m6310s1(null);
                    this.f9448c.f6095a.m6312d();
                }
            } catch (RemoteException e) {
                C1894po.m6184b("Clearcut log failed", e);
            }
        }
    }

    /* renamed from: b */
    public final zv2 m4503b(int i) {
        this.f9447b = i;
        return this;
    }
}
