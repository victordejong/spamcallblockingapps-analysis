package com.google.android.exoplayer2.video.p261r;

import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.video.r.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/r/d.class */
public final class C5574d {

    /* renamed from: a */
    public final C5575a f18105a;

    /* renamed from: b */
    public final C5575a f18106b;

    /* renamed from: c */
    public final int f18107c;

    /* renamed from: d */
    public final boolean f18108d;

    /* renamed from: com.google.android.exoplayer2.video.r.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/r/d$a.class */
    public static final class C5575a {

        /* renamed from: a */
        private final C5576b[] f18109a;

        public C5575a(C5576b... c5576bArr) {
            this.f18109a = c5576bArr;
        }

        /* renamed from: a */
        public C5576b m18495a(int i) {
            return this.f18109a[i];
        }

        /* renamed from: b */
        public int m18494b() {
            return this.f18109a.length;
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.r.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/r/d$b.class */
    public static final class C5576b {

        /* renamed from: a */
        public final int f18110a;

        /* renamed from: b */
        public final int f18111b;

        /* renamed from: c */
        public final float[] f18112c;

        /* renamed from: d */
        public final float[] f18113d;

        public C5576b(int i, float[] fArr, float[] fArr2, int i2) {
            this.f18110a = i;
            C5508e.m18915a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f18112c = fArr;
            this.f18113d = fArr2;
            this.f18111b = i2;
        }

        /* renamed from: a */
        public int m18493a() {
            return this.f18112c.length / 3;
        }
    }

    public C5574d(C5575a c5575a, int i) {
        this(c5575a, c5575a, i);
    }

    public C5574d(C5575a c5575a, C5575a c5575a2, int i) {
        this.f18105a = c5575a;
        this.f18106b = c5575a2;
        this.f18107c = i;
        this.f18108d = c5575a == c5575a2;
    }

    /* renamed from: a */
    public static C5574d m18497a(float f, int i, int i2, float f2, float f3, int i3) {
        C5508e.m18915a(f > 0.0f);
        C5508e.m18915a(i >= 1);
        C5508e.m18915a(i2 >= 1);
        C5508e.m18915a(f2 > 0.0f && f2 <= 180.0f);
        C5508e.m18915a(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i;
        float f5 = radians2 / i2;
        int i4 = i2 + 1;
        int i5 = ((i4 * 2) + 2) * i;
        float[] fArr = new float[i5 * 3];
        float[] fArr2 = new float[i5 * 2];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i) {
            float f6 = radians / 2.0f;
            float f7 = (i6 * f4) - f6;
            int i9 = i6 + 1;
            float f8 = (i9 * f4) - f6;
            int i10 = 0;
            int i11 = i6;
            i6 = i9;
            while (i10 < i4) {
                int i12 = 0;
                int i13 = i10;
                while (i12 < 2) {
                    float f9 = i12 == 0 ? f7 : f8;
                    float f10 = i13 * f5;
                    float f11 = radians2 / 2.0f;
                    int i14 = i7 + 1;
                    double d = f;
                    double d2 = (f10 + 3.1415927f) - f11;
                    double sin = Math.sin(d2);
                    double d3 = f9;
                    fArr[i7] = -((float) (sin * d * Math.cos(d3)));
                    int i15 = i14 + 1;
                    fArr[i14] = (float) (d * Math.sin(d3));
                    int i16 = i15 + 1;
                    fArr[i15] = (float) (d * Math.cos(d2) * Math.cos(d3));
                    int i17 = i8 + 1;
                    fArr2[i8] = f10 / radians2;
                    int i18 = i17 + 1;
                    fArr2[i17] = ((i11 + i12) * f4) / radians;
                    if ((i13 == 0 && i12 == 0) || (i13 == i2 && i12 == 1)) {
                        System.arraycopy(fArr, i16 - 3, fArr, i16, 3);
                        i16 += 3;
                        System.arraycopy(fArr2, i18 - 2, fArr2, i18, 2);
                        i18 += 2;
                    }
                    i8 = i18;
                    i12++;
                    i7 = i16;
                }
                i10 = i13 + 1;
            }
        }
        return new C5574d(new C5575a(new C5576b(0, fArr, fArr2, 1)), i3);
    }

    /* renamed from: b */
    public static C5574d m18496b(int i) {
        return m18497a(50.0f, 36, 72, 180.0f, 360.0f, i);
    }
}
