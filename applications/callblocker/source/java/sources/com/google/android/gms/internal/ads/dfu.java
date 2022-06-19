package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfu.class */
public final class dfu {

    /* renamed from: a */
    private static final dfu f14222a = new dfu(0, new int[0], new Object[0], false);

    /* renamed from: b */
    private int f14223b;

    /* renamed from: c */
    private int[] f14224c;

    /* renamed from: d */
    private Object[] f14225d;

    /* renamed from: e */
    private int f14226e;

    /* renamed from: f */
    private boolean f14227f;

    private dfu() {
        this(0, new int[8], new Object[8], true);
    }

    private dfu(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f14226e = -1;
        this.f14223b = i;
        this.f14224c = iArr;
        this.f14225d = objArr;
        this.f14227f = z;
    }

    /* renamed from: a */
    public static dfu m9752a() {
        return f14222a;
    }

    /* renamed from: a */
    public static dfu m9749a(dfu dfuVar, dfu dfuVar2) {
        int i = dfuVar.f14223b + dfuVar2.f14223b;
        int[] copyOf = Arrays.copyOf(dfuVar.f14224c, i);
        System.arraycopy(dfuVar2.f14224c, 0, copyOf, dfuVar.f14223b, dfuVar2.f14223b);
        Object[] copyOf2 = Arrays.copyOf(dfuVar.f14225d, i);
        System.arraycopy(dfuVar2.f14225d, 0, copyOf2, dfuVar.f14223b, dfuVar2.f14223b);
        return new dfu(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    private static void m9750a(int i, Object obj, dgo dgoVar) {
        int i2 = i >>> 3;
        switch (i & 7) {
            case 0:
                dgoVar.mo9622a(i2, ((Long) obj).longValue());
                return;
            case 1:
                dgoVar.mo9601d(i2, ((Long) obj).longValue());
                return;
            case 2:
                dgoVar.mo9621a(i2, (dbi) obj);
                return;
            case 3:
                if (dgoVar.mo9627a() == dcw.C2960f.f14085j) {
                    dgoVar.mo9626a(i2);
                    ((dfu) obj).m9745b(dgoVar);
                    dgoVar.mo9612b(i2);
                    return;
                }
                dgoVar.mo9612b(i2);
                ((dfu) obj).m9745b(dgoVar);
                dgoVar.mo9626a(i2);
                return;
            case 4:
            default:
                throw new RuntimeException(zzeco.m6545f());
            case 5:
                dgoVar.mo9602d(i2, ((Integer) obj).intValue());
                return;
        }
    }

    /* renamed from: b */
    public static dfu m9746b() {
        return new dfu();
    }

    /* renamed from: a */
    public final void m9751a(int i, Object obj) {
        if (!this.f14227f) {
            throw new UnsupportedOperationException();
        }
        if (this.f14223b == this.f14224c.length) {
            int i2 = (this.f14223b < 4 ? 8 : this.f14223b >> 1) + this.f14223b;
            this.f14224c = Arrays.copyOf(this.f14224c, i2);
            this.f14225d = Arrays.copyOf(this.f14225d, i2);
        }
        this.f14224c[this.f14223b] = i;
        this.f14225d[this.f14223b] = obj;
        this.f14223b++;
    }

    /* renamed from: a */
    public final void m9748a(dgo dgoVar) {
        if (dgoVar.mo9627a() == dcw.C2960f.f14086k) {
            for (int i = this.f14223b - 1; i >= 0; i--) {
                dgoVar.mo9619a(this.f14224c[i] >>> 3, this.f14225d[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f14223b; i2++) {
            dgoVar.mo9619a(this.f14224c[i2] >>> 3, this.f14225d[i2]);
        }
    }

    /* renamed from: a */
    public final void m9747a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f14223b; i2++) {
            deh.m9977a(sb, i, String.valueOf(this.f14224c[i2] >>> 3), this.f14225d[i2]);
        }
    }

    /* renamed from: b */
    public final void m9745b(dgo dgoVar) {
        if (this.f14223b == 0) {
            return;
        }
        if (dgoVar.mo9627a() == dcw.C2960f.f14085j) {
            for (int i = 0; i < this.f14223b; i++) {
                m9750a(this.f14224c[i], this.f14225d[i], dgoVar);
            }
            return;
        }
        for (int i2 = this.f14223b - 1; i2 >= 0; i2--) {
            m9750a(this.f14224c[i2], this.f14225d[i2], dgoVar);
        }
    }

    /* renamed from: c */
    public final void m9744c() {
        this.f14227f = false;
    }

    /* renamed from: d */
    public final int m9743d() {
        int i = this.f14226e;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < this.f14223b; i2++) {
                i += zzebk.m6602d(this.f14224c[i2] >>> 3, (dbi) this.f14225d[i2]);
            }
            this.f14226e = i;
        }
        return i;
    }

    /* renamed from: e */
    public final int m9742e() {
        int i;
        int m9742e;
        int i2 = this.f14226e;
        if (i2 == -1) {
            i2 = 0;
            for (int i3 = 0; i3 < this.f14223b; i3++) {
                int i4 = this.f14224c[i3];
                int i5 = i4 >>> 3;
                switch (i4 & 7) {
                    case 0:
                        i = i2;
                        m9742e = zzebk.m6599e(i5, ((Long) this.f14225d[i3]).longValue());
                        break;
                    case 1:
                        i = i2;
                        m9742e = zzebk.m6591g(i5, ((Long) this.f14225d[i3]).longValue());
                        break;
                    case 2:
                        i = i2;
                        m9742e = zzebk.m6607c(i5, (dbi) this.f14225d[i3]);
                        break;
                    case 3:
                        int m6600e = zzebk.m6600e(i5);
                        i = i2;
                        m9742e = ((dfu) this.f14225d[i3]).m9742e() + (m6600e << 1);
                        break;
                    case 4:
                    default:
                        throw new IllegalStateException(zzeco.m6545f());
                    case 5:
                        i = i2;
                        m9742e = zzebk.m6584i(i5, ((Integer) this.f14225d[i3]).intValue());
                        break;
                }
                i2 = i + m9742e;
            }
            this.f14226e = i2;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        if (r10 == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L9
        L7:
            r0 = r6
            return r0
        L9:
            r0 = r5
            if (r0 != 0) goto L12
            r0 = 0
            r6 = r0
            goto L7
        L12:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.internal.ads.dfu
            if (r0 != 0) goto L1e
            r0 = 0
            r6 = r0
            goto L7
        L1e:
            r0 = r5
            com.google.android.gms.internal.ads.dfu r0 = (com.google.android.gms.internal.ads.dfu) r0
            r5 = r0
            r0 = r4
            int r0 = r0.f14223b
            r1 = r5
            int r1 = r1.f14223b
            if (r0 != r1) goto L8d
            r0 = r4
            int[] r0 = r0.f14224c
            r7 = r0
            r0 = r5
            int[] r0 = r0.f14224c
            r8 = r0
            r0 = r4
            int r0 = r0.f14223b
            r9 = r0
            r0 = 0
            r10 = r0
        L42:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L98
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r1 = r8
            r2 = r10
            r1 = r1[r2]
            if (r0 == r1) goto L92
            r0 = 0
            r10 = r0
        L58:
            r0 = r10
            if (r0 == 0) goto L8d
            r0 = r4
            java.lang.Object[] r0 = r0.f14225d
            r7 = r0
            r0 = r5
            java.lang.Object[] r0 = r0.f14225d
            r5 = r0
            r0 = r4
            int r0 = r0.f14223b
            r9 = r0
            r0 = 0
            r10 = r0
        L70:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto La4
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r1 = r5
            r2 = r10
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9e
            r0 = 0
            r10 = r0
        L88:
            r0 = r10
            if (r0 != 0) goto L7
        L8d:
            r0 = 0
            r6 = r0
            goto L7
        L92:
            int r10 = r10 + 1
            goto L42
        L98:
            r0 = 1
            r10 = r0
            goto L58
        L9e:
            int r10 = r10 + 1
            goto L70
        La4:
            r0 = 1
            r10 = r0
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dfu.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = this.f14223b;
        int[] iArr = this.f14224c;
        int i2 = this.f14223b;
        int i3 = 17;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f14225d;
        int i5 = this.f14223b;
        int i6 = 17;
        for (int i7 = 0; i7 < i5; i7++) {
            i6 = (i6 * 31) + objArr[i7].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i6;
    }
}
