package com.google.android.exoplayer2.extractor.p335i;

import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import okhttp3.internal.http.StatusLine;
/* renamed from: com.google.android.exoplayer2.extractor.i.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a.class */
public final class C11122a implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36430a = _$$Lambda$a$Ejz2n3Nq7tms0sJTN0x6WDywUm4.INSTANCE;

    /* renamed from: b */
    private AbstractC11130j f36431b;

    /* renamed from: c */
    private AbstractC11150x f36432c;

    /* renamed from: d */
    private AbstractC11124b f36433d;

    /* renamed from: e */
    private int f36434e = -1;

    /* renamed from: f */
    private long f36435f = -1;

    /* renamed from: com.google.android.exoplayer2.extractor.i.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a$a.class */
    static final class C11123a implements AbstractC11124b {

        /* renamed from: a */
        private static final int[] f36436a = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: b */
        private static final int[] f36437b = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, LossReason.f33015xd24c0733, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: c */
        private final AbstractC11130j f36438c;

        /* renamed from: d */
        private final AbstractC11150x f36439d;

        /* renamed from: e */
        private final C11126b f36440e;

        /* renamed from: f */
        private final int f36441f;

        /* renamed from: g */
        private final byte[] f36442g;

        /* renamed from: h */
        private final C11628u f36443h;

        /* renamed from: i */
        private final int f36444i;

        /* renamed from: j */
        private final Format f36445j;

        /* renamed from: k */
        private int f36446k;

        /* renamed from: l */
        private long f36447l;

        /* renamed from: m */
        private int f36448m;

        /* renamed from: n */
        private long f36449n;

        public C11123a(AbstractC11130j abstractC11130j, AbstractC11150x abstractC11150x, C11126b c11126b) throws ParserException {
            this.f36438c = abstractC11130j;
            this.f36439d = abstractC11150x;
            this.f36440e = c11126b;
            int max = Math.max(1, c11126b.f36460c / 10);
            this.f36444i = max;
            C11628u c11628u = new C11628u(c11126b.f36464g);
            c11628u.m19800e();
            int m19800e = c11628u.m19800e();
            this.f36441f = m19800e;
            int i = c11126b.f36459b;
            int i2 = (((c11126b.f36462e - (i * 4)) * 8) / (c11126b.f36463f * i)) + 1;
            if (m19800e != i2) {
                throw new ParserException("Expected frames per block: " + i2 + "; got: " + m19800e);
            }
            int m19998a = C11599af.m19998a(max, m19800e);
            this.f36442g = new byte[c11126b.f36462e * m19998a];
            this.f36443h = new C11628u(m19998a * m19800e * 2 * i);
            int i3 = ((c11126b.f36460c * c11126b.f36462e) * 8) / m19800e;
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34792k = "audio/raw";
            c10828a.f34787f = i3;
            c10828a.f34788g = i3;
            c10828a.f34793l = max * 2 * i;
            c10828a.f34805x = c11126b.f36459b;
            c10828a.f34806y = c11126b.f36460c;
            c10828a.f34807z = 2;
            this.f36445j = c10828a.m22321a();
        }

        /* renamed from: a */
        private void m21435a(int i) {
            long j = this.f36447l;
            long m19946b = C11599af.m19946b(this.f36449n, 1000000L, this.f36440e.f36460c);
            int m21433c = m21433c(i);
            this.f36439d.mo20835a(j + m19946b, 1, m21433c, this.f36448m - m21433c, null);
            this.f36449n += i;
            this.f36448m -= m21433c;
        }

        /* renamed from: b */
        private int m21434b(int i) {
            return i / (this.f36440e.f36459b * 2);
        }

        /* renamed from: c */
        private int m21433c(int i) {
            return i * 2 * this.f36440e.f36459b;
        }

        @Override // com.google.android.exoplayer2.extractor.p335i.C11122a.AbstractC11124b
        /* renamed from: a */
        public final void mo21432a(int i, long j) {
            this.f36438c.mo20901a(new C11129d(this.f36440e, this.f36441f, i, j));
            this.f36439d.mo20831a(this.f36445j);
        }

        @Override // com.google.android.exoplayer2.extractor.p335i.C11122a.AbstractC11124b
        /* renamed from: a */
        public final void mo21431a(long j) {
            this.f36446k = 0;
            this.f36447l = j;
            this.f36448m = 0;
            this.f36449n = 0L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[LOOP:0: B:6:0x002d->B:12:0x0067, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0024 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v100, types: [int] */
        /* JADX WARN: Type inference failed for: r0v114, types: [int] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0061 -> B:4:0x0024). Please submit an issue!!! */
        @Override // com.google.android.exoplayer2.extractor.p335i.C11122a.AbstractC11124b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo21430a(com.google.android.exoplayer2.extractor.AbstractC11121i r6, long r7) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 674
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p335i.C11122a.C11123a.mo21430a(com.google.android.exoplayer2.extractor.i, long):boolean");
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.i.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a$b.class */
    interface AbstractC11124b {
        /* renamed from: a */
        void mo21432a(int i, long j) throws ParserException;

        /* renamed from: a */
        void mo21431a(long j);

        /* renamed from: a */
        boolean mo21430a(AbstractC11121i abstractC11121i, long j) throws IOException;
    }

    /* renamed from: com.google.android.exoplayer2.extractor.i.a$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/a$c.class */
    static final class C11125c implements AbstractC11124b {

        /* renamed from: a */
        private final AbstractC11130j f36450a;

        /* renamed from: b */
        private final AbstractC11150x f36451b;

        /* renamed from: c */
        private final C11126b f36452c;

        /* renamed from: d */
        private final Format f36453d;

        /* renamed from: e */
        private final int f36454e;

        /* renamed from: f */
        private long f36455f;

        /* renamed from: g */
        private int f36456g;

        /* renamed from: h */
        private long f36457h;

        public C11125c(AbstractC11130j abstractC11130j, AbstractC11150x abstractC11150x, C11126b c11126b, String str, int i) throws ParserException {
            this.f36450a = abstractC11130j;
            this.f36451b = abstractC11150x;
            this.f36452c = c11126b;
            int i2 = (c11126b.f36459b * c11126b.f36463f) / 8;
            if (c11126b.f36462e != i2) {
                throw new ParserException("Expected block size: " + i2 + "; got: " + c11126b.f36462e);
            }
            int i3 = c11126b.f36460c * i2 * 8;
            int max = Math.max(i2, (c11126b.f36460c * i2) / 10);
            this.f36454e = max;
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34792k = str;
            c10828a.f34787f = i3;
            c10828a.f34788g = i3;
            c10828a.f34793l = max;
            c10828a.f34805x = c11126b.f36459b;
            c10828a.f34806y = c11126b.f36460c;
            c10828a.f34807z = i;
            this.f36453d = c10828a.m22321a();
        }

        @Override // com.google.android.exoplayer2.extractor.p335i.C11122a.AbstractC11124b
        /* renamed from: a */
        public final void mo21432a(int i, long j) {
            this.f36450a.mo20901a(new C11129d(this.f36452c, 1, i, j));
            this.f36451b.mo20831a(this.f36453d);
        }

        @Override // com.google.android.exoplayer2.extractor.p335i.C11122a.AbstractC11124b
        /* renamed from: a */
        public final void mo21431a(long j) {
            this.f36455f = j;
            this.f36456g = 0;
            this.f36457h = 0L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5 */
        @Override // com.google.android.exoplayer2.extractor.p335i.C11122a.AbstractC11124b
        /* renamed from: a */
        public final boolean mo21430a(AbstractC11121i abstractC11121i, long j) throws IOException {
            int i;
            int i2;
            int i3;
            while (true) {
                i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i <= 0 || (i2 = this.f36456g) >= (i3 = this.f36454e)) {
                    break;
                }
                int mo20820b = this.f36451b.mo20820b(abstractC11121i, (int) Math.min(i3 - i2, (long) j), true);
                if (mo20820b == -1) {
                    j = 0;
                } else {
                    this.f36456g += mo20820b;
                    j -= mo20820b;
                }
            }
            int i4 = this.f36452c.f36462e;
            int i5 = this.f36456g / i4;
            if (i5 > 0) {
                long j2 = this.f36455f;
                long m19946b = C11599af.m19946b(this.f36457h, 1000000L, this.f36452c.f36460c);
                int i6 = i5 * i4;
                int i7 = this.f36456g - i6;
                this.f36451b.mo20835a(j2 + m19946b, 1, i6, i7, null);
                this.f36457h += i5;
                this.f36456g = i7;
            }
            return i <= 0;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21440a() {
        return new AbstractC11071h[]{new C11122a()};
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a6, code lost:
        if (r0 != 65534) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e3  */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r10, com.google.android.exoplayer2.extractor.C11145u r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p335i.C11122a.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        AbstractC11124b abstractC11124b = this.f36433d;
        if (abstractC11124b != null) {
            abstractC11124b.mo21431a(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36431b = abstractC11130j;
        this.f36432c = abstractC11130j.mo20905a(0, 1);
        abstractC11130j.mo20907a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        return C11127c.m21429a(abstractC11121i) != null;
    }
}
