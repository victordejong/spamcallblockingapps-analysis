package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jq2.class */
public class jq2 {

    /* renamed from: a */
    protected final fq2 f6929a;

    /* renamed from: b */
    protected final int f6930b;

    /* renamed from: c */
    protected final int[] f6931c;

    /* renamed from: d */
    private final zzit[] f6932d;

    /* renamed from: e */
    private int f6933e;

    public jq2(fq2 fq2Var, int... iArr) {
        int length = iArr.length;
        jr2.m6923d(length > 0);
        fq2Var.getClass();
        this.f6929a = fq2Var;
        this.f6930b = length;
        this.f6932d = new zzit[length];
        for (int i = 0; i < iArr.length; i++) {
            this.f6932d[i] = fq2Var.m7461a(iArr[i]);
        }
        Arrays.sort(this.f6932d, new iq2(null));
        this.f6931c = new int[this.f6930b];
        for (int i2 = 0; i2 < this.f6930b; i2++) {
            this.f6931c[i2] = fq2Var.m7460b(this.f6932d[i2]);
        }
    }

    /* renamed from: a */
    public final fq2 m6934a() {
        return this.f6929a;
    }

    /* renamed from: b */
    public final int m6933b() {
        return this.f6931c.length;
    }

    /* renamed from: c */
    public final zzit m6932c(int i) {
        return this.f6932d[i];
    }

    /* renamed from: d */
    public final int m6931d(int i) {
        return this.f6931c[0];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        jq2 jq2Var = (jq2) obj;
        return this.f6929a == jq2Var.f6929a && Arrays.equals(this.f6931c, jq2Var.f6931c);
    }

    public final int hashCode() {
        int i = this.f6933e;
        int i2 = i;
        if (i == 0) {
            i2 = (System.identityHashCode(this.f6929a) * 31) + Arrays.hashCode(this.f6931c);
            this.f6933e = i2;
        }
        return i2;
    }
}
