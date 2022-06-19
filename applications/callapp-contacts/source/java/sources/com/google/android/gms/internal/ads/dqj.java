package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqj.class */
public final class dqj {

    /* renamed from: f */
    private static final dqj f47413f = new dqj(0, new int[0], new Object[0], false);

    /* renamed from: a */
    int f47414a;

    /* renamed from: b */
    int[] f47415b;

    /* renamed from: c */
    Object[] f47416c;

    /* renamed from: d */
    int f47417d;

    /* renamed from: e */
    boolean f47418e;

    private dqj() {
        this(0, new int[8], new Object[8], true);
    }

    private dqj(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f47417d = -1;
        this.f47414a = i;
        this.f47415b = iArr;
        this.f47416c = objArr;
        this.f47418e = z;
    }

    /* renamed from: a */
    public static dqj m16009a() {
        return f47413f;
    }

    /* renamed from: a */
    public static dqj m16006a(dqj dqjVar, dqj dqjVar2) {
        int i = dqjVar.f47414a + dqjVar2.f47414a;
        int[] copyOf = Arrays.copyOf(dqjVar.f47415b, i);
        System.arraycopy(dqjVar2.f47415b, 0, copyOf, dqjVar.f47414a, dqjVar2.f47414a);
        Object[] copyOf2 = Arrays.copyOf(dqjVar.f47416c, i);
        System.arraycopy(dqjVar2.f47416c, 0, copyOf2, dqjVar.f47414a, dqjVar2.f47414a);
        return new dqj(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    private static void m16007a(int i, Object obj, drd drdVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            drdVar.mo15917a(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            drdVar.mo15896d(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            drdVar.mo15916a(i2, (dlw) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(zzenn.m13630f());
            }
            drdVar.mo15897d(i2, ((Integer) obj).intValue());
        } else if (drdVar.mo15922a() == drc.f47451a) {
            drdVar.mo15921a(i2);
            ((dqj) obj).m16005a(drdVar);
            drdVar.mo15907b(i2);
        } else {
            drdVar.mo15907b(i2);
            ((dqj) obj).m16005a(drdVar);
            drdVar.mo15921a(i2);
        }
    }

    /* renamed from: b */
    public static dqj m16003b() {
        return new dqj();
    }

    /* renamed from: a */
    public final void m16008a(int i, Object obj) {
        if (this.f47418e) {
            int i2 = this.f47414a;
            int[] iArr = this.f47415b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f47415b = Arrays.copyOf(iArr, i3);
                this.f47416c = Arrays.copyOf(this.f47416c, i3);
            }
            int[] iArr2 = this.f47415b;
            int i4 = this.f47414a;
            iArr2[i4] = i;
            this.f47416c[i4] = obj;
            this.f47414a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m16005a(drd drdVar) throws IOException {
        if (this.f47414a == 0) {
            return;
        }
        if (drdVar.mo15922a() == drc.f47451a) {
            for (int i = 0; i < this.f47414a; i++) {
                m16007a(this.f47415b[i], this.f47416c[i], drdVar);
            }
            return;
        }
        for (int i2 = this.f47414a - 1; i2 >= 0; i2--) {
            m16007a(this.f47415b[i2], this.f47416c[i2], drdVar);
        }
    }

    /* renamed from: a */
    public final void m16004a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f47414a; i2++) {
            dou.m16250a(sb, i, String.valueOf(this.f47415b[i2] >>> 3), this.f47416c[i2]);
        }
    }

    /* renamed from: c */
    public final int m16002c() {
        int i;
        int i2 = this.f47417d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f47414a; i4++) {
            int i5 = this.f47415b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzemk.m13686e(i6, ((Long) this.f47416c[i4]).longValue());
            } else if (i7 == 1) {
                ((Long) this.f47416c[i4]).longValue();
                i = zzemk.m13678g(i6);
            } else if (i7 == 2) {
                i = zzemk.m13696c(i6, (dlw) this.f47416c[i4]);
            } else if (i7 == 3) {
                i = (zzemk.m13667l(i6) << 1) + ((dqj) this.f47416c[i4]).m16002c();
            } else if (i7 != 5) {
                throw new IllegalStateException(zzenn.m13630f());
            } else {
                ((Integer) this.f47416c[i4]).intValue();
                i = zzemk.m13687e(i6);
            }
            i3 += i;
        }
        this.f47417d = i3;
        return i3;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof dqj)) {
            return false;
        }
        dqj dqjVar = (dqj) obj;
        int i = this.f47414a;
        if (i != dqjVar.f47414a) {
            return false;
        }
        int[] iArr = this.f47415b;
        int[] iArr2 = dqjVar.f47415b;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        Object[] objArr = this.f47416c;
        Object[] objArr2 = dqjVar.f47416c;
        int i3 = this.f47414a;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!objArr[i4].equals(objArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = this.f47414a;
        int[] iArr = this.f47415b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f47416c;
        int i5 = this.f47414a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
