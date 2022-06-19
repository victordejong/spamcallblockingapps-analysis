package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.gx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gx.class */
public final class C3980gx {

    /* renamed from: a */
    private static final C3980gx f18229a = new C3980gx(0, new int[0], new Object[0], false);

    /* renamed from: b */
    private int f18230b;

    /* renamed from: c */
    private int[] f18231c;

    /* renamed from: d */
    private Object[] f18232d;

    /* renamed from: e */
    private int f18233e;

    /* renamed from: f */
    private boolean f18234f;

    private C3980gx() {
        this(0, new int[8], new Object[8], true);
    }

    private C3980gx(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f18233e = -1;
        this.f18230b = i;
        this.f18231c = iArr;
        this.f18232d = objArr;
        this.f18234f = z;
    }

    /* renamed from: a */
    public static C3980gx m5315a() {
        return f18229a;
    }

    /* renamed from: a */
    public static C3980gx m5312a(C3980gx c3980gx, C3980gx c3980gx2) {
        int i = c3980gx.f18230b + c3980gx2.f18230b;
        int[] copyOf = Arrays.copyOf(c3980gx.f18231c, i);
        System.arraycopy(c3980gx2.f18231c, 0, copyOf, c3980gx.f18230b, c3980gx2.f18230b);
        Object[] copyOf2 = Arrays.copyOf(c3980gx.f18232d, i);
        System.arraycopy(c3980gx2.f18232d, 0, copyOf2, c3980gx.f18230b, c3980gx2.f18230b);
        return new C3980gx(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    private static void m5313a(int i, Object obj, AbstractC4005hr abstractC4005hr) {
        int i2 = i >>> 3;
        switch (i & 7) {
            case 0:
                abstractC4005hr.mo5205a(i2, ((Long) obj).longValue());
                return;
            case 1:
                abstractC4005hr.mo5184d(i2, ((Long) obj).longValue());
                return;
            case 2:
                abstractC4005hr.mo5204a(i2, (AbstractC3859ct) obj);
                return;
            case 3:
                if (abstractC4005hr.mo5210a() == AbstractC3900ed.C3905e.f18101j) {
                    abstractC4005hr.mo5209a(i2);
                    ((C3980gx) obj).m5308b(abstractC4005hr);
                    abstractC4005hr.mo5195b(i2);
                    return;
                }
                abstractC4005hr.mo5195b(i2);
                ((C3980gx) obj).m5308b(abstractC4005hr);
                abstractC4005hr.mo5209a(i2);
                return;
            case 4:
            default:
                throw new RuntimeException(zzft.m4849f());
            case 5:
                abstractC4005hr.mo5185d(i2, ((Integer) obj).intValue());
                return;
        }
    }

    /* renamed from: b */
    public static C3980gx m5309b() {
        return new C3980gx();
    }

    /* renamed from: a */
    public final void m5314a(int i, Object obj) {
        if (!this.f18234f) {
            throw new UnsupportedOperationException();
        }
        if (this.f18230b == this.f18231c.length) {
            int i2 = (this.f18230b < 4 ? 8 : this.f18230b >> 1) + this.f18230b;
            this.f18231c = Arrays.copyOf(this.f18231c, i2);
            this.f18232d = Arrays.copyOf(this.f18232d, i2);
        }
        this.f18231c[this.f18230b] = i;
        this.f18232d[this.f18230b] = obj;
        this.f18230b++;
    }

    /* renamed from: a */
    public final void m5311a(AbstractC4005hr abstractC4005hr) {
        if (abstractC4005hr.mo5210a() == AbstractC3900ed.C3905e.f18102k) {
            for (int i = this.f18230b - 1; i >= 0; i--) {
                abstractC4005hr.mo5202a(this.f18231c[i] >>> 3, this.f18232d[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f18230b; i2++) {
            abstractC4005hr.mo5202a(this.f18231c[i2] >>> 3, this.f18232d[i2]);
        }
    }

    /* renamed from: a */
    public final void m5310a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f18230b; i2++) {
            C3944fo.m5535a(sb, i, String.valueOf(this.f18231c[i2] >>> 3), this.f18232d[i2]);
        }
    }

    /* renamed from: b */
    public final void m5308b(AbstractC4005hr abstractC4005hr) {
        if (this.f18230b == 0) {
            return;
        }
        if (abstractC4005hr.mo5210a() == AbstractC3900ed.C3905e.f18101j) {
            for (int i = 0; i < this.f18230b; i++) {
                m5313a(this.f18231c[i], this.f18232d[i], abstractC4005hr);
            }
            return;
        }
        for (int i2 = this.f18230b - 1; i2 >= 0; i2--) {
            m5313a(this.f18231c[i2], this.f18232d[i2], abstractC4005hr);
        }
    }

    /* renamed from: c */
    public final void m5307c() {
        this.f18234f = false;
    }

    /* renamed from: d */
    public final int m5306d() {
        int i = this.f18233e;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < this.f18230b; i2++) {
                i += zzes.m4905d(this.f18231c[i2] >>> 3, (AbstractC3859ct) this.f18232d[i2]);
            }
            this.f18233e = i;
        }
        return i;
    }

    /* renamed from: e */
    public final int m5305e() {
        int i;
        int m5305e;
        int i2 = this.f18233e;
        if (i2 == -1) {
            i2 = 0;
            for (int i3 = 0; i3 < this.f18230b; i3++) {
                int i4 = this.f18231c[i3];
                int i5 = i4 >>> 3;
                switch (i4 & 7) {
                    case 0:
                        i = i2;
                        m5305e = zzes.m4902e(i5, ((Long) this.f18232d[i3]).longValue());
                        break;
                    case 1:
                        i = i2;
                        m5305e = zzes.m4894g(i5, ((Long) this.f18232d[i3]).longValue());
                        break;
                    case 2:
                        i = i2;
                        m5305e = zzes.m4910c(i5, (AbstractC3859ct) this.f18232d[i3]);
                        break;
                    case 3:
                        int m4903e = zzes.m4903e(i5);
                        i = i2;
                        m5305e = ((C3980gx) this.f18232d[i3]).m5305e() + (m4903e << 1);
                        break;
                    case 4:
                    default:
                        throw new IllegalStateException(zzft.m4849f());
                    case 5:
                        i = i2;
                        m5305e = zzes.m4887i(i5, ((Integer) this.f18232d[i3]).intValue());
                        break;
                }
                i2 = i + m5305e;
            }
            this.f18233e = i2;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x008c, code lost:
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
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.C3980gx
            if (r0 != 0) goto L1e
            r0 = 0
            r6 = r0
            goto L7
        L1e:
            r0 = r5
            com.google.android.gms.internal.measurement.gx r0 = (com.google.android.gms.internal.measurement.C3980gx) r0
            r5 = r0
            r0 = r4
            int r0 = r0.f18230b
            r1 = r5
            int r1 = r1.f18230b
            if (r0 != r1) goto L8f
            r0 = r4
            int[] r0 = r0.f18231c
            r7 = r0
            r0 = r5
            int[] r0 = r0.f18231c
            r8 = r0
            r0 = r4
            int r0 = r0.f18230b
            r9 = r0
            r0 = 0
            r10 = r0
        L42:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L9a
            r0 = r7
            r1 = r10
            r0 = r0[r1]
            r1 = r8
            r2 = r10
            r1 = r1[r2]
            if (r0 == r1) goto L94
            r0 = 0
            r10 = r0
        L58:
            r0 = r10
            if (r0 == 0) goto L8f
            r0 = r4
            java.lang.Object[] r0 = r0.f18232d
            r8 = r0
            r0 = r5
            java.lang.Object[] r0 = r0.f18232d
            r5 = r0
            r0 = r4
            int r0 = r0.f18230b
            r9 = r0
            r0 = 0
            r10 = r0
        L71:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto La6
            r0 = r8
            r1 = r10
            r0 = r0[r1]
            r1 = r5
            r2 = r10
            r1 = r1[r2]
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto La0
            r0 = 0
            r10 = r0
        L8a:
            r0 = r10
            if (r0 != 0) goto L7
        L8f:
            r0 = 0
            r6 = r0
            goto L7
        L94:
            int r10 = r10 + 1
            goto L42
        L9a:
            r0 = 1
            r10 = r0
            goto L58
        La0:
            int r10 = r10 + 1
            goto L71
        La6:
            r0 = 1
            r10 = r0
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3980gx.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = 17;
        int i2 = this.f18230b;
        int[] iArr = this.f18231c;
        int i3 = this.f18230b;
        int i4 = 17;
        for (int i5 = 0; i5 < i3; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        Object[] objArr = this.f18232d;
        int i6 = this.f18230b;
        for (int i7 = 0; i7 < i6; i7++) {
            i = (i * 31) + objArr[i7].hashCode();
        }
        return ((((i2 + 527) * 31) + i4) * 31) + i;
    }
}
