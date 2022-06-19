package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mm3.class */
public class mm3 {

    /* renamed from: a */
    protected final bt3 f26659a;

    /* renamed from: b */
    protected final int f26660b;

    /* renamed from: c */
    protected final int[] f26661c;

    /* renamed from: d */
    private final C7021u4[] f26662d;

    /* renamed from: e */
    private int f26663e;

    public mm3(bt3 bt3Var, int[] iArr, int i) {
        int length = iArr.length;
        C7173y8.m8895d(length > 0);
        Objects.requireNonNull(bt3Var);
        this.f26659a = bt3Var;
        this.f26660b = length;
        this.f26662d = new C7021u4[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f26662d[i2] = bt3Var.m16209a(iArr[i2]);
        }
        Arrays.sort(this.f26662d, lm3.f26178d);
        this.f26661c = new int[this.f26660b];
        for (int i3 = 0; i3 < this.f26660b; i3++) {
            this.f26661c[i3] = bt3Var.m16208b(this.f26662d[i3]);
        }
    }

    /* renamed from: a */
    public final bt3 m13153a() {
        return this.f26659a;
    }

    /* renamed from: b */
    public final int m13152b() {
        return this.f26661c.length;
    }

    /* renamed from: c */
    public final C7021u4 m13151c(int i) {
        return this.f26662d[i];
    }

    /* renamed from: d */
    public final int m13150d(int i) {
        return this.f26661c[0];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        mm3 mm3Var = (mm3) obj;
        return this.f26659a == mm3Var.f26659a && Arrays.equals(this.f26661c, mm3Var.f26661c);
    }

    public final int hashCode() {
        int i = this.f26663e;
        int i2 = i;
        if (i == 0) {
            i2 = (System.identityHashCode(this.f26659a) * 31) + Arrays.hashCode(this.f26661c);
            this.f26663e = i2;
        }
        return i2;
    }
}
