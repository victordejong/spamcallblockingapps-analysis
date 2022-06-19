package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.in */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/in.class */
public final class C13582in {

    /* renamed from: f */
    private static final C13582in f50849f = new C13582in(0, new int[0], new Object[0], false);

    /* renamed from: a */
    int f50850a;

    /* renamed from: b */
    int[] f50851b;

    /* renamed from: c */
    Object[] f50852c;

    /* renamed from: d */
    int f50853d;

    /* renamed from: e */
    boolean f50854e;

    private C13582in() {
        this(0, new int[8], new Object[8], true);
    }

    private C13582in(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f50853d = -1;
        this.f50850a = i;
        this.f50851b = iArr;
        this.f50852c = objArr;
        this.f50854e = z;
    }

    /* renamed from: a */
    public static C13582in m12573a() {
        return f50849f;
    }

    /* renamed from: a */
    public static C13582in m12570a(C13582in c13582in, C13582in c13582in2) {
        int i = c13582in.f50850a + c13582in2.f50850a;
        int[] copyOf = Arrays.copyOf(c13582in.f50851b, i);
        System.arraycopy(c13582in2.f50851b, 0, copyOf, c13582in.f50850a, c13582in2.f50850a);
        Object[] copyOf2 = Arrays.copyOf(c13582in.f50852c, i);
        System.arraycopy(c13582in2.f50852c, 0, copyOf2, c13582in.f50850a, c13582in2.f50850a);
        return new C13582in(i, copyOf, copyOf2, true);
    }

    /* renamed from: b */
    public static C13582in m12568b() {
        return new C13582in(0, new int[8], new Object[8], true);
    }

    /* renamed from: a */
    public final void m12572a(int i, Object obj) {
        if (this.f50854e) {
            int i2 = this.f50850a;
            int[] iArr = this.f50851b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f50851b = Arrays.copyOf(iArr, i3);
                this.f50852c = Arrays.copyOf(this.f50852c, i3);
            }
            int[] iArr2 = this.f50851b;
            int i4 = this.f50850a;
            iArr2[i4] = i;
            this.f50852c[i4] = obj;
            this.f50850a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public final void m12571a(C13507ft c13507ft) throws IOException {
        if (this.f50850a != 0) {
            for (int i = 0; i < this.f50850a; i++) {
                int i2 = this.f50851b[i];
                Object obj = this.f50852c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    c13507ft.m12817a(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    c13507ft.m12806d(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    c13507ft.m12816a(i3, (AbstractC13500fm) obj);
                } else if (i4 == 3) {
                    c13507ft.f50730a.mo12847a(i3, 3);
                    ((C13582in) obj).m12571a(c13507ft);
                    c13507ft.f50730a.mo12847a(i3, 4);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzib.m12286d());
                } else {
                    c13507ft.m12807d(i3, ((Integer) obj).intValue());
                }
            }
        }
    }

    /* renamed from: a */
    public final void m12569a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f50850a; i2++) {
            C13558hq.m12701a(sb, i, String.valueOf(this.f50851b[i2] >>> 3), this.f50852c[i2]);
        }
    }

    /* renamed from: c */
    public final int m12567c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f50853d;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.f50850a) {
                    this.f50853d = i9;
                    return i9;
                }
                int i10 = this.f50851b[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.f50852c[i7]).longValue();
                        i3 = AbstractC13506fs.m12821f(i11 << 3) + 8;
                    } else if (i12 == 2) {
                        AbstractC13500fm abstractC13500fm = (AbstractC13500fm) this.f50852c[i7];
                        int m12821f = AbstractC13506fs.m12821f(i11 << 3);
                        int mo12866a = abstractC13500fm.mo12866a();
                        i2 = i9;
                        i = m12821f + AbstractC13506fs.m12821f(mo12866a) + mo12866a;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int m12824d = AbstractC13506fs.m12824d(i11);
                        i5 = m12824d + m12824d;
                        i4 = ((C13582in) this.f50852c[i7]).m12567c();
                    } else if (i12 != 5) {
                        throw new IllegalStateException(zzib.m12286d());
                    } else {
                        ((Integer) this.f50852c[i7]).intValue();
                        i3 = AbstractC13506fs.m12821f(i11 << 3) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.f50852c[i7]).longValue();
                    i5 = AbstractC13506fs.m12821f(i11 << 3);
                    i4 = AbstractC13506fs.m12825c(longValue);
                }
                i3 = i5 + i4;
                i2 = i9;
                i = i3;
                i7++;
                i8 = i2 + i;
            }
        } else {
            return i6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C13582in)) {
            return false;
        }
        C13582in c13582in = (C13582in) obj;
        int i = this.f50850a;
        if (i != c13582in.f50850a) {
            return false;
        }
        int[] iArr = this.f50851b;
        int[] iArr2 = c13582in.f50851b;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f50852c;
        Object[] objArr2 = c13582in.f50852c;
        int i3 = this.f50850a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f50850a;
        int[] iArr = this.f50851b;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.f50852c;
        int i4 = this.f50850a;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }
}
