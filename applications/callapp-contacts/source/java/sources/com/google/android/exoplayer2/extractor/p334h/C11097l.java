package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.extractor.h.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/l.class */
public final class C11097l implements AbstractC11094j {

    /* renamed from: a */
    private static final float[] f36231a = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: b */
    private final C11085af f36232b;

    /* renamed from: c */
    private final C11628u f36233c;

    /* renamed from: d */
    private final boolean[] f36234d;

    /* renamed from: e */
    private final C11098a f36235e;

    /* renamed from: f */
    private final C11109r f36236f;

    /* renamed from: g */
    private C11099b f36237g;

    /* renamed from: h */
    private long f36238h;

    /* renamed from: i */
    private String f36239i;

    /* renamed from: j */
    private AbstractC11150x f36240j;

    /* renamed from: k */
    private boolean f36241k;

    /* renamed from: l */
    private long f36242l;

    /* renamed from: com.google.android.exoplayer2.extractor.h.l$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/l$a.class */
    public static final class C11098a {

        /* renamed from: a */
        static final byte[] f36243a = {0, 0, 1};

        /* renamed from: b */
        boolean f36244b;

        /* renamed from: c */
        int f36245c;

        /* renamed from: d */
        public int f36246d;

        /* renamed from: e */
        public int f36247e;

        /* renamed from: f */
        public byte[] f36248f;

        public C11098a(int i) {
            this.f36248f = new byte[i];
        }

        /* renamed from: a */
        public final void m21484a() {
            this.f36244b = false;
            this.f36246d = 0;
            this.f36245c = 0;
        }

        /* renamed from: a */
        public final void m21483a(byte[] bArr, int i, int i2) {
            if (!this.f36244b) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.f36248f;
            int length = bArr2.length;
            int i4 = this.f36246d;
            if (length < i4 + i3) {
                this.f36248f = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f36248f, this.f36246d, i3);
            this.f36246d += i3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.h.l$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/l$b.class */
    static final class C11099b {

        /* renamed from: a */
        final AbstractC11150x f36249a;

        /* renamed from: b */
        boolean f36250b;

        /* renamed from: c */
        boolean f36251c;

        /* renamed from: d */
        boolean f36252d;

        /* renamed from: e */
        int f36253e;

        /* renamed from: f */
        int f36254f;

        /* renamed from: g */
        long f36255g;

        /* renamed from: h */
        long f36256h;

        public C11099b(AbstractC11150x abstractC11150x) {
            this.f36249a = abstractC11150x;
        }

        /* renamed from: a */
        public final void m21482a(byte[] bArr, int i, int i2) {
            if (this.f36251c) {
                int i3 = this.f36254f;
                int i4 = (i + 1) - i3;
                if (i4 >= i2) {
                    this.f36254f = i3 + (i2 - i);
                    return;
                }
                this.f36252d = ((bArr[i4] & 192) >> 6) == 0;
                this.f36251c = false;
            }
        }
    }

    public C11097l() {
        this(null);
    }

    public C11097l(C11085af c11085af) {
        this.f36232b = c11085af;
        this.f36234d = new boolean[4];
        this.f36235e = new C11098a(128);
        if (c11085af != null) {
            this.f36236f = new C11109r(178, 128);
            this.f36233c = new C11628u();
            return;
        }
        this.f36236f = null;
        this.f36233c = null;
    }

    /* renamed from: a */
    private static Format m21485a(C11098a c11098a, int i, String str) {
        float f;
        byte[] copyOf = Arrays.copyOf(c11098a.f36248f, c11098a.f36246d);
        C11627t c11627t = new C11627t(copyOf);
        c11627t.m19816d(i);
        c11627t.m19816d(4);
        c11627t.m19817d();
        c11627t.m19822b(8);
        if (c11627t.m19815e()) {
            c11627t.m19822b(4);
            c11627t.m19822b(3);
        }
        int m19819c = c11627t.m19819c(4);
        if (m19819c == 15) {
            int m19819c2 = c11627t.m19819c(8);
            int m19819c3 = c11627t.m19819c(8);
            if (m19819c3 != 0) {
                f = m19819c2 / m19819c3;
            }
            C11617n.m19863a("H263Reader", "Invalid aspect ratio");
            f = 1.0f;
        } else {
            float[] fArr = f36231a;
            if (m19819c < fArr.length) {
                f = fArr[m19819c];
            }
            C11617n.m19863a("H263Reader", "Invalid aspect ratio");
            f = 1.0f;
        }
        if (c11627t.m19815e()) {
            c11627t.m19822b(2);
            c11627t.m19822b(1);
            if (c11627t.m19815e()) {
                c11627t.m19822b(15);
                c11627t.m19817d();
                c11627t.m19822b(15);
                c11627t.m19817d();
                c11627t.m19822b(15);
                c11627t.m19817d();
                c11627t.m19822b(3);
                c11627t.m19822b(11);
                c11627t.m19817d();
                c11627t.m19822b(15);
                c11627t.m19817d();
            }
        }
        if (c11627t.m19819c(2) != 0) {
            C11617n.m19863a("H263Reader", "Unhandled video object layer shape");
        }
        c11627t.m19817d();
        int m19819c4 = c11627t.m19819c(16);
        c11627t.m19817d();
        if (c11627t.m19815e()) {
            if (m19819c4 == 0) {
                C11617n.m19863a("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i2 = 0;
                for (int i3 = m19819c4 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                c11627t.m19822b(i2);
            }
        }
        c11627t.m19817d();
        int m19819c5 = c11627t.m19819c(13);
        c11627t.m19817d();
        int m19819c6 = c11627t.m19819c(13);
        c11627t.m19817d();
        c11627t.m19817d();
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = str;
        c10828a.f34792k = "video/mp4v-es";
        c10828a.f34797p = m19819c5;
        c10828a.f34798q = m19819c6;
        c10828a.f34801t = f;
        c10828a.f34794m = Collections.singletonList(copyOf);
        return c10828a.m22321a();
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        C11624s.m19831a(this.f36234d);
        this.f36235e.m21484a();
        C11099b c11099b = this.f36237g;
        if (c11099b != null) {
            c11099b.f36250b = false;
            c11099b.f36251c = false;
            c11099b.f36252d = false;
            c11099b.f36253e = -1;
        }
        C11109r c11109r = this.f36236f;
        if (c11109r != null) {
            c11109r.m21462a();
        }
        this.f36238h = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36242l = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36239i = c11083d.m21526c();
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 2);
        this.f36240j = mo20905a;
        this.f36237g = new C11099b(mo20905a);
        C11085af c11085af = this.f36232b;
        if (c11085af != null) {
            c11085af.m21520a(abstractC11130j, c11083d);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01b3  */
    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21464a(com.google.android.exoplayer2.util.C11628u r9) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11097l.mo21464a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
