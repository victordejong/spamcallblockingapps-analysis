package com.google.android.gms.internal.ads;

import java.io.EOFException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tq3.class */
public final class tq3 implements yr3 {

    /* renamed from: a */
    private final byte[] f30118a = new byte[4096];

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: a */
    public final int mo8707a(AbstractC7207z5 abstractC7207z5, int i, boolean z) {
        return wr3.m9479a(this, abstractC7207z5, i, true);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: b */
    public final void mo8706b(C6694la c6694la, int i) {
        wr3.m9478b(this, c6694la, i);
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: c */
    public final void mo8705c(long j, int i, int i2, int i3, xr3 xr3Var) {
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: d */
    public final void mo8704d(C7021u4 c7021u4) {
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: e */
    public final int mo8703e(AbstractC7207z5 abstractC7207z5, int i, boolean z, int i2) {
        int mo8335c = abstractC7207z5.mo8335c(this.f30118a, 0, Math.min(4096, i));
        if (mo8335c == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return mo8335c;
    }

    @Override // com.google.android.gms.internal.ads.yr3
    /* renamed from: f */
    public final void mo8702f(C6694la c6694la, int i, int i2) {
        c6694la.m13632s(i);
    }
}
