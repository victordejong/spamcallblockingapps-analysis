package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fq2.class */
public final class fq2 {

    /* renamed from: a */
    public final int f6574a;

    /* renamed from: b */
    private final zzit[] f6575b;

    /* renamed from: c */
    private int f6576c;

    public fq2(zzit... zzitVarArr) {
        int length = zzitVarArr.length;
        jr2.m6923d(length > 0);
        this.f6575b = zzitVarArr;
        this.f6574a = length;
    }

    /* renamed from: a */
    public final zzit m7461a(int i) {
        return this.f6575b[i];
    }

    /* renamed from: b */
    public final int m7460b(zzit zzitVar) {
        int i = 0;
        while (true) {
            zzit[] zzitVarArr = this.f6575b;
            if (i >= zzitVarArr.length) {
                return -1;
            }
            if (zzitVar == zzitVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || fq2.class != obj.getClass()) {
            return false;
        }
        fq2 fq2Var = (fq2) obj;
        return this.f6574a == fq2Var.f6574a && Arrays.equals(this.f6575b, fq2Var.f6575b);
    }

    public final int hashCode() {
        int i = this.f6576c;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f6575b) + 527;
            this.f6576c = i2;
        }
        return i2;
    }
}
