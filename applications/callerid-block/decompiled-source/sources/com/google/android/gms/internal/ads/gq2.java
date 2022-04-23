package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gq2.class */
public final class gq2 {

    /* renamed from: d */
    public static final gq2 f6709d = new gq2(new fq2[0]);

    /* renamed from: a */
    public final int f6710a;

    /* renamed from: b */
    private final fq2[] f6711b;

    /* renamed from: c */
    private int f6712c;

    public gq2(fq2... fq2VarArr) {
        this.f6711b = fq2VarArr;
        this.f6710a = fq2VarArr.length;
    }

    /* renamed from: a */
    public final fq2 m7346a(int i) {
        return this.f6711b[i];
    }

    /* renamed from: b */
    public final int m7345b(fq2 fq2Var) {
        for (int i = 0; i < this.f6710a; i++) {
            if (this.f6711b[i] == fq2Var) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gq2.class != obj.getClass()) {
            return false;
        }
        gq2 gq2Var = (gq2) obj;
        return this.f6710a == gq2Var.f6710a && Arrays.equals(this.f6711b, gq2Var.f6711b);
    }

    public final int hashCode() {
        int i = this.f6712c;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f6711b);
            this.f6712c = i2;
        }
        return i2;
    }
}
