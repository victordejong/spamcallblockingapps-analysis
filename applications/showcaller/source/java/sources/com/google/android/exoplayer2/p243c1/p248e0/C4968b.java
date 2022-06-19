package com.google.android.exoplayer2.p243c1.p248e0;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C4849z;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import okhttp3.internal.http.StatusLine;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.c1.e0.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/b.class */
public final class C4968b implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15443a = C4967a.f15442a;

    /* renamed from: b */
    private AbstractC4980j f15444b;

    /* renamed from: c */
    private AbstractC4996v f15445c;

    /* renamed from: d */
    private AbstractC4970b f15446d;

    /* renamed from: e */
    private int f15447e = -1;

    /* renamed from: f */
    private long f15448f = -1;

    /* renamed from: com.google.android.exoplayer2.c1.e0.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/b$a.class */
    private static final class C4969a implements AbstractC4970b {

        /* renamed from: a */
        private static final int[] f15449a = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: b */
        private static final int[] f15450b = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: c */
        private final AbstractC4980j f15451c;

        /* renamed from: d */
        private final AbstractC4996v f15452d;

        /* renamed from: e */
        private final C4972c f15453e;

        /* renamed from: f */
        private final int f15454f;

        /* renamed from: g */
        private final byte[] f15455g;

        /* renamed from: h */
        private final C5536v f15456h;

        /* renamed from: i */
        private final int f15457i;

        /* renamed from: j */
        private final Format f15458j;

        /* renamed from: k */
        private int f15459k;

        /* renamed from: l */
        private long f15460l;

        /* renamed from: m */
        private int f15461m;

        /* renamed from: n */
        private long f15462n;

        public C4969a(AbstractC4980j abstractC4980j, AbstractC4996v abstractC4996v, C4972c c4972c) {
            this.f15451c = abstractC4980j;
            this.f15452d = abstractC4996v;
            this.f15453e = c4972c;
            int max = Math.max(1, c4972c.f15473c / 10);
            this.f15457i = max;
            C5536v c5536v = new C5536v(c4972c.f15477g);
            c5536v.m18661r();
            int m18661r = c5536v.m18661r();
            this.f15454f = m18661r;
            int i = c4972c.f15472b;
            int i2 = (((c4972c.f15475e - (i * 4)) * 8) / (c4972c.f15476f * i)) + 1;
            if (m18661r == i2) {
                int m18829i = C5515h0.m18829i(max, m18661r);
                this.f15455g = new byte[c4972c.f15475e * m18829i];
                this.f15456h = new C5536v(m18829i * m21018h(m18661r, i));
                this.f15458j = Format.m21741n(null, "audio/raw", null, ((c4972c.f15473c * c4972c.f15475e) * 8) / m18661r, m21018h(max, i), c4972c.f15472b, c4972c.f15473c, 2, null, null, 0, null);
                return;
            }
            throw new ParserException("Expected frames per block: " + i2 + "; got: " + m18661r);
        }

        /* renamed from: d */
        private void m21022d(byte[] bArr, int i, C5536v c5536v) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.f15453e.f15472b; i3++) {
                    m21021e(bArr, i2, i3, c5536v.f17941a);
                }
            }
            c5536v.m18684I(m21019g(this.f15454f * i));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v49, types: [int] */
        /* JADX WARN: Type inference failed for: r0v63, types: [int] */
        /* renamed from: e */
        private void m21021e(byte[] bArr, int i, int i2, byte[] bArr2) {
            C4972c c4972c = this.f15453e;
            int i3 = c4972c.f15475e;
            int i4 = c4972c.f15472b;
            int i5 = (i * i3) + (i2 * 4);
            int i6 = i3 / i4;
            short s = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int min = Math.min(bArr[i5 + 2] & 255, 88);
            int i7 = f15450b[min];
            int i8 = ((i * this.f15454f * i4) + i2) * 2;
            bArr2[i8] = (byte) (s & 255);
            bArr2[i8 + 1] = (byte) (s >> 8);
            int i9 = min;
            for (int i10 = 0; i10 < (i6 - 4) * 2; i10++) {
                int i11 = bArr[((i10 / 8) * i4 * 4) + (i4 * 4) + i5 + ((i10 / 2) % 4)] & 255;
                int i12 = i10 % 2 == 0 ? i11 & 15 : i11 >> 4;
                int i13 = ((((i12 & 7) * 2) + 1) * i7) >> 3;
                short s2 = i13;
                if ((i12 & 8) != 0) {
                    s2 = -i13;
                }
                s = C5515h0.m18819n(s + s2, -32768, 32767);
                i8 += i4 * 2;
                bArr2[i8] = (byte) (s & 255);
                bArr2[i8 + 1] = (byte) (s >> 8);
                int i14 = f15449a[i12];
                int[] iArr = f15450b;
                i9 = C5515h0.m18819n(i9 + i14, 0, iArr.length - 1);
                i7 = iArr[i9];
            }
        }

        /* renamed from: f */
        private int m21020f(int i) {
            return i / (this.f15453e.f15472b * 2);
        }

        /* renamed from: g */
        private int m21019g(int i) {
            return m21018h(i, this.f15453e.f15472b);
        }

        /* renamed from: h */
        private static int m21018h(int i, int i2) {
            return i * 2 * i2;
        }

        /* renamed from: i */
        private void m21017i(int i) {
            long j = this.f15460l;
            long m18822l0 = C5515h0.m18822l0(this.f15462n, 1000000L, this.f15453e.f15473c);
            int m21019g = m21019g(i);
            this.f15452d.mo19984c(j + m18822l0, 1, m21019g, this.f15461m - m21019g, null);
            this.f15462n += i;
            this.f15461m -= m21019g;
        }

        @Override // com.google.android.exoplayer2.p243c1.p248e0.C4968b.AbstractC4970b
        /* renamed from: a */
        public void mo21016a(long j) {
            this.f15459k = 0;
            this.f15460l = j;
            this.f15461m = 0;
            this.f15462n = 0L;
        }

        @Override // com.google.android.exoplayer2.p243c1.p248e0.C4968b.AbstractC4970b
        /* renamed from: b */
        public void mo21015b(int i, long j) {
            this.f15451c.mo19764c(new C4975e(this.f15453e, this.f15454f, i, j));
            this.f15452d.mo19983d(this.f15458j);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[LOOP:0: B:6:0x002d->B:12:0x0067, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0024 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0061 -> B:4:0x0024). Please submit an issue!!! */
        @Override // com.google.android.exoplayer2.p243c1.p248e0.C4968b.AbstractC4970b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo21014c(com.google.android.exoplayer2.p243c1.AbstractC4979i r6, long r7) {
            /*
                Method dump skipped, instructions count: 264
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p248e0.C4968b.C4969a.mo21014c(com.google.android.exoplayer2.c1.i, long):boolean");
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.e0.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/b$b.class */
    private interface AbstractC4970b {
        /* renamed from: a */
        void mo21016a(long j);

        /* renamed from: b */
        void mo21015b(int i, long j);

        /* renamed from: c */
        boolean mo21014c(AbstractC4979i abstractC4979i, long j);
    }

    /* renamed from: com.google.android.exoplayer2.c1.e0.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e0/b$c.class */
    private static final class C4971c implements AbstractC4970b {

        /* renamed from: a */
        private final AbstractC4980j f15463a;

        /* renamed from: b */
        private final AbstractC4996v f15464b;

        /* renamed from: c */
        private final C4972c f15465c;

        /* renamed from: d */
        private final Format f15466d;

        /* renamed from: e */
        private final int f15467e;

        /* renamed from: f */
        private long f15468f;

        /* renamed from: g */
        private int f15469g;

        /* renamed from: h */
        private long f15470h;

        public C4971c(AbstractC4980j abstractC4980j, AbstractC4996v abstractC4996v, C4972c c4972c, String str, int i) {
            this.f15463a = abstractC4980j;
            this.f15464b = abstractC4996v;
            this.f15465c = c4972c;
            int i2 = (c4972c.f15472b * c4972c.f15476f) / 8;
            if (c4972c.f15475e == i2) {
                int max = Math.max(i2, (c4972c.f15473c * i2) / 10);
                this.f15467e = max;
                int i3 = c4972c.f15473c;
                this.f15466d = Format.m21741n(null, str, null, i2 * i3 * 8, max, c4972c.f15472b, i3, i, null, null, 0, null);
                return;
            }
            throw new ParserException("Expected block size: " + i2 + "; got: " + c4972c.f15475e);
        }

        @Override // com.google.android.exoplayer2.p243c1.p248e0.C4968b.AbstractC4970b
        /* renamed from: a */
        public void mo21016a(long j) {
            this.f15468f = j;
            this.f15469g = 0;
            this.f15470h = 0L;
        }

        @Override // com.google.android.exoplayer2.p243c1.p248e0.C4968b.AbstractC4970b
        /* renamed from: b */
        public void mo21015b(int i, long j) {
            this.f15463a.mo19764c(new C4975e(this.f15465c, 1, i, j));
            this.f15464b.mo19983d(this.f15466d);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004c A[LOOP:0: B:6:0x000f->B:12:0x004c, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0006 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0046 -> B:4:0x0006). Please submit an issue!!! */
        @Override // com.google.android.exoplayer2.p243c1.p248e0.C4968b.AbstractC4970b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo21014c(com.google.android.exoplayer2.p243c1.AbstractC4979i r9, long r10) {
            /*
                Method dump skipped, instructions count: 193
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p248e0.C4968b.C4971c.mo21014c(com.google.android.exoplayer2.c1.i, long):boolean");
        }
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    /* renamed from: a */
    private void m21024a() {
        C5508e.m18908h(this.f15445c);
        C5515h0.m18833g(this.f15444b);
    }

    /* renamed from: d */
    public static /* synthetic */ AbstractC4978h[] m21023d() {
        return new AbstractC4978h[]{new C4968b()};
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        return C4973d.m21013a(abstractC4979i) != null;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        m21024a();
        if (this.f15446d == null) {
            C4972c m21013a = C4973d.m21013a(abstractC4979i);
            if (m21013a == null) {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
            int i = m21013a.f15471a;
            if (i == 17) {
                this.f15446d = new C4969a(this.f15444b, this.f15445c, m21013a);
            } else if (i == 6) {
                this.f15446d = new C4971c(this.f15444b, this.f15445c, m21013a, "audio/g711-alaw", -1);
            } else if (i == 7) {
                this.f15446d = new C4971c(this.f15444b, this.f15445c, m21013a, "audio/g711-mlaw", -1);
            } else {
                int m21439a = C4849z.m21439a(i, m21013a.f15476f);
                if (m21439a == 0) {
                    throw new ParserException("Unsupported WAV format type: " + m21013a.f15471a);
                }
                this.f15446d = new C4971c(this.f15444b, this.f15445c, m21013a, "audio/raw", m21439a);
            }
        }
        int i2 = -1;
        if (this.f15447e == -1) {
            Pair<Long, Long> m21012b = C4973d.m21012b(abstractC4979i);
            this.f15447e = ((Long) m21012b.first).intValue();
            long longValue = ((Long) m21012b.second).longValue();
            this.f15448f = longValue;
            this.f15446d.mo21015b(this.f15447e, longValue);
        } else if (abstractC4979i.mo20999k() == 0) {
            abstractC4979i.mo21002h(this.f15447e);
        }
        C5508e.m18910f(this.f15448f != -1);
        if (!this.f15446d.mo21014c(abstractC4979i, this.f15448f - abstractC4979i.mo20999k())) {
            i2 = 0;
        }
        return i2;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15444b = abstractC4980j;
        this.f15445c = abstractC4980j.mo19748t(0, 1);
        abstractC4980j.mo19752o();
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        AbstractC4970b abstractC4970b = this.f15446d;
        if (abstractC4970b != null) {
            abstractC4970b.mo21016a(j2);
        }
    }
}
