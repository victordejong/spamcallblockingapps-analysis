package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gm3.class */
public final class gm3 {

    /* renamed from: a */
    public static final AbstractC7093w2<gm3> f23410a = gl3.f23396a;

    /* renamed from: b */
    public final int f23411b;

    /* renamed from: c */
    public final int f23412c;

    /* renamed from: d */
    public final int f23413d;

    /* renamed from: e */
    public final byte[] f23414e;

    /* renamed from: f */
    private int f23415f;

    public gm3(int i, int i2, int i3, byte[] bArr) {
        this.f23411b = i;
        this.f23412c = i2;
        this.f23413d = i3;
        this.f23414e = bArr;
    }

    @Pure
    /* renamed from: a */
    public static int m14890a(int i) {
        if (i != 1) {
            if (i == 9) {
                return 6;
            }
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 1;
    }

    @Pure
    /* renamed from: b */
    public static int m14889b(int i) {
        if (i != 1) {
            if (i == 16) {
                return 6;
            }
            if (i == 18) {
                return 7;
            }
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gm3.class != obj.getClass()) {
            return false;
        }
        gm3 gm3Var = (gm3) obj;
        return this.f23411b == gm3Var.f23411b && this.f23412c == gm3Var.f23412c && this.f23413d == gm3Var.f23413d && Arrays.equals(this.f23414e, gm3Var.f23414e);
    }

    public final int hashCode() {
        int i = this.f23415f;
        int i2 = i;
        if (i == 0) {
            i2 = ((((((this.f23411b + 527) * 31) + this.f23412c) * 31) + this.f23413d) * 31) + Arrays.hashCode(this.f23414e);
            this.f23415f = i2;
        }
        return i2;
    }

    public final String toString() {
        int i = this.f23411b;
        int i2 = this.f23412c;
        int i3 = this.f23413d;
        boolean z = this.f23414e != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }
}
