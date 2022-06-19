package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jt3.class */
public final class jt3 {

    /* renamed from: a */
    private final byte[] f24979a = new byte[10];

    /* renamed from: b */
    private boolean f24980b;

    /* renamed from: c */
    private int f24981c;

    /* renamed from: d */
    private long f24982d;

    /* renamed from: e */
    private int f24983e;

    /* renamed from: f */
    private int f24984f;

    /* renamed from: g */
    private int f24985g;

    /* renamed from: a */
    public final void m14040a() {
        this.f24980b = false;
        this.f24981c = 0;
    }

    /* renamed from: b */
    public final void m14039b(vq3 vq3Var) {
        if (this.f24980b) {
            return;
        }
        ((pq3) vq3Var).mo9882l(this.f24979a, 0, 10, false);
        vq3Var.mo9884i();
        byte[] bArr = this.f24979a;
        int i = aq3.f20091g;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return;
        }
        this.f24980b = true;
    }

    @RequiresNonNull({"#1.output"})
    /* renamed from: c */
    public final void m14038c(it3 it3Var, long j, int i, int i2, int i3) {
        if (!this.f24980b) {
            return;
        }
        int i4 = this.f24981c;
        int i5 = i4 + 1;
        this.f24981c = i5;
        if (i4 == 0) {
            this.f24982d = j;
            this.f24983e = i;
            this.f24984f = 0;
        }
        this.f24984f += i2;
        this.f24985g = i3;
        if (i5 < 16) {
            return;
        }
        m14037d(it3Var);
    }

    @RequiresNonNull({"#1.output"})
    /* renamed from: d */
    public final void m14037d(it3 it3Var) {
        if (this.f24981c > 0) {
            it3Var.f24452X.mo8705c(this.f24982d, this.f24983e, this.f24984f, this.f24985g, it3Var.f24463j);
            this.f24981c = 0;
        }
    }
}
