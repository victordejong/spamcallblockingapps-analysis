package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drg.class */
public final class drg {

    /* renamed from: a */
    public final int f15474a;

    /* renamed from: b */
    private final dre[] f15475b;

    /* renamed from: c */
    private int f15476c;

    public drg(dre... dreVarArr) {
        this.f15475b = dreVarArr;
        this.f15474a = dreVarArr.length;
    }

    /* renamed from: a */
    public final dre m8822a(int i) {
        return this.f15475b[i];
    }

    /* renamed from: a */
    public final dre[] m8823a() {
        return (dre[]) this.f15475b.clone();
    }

    public final boolean equals(Object obj) {
        return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : Arrays.equals(this.f15475b, ((drg) obj).f15475b);
    }

    public final int hashCode() {
        if (this.f15476c == 0) {
            this.f15476c = Arrays.hashCode(this.f15475b) + 527;
        }
        return this.f15476c;
    }
}
