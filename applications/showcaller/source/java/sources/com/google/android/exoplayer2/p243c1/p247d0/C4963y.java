package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.y */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/y.class */
final class C4963y {

    /* renamed from: c */
    private boolean f15409c;

    /* renamed from: d */
    private boolean f15410d;

    /* renamed from: e */
    private boolean f15411e;

    /* renamed from: a */
    private final C5509e0 f15407a = new C5509e0(0);

    /* renamed from: f */
    private long f15412f = -9223372036854775807L;

    /* renamed from: g */
    private long f15413g = -9223372036854775807L;

    /* renamed from: h */
    private long f15414h = -9223372036854775807L;

    /* renamed from: b */
    private final C5536v f15408b = new C5536v();

    /* renamed from: a */
    private static boolean m21050a(byte[] bArr) {
        boolean z = false;
        if ((bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1) {
            if ((bArr[8] & 3) == 3) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: b */
    private int m21049b(AbstractC4979i abstractC4979i) {
        this.f15408b.m18683J(C5515h0.f17881f);
        this.f15409c = true;
        abstractC4979i.mo21003g();
        return 0;
    }

    /* renamed from: f */
    private int m21045f(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: h */
    private int m21043h(AbstractC4979i abstractC4979i, C4991s c4991s) {
        int min = (int) Math.min(20000L, abstractC4979i.getLength());
        long j = 0;
        if (abstractC4979i.mo20999k() != j) {
            c4991s.f15517a = j;
            return 1;
        }
        this.f15408b.m18684I(min);
        abstractC4979i.mo21003g();
        abstractC4979i.mo21000j(this.f15408b.f17941a, 0, min);
        this.f15412f = m21042i(this.f15408b);
        this.f15410d = true;
        return 0;
    }

    /* renamed from: i */
    private long m21042i(C5536v c5536v) {
        int m18675d = c5536v.m18675d();
        for (int m18676c = c5536v.m18676c(); m18676c < m18675d - 3; m18676c++) {
            if (m21045f(c5536v.f17941a, m18676c) == 442) {
                c5536v.m18680M(m18676c + 4);
                long m21039l = m21039l(c5536v);
                if (m21039l != -9223372036854775807L) {
                    return m21039l;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: j */
    private int m21041j(AbstractC4979i abstractC4979i, C4991s c4991s) {
        long length = abstractC4979i.getLength();
        int min = (int) Math.min(20000L, length);
        long j = length - min;
        if (abstractC4979i.mo20999k() != j) {
            c4991s.f15517a = j;
            return 1;
        }
        this.f15408b.m18684I(min);
        abstractC4979i.mo21003g();
        abstractC4979i.mo21000j(this.f15408b.f17941a, 0, min);
        this.f15413g = m21040k(this.f15408b);
        this.f15411e = true;
        return 0;
    }

    /* renamed from: k */
    private long m21040k(C5536v c5536v) {
        int m18676c = c5536v.m18676c();
        for (int m18675d = c5536v.m18675d() - 4; m18675d >= m18676c; m18675d--) {
            if (m21045f(c5536v.f17941a, m18675d) == 442) {
                c5536v.m18680M(m18675d + 4);
                long m21039l = m21039l(c5536v);
                if (m21039l != -9223372036854775807L) {
                    return m21039l;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: l */
    public static long m21039l(C5536v c5536v) {
        int m18676c = c5536v.m18676c();
        if (c5536v.m18678a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c5536v.m18671h(bArr, 0, 9);
        c5536v.m18680M(m18676c);
        if (m21050a(bArr)) {
            return m21038m(bArr);
        }
        return -9223372036854775807L;
    }

    /* renamed from: m */
    private static long m21038m(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: c */
    public long m21048c() {
        return this.f15414h;
    }

    /* renamed from: d */
    public C5509e0 m21047d() {
        return this.f15407a;
    }

    /* renamed from: e */
    public boolean m21046e() {
        return this.f15409c;
    }

    /* renamed from: g */
    public int m21044g(AbstractC4979i abstractC4979i, C4991s c4991s) {
        if (!this.f15411e) {
            return m21041j(abstractC4979i, c4991s);
        }
        if (this.f15413g == -9223372036854775807L) {
            return m21049b(abstractC4979i);
        }
        if (!this.f15410d) {
            return m21043h(abstractC4979i, c4991s);
        }
        long j = this.f15412f;
        if (j == -9223372036854775807L) {
            return m21049b(abstractC4979i);
        }
        this.f15414h = this.f15407a.m18905b(this.f15413g) - this.f15407a.m18905b(j);
        return m21049b(abstractC4979i);
    }
}
