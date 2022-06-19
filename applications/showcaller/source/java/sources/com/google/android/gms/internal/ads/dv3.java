package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dv3.class */
public final class dv3 {

    /* renamed from: a */
    public static final dv3 f21884a = new dv3(new bt3[0]);

    /* renamed from: b */
    public static final AbstractC7093w2<dv3> f21885b = cu3.f21381a;

    /* renamed from: c */
    public final int f21886c;

    /* renamed from: d */
    private final bt3[] f21887d;

    /* renamed from: e */
    private int f21888e;

    public dv3(bt3... bt3VarArr) {
        this.f21887d = bt3VarArr;
        this.f21886c = bt3VarArr.length;
    }

    /* renamed from: a */
    public final bt3 m15681a(int i) {
        return this.f21887d[i];
    }

    /* renamed from: b */
    public final int m15680b(bt3 bt3Var) {
        for (int i = 0; i < this.f21886c; i++) {
            if (this.f21887d[i] == bt3Var) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || dv3.class != obj.getClass()) {
            return false;
        }
        dv3 dv3Var = (dv3) obj;
        return this.f21886c == dv3Var.f21886c && Arrays.equals(this.f21887d, dv3Var.f21887d);
    }

    public final int hashCode() {
        int i = this.f21888e;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f21887d);
            this.f21888e = i2;
        }
        return i2;
    }
}
