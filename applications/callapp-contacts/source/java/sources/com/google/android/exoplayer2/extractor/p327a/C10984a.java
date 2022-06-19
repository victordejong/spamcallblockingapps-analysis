package com.google.android.exoplayer2.extractor.p327a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C10998d;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/a/a.class */
public final class C10984a implements AbstractC11071h {

    /* renamed from: c */
    private static final int[] f35529c;

    /* renamed from: f */
    private static final int f35532f;

    /* renamed from: g */
    private final byte[] f35533g;

    /* renamed from: h */
    private final int f35534h;

    /* renamed from: i */
    private boolean f35535i;

    /* renamed from: j */
    private long f35536j;

    /* renamed from: k */
    private int f35537k;

    /* renamed from: l */
    private int f35538l;

    /* renamed from: m */
    private boolean f35539m;

    /* renamed from: n */
    private long f35540n;

    /* renamed from: o */
    private int f35541o;

    /* renamed from: p */
    private int f35542p;

    /* renamed from: q */
    private long f35543q;

    /* renamed from: r */
    private AbstractC11130j f35544r;

    /* renamed from: s */
    private AbstractC11150x f35545s;

    /* renamed from: t */
    private AbstractC11146v f35546t;

    /* renamed from: u */
    private boolean f35547u;

    /* renamed from: a */
    public static final AbstractC11133l f35527a = _$$Lambda$a$zojJddZNnAE5hwIEZlpwWg0xDGY.INSTANCE;

    /* renamed from: b */
    private static final int[] f35528b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d */
    private static final byte[] f35530d = C11599af.m19931c("#!AMR\n");

    /* renamed from: e */
    private static final byte[] f35531e = C11599af.m19931c("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f35529c = iArr;
        f35532f = iArr[8];
    }

    public C10984a() {
        this(0);
    }

    public C10984a(int i) {
        this.f35534h = i;
        this.f35533g = new byte[1];
        this.f35541o = -1;
    }

    /* renamed from: a */
    private static boolean m21779a(AbstractC11121i abstractC11121i, byte[] bArr) throws IOException {
        abstractC11121i.mo21406a();
        byte[] bArr2 = new byte[bArr.length];
        abstractC11121i.mo21394d(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21780a() {
        return new AbstractC11071h[]{new C10984a()};
    }

    /* renamed from: b */
    private boolean m21778b(AbstractC11121i abstractC11121i) throws IOException {
        byte[] bArr = f35530d;
        if (m21779a(abstractC11121i, bArr)) {
            this.f35535i = false;
            abstractC11121i.mo21401b(bArr.length);
            return true;
        }
        byte[] bArr2 = f35531e;
        if (!m21779a(abstractC11121i, bArr2)) {
            return false;
        }
        this.f35535i = true;
        abstractC11121i.mo21401b(bArr2.length);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        if ((!r0 && (r0 < 12 || r0 > 14)) != false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[Catch: EOFException -> 0x012b, TRY_ENTER, TryCatch #0 {EOFException -> 0x012b, blocks: (B:4:0x0007, B:11:0x0039, B:35:0x0082, B:40:0x00a3, B:41:0x00c5, B:43:0x00c7, B:45:0x00cd, B:46:0x00d6, B:48:0x00dd, B:55:0x0118, B:56:0x012a), top: B:67:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m21777c(com.google.android.exoplayer2.extractor.AbstractC11121i r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p327a.C10984a.m21777c(com.google.android.exoplayer2.extractor.i):int");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        int i;
        C11593a.m20024a(this.f35545s);
        C11599af.m19974a(this.f35544r);
        if (abstractC11121i.mo21398c() != 0 || m21778b(abstractC11121i)) {
            if (!this.f35547u) {
                this.f35547u = true;
                boolean z = this.f35535i;
                String str = z ? "audio/amr-wb" : "audio/3gpp";
                int i2 = z ? 16000 : 8000;
                AbstractC11150x abstractC11150x = this.f35545s;
                Format.C10828a c10828a = new Format.C10828a();
                c10828a.f34792k = str;
                c10828a.f34793l = f35532f;
                c10828a.f34805x = 1;
                c10828a.f34806y = i2;
                abstractC11150x.mo20831a(c10828a.m22321a());
            }
            int m21777c = m21777c(abstractC11121i);
            long mo21395d = abstractC11121i.mo21395d();
            if (!this.f35539m) {
                if ((this.f35534h & 1) == 0 || mo21395d == -1 || !((i = this.f35541o) == -1 || i == this.f35537k)) {
                    AbstractC11146v.C11148b c11148b = new AbstractC11146v.C11148b(-9223372036854775807L);
                    this.f35546t = c11148b;
                    this.f35544r.mo20901a(c11148b);
                    this.f35539m = true;
                } else if (this.f35542p >= 20 || m21777c == -1) {
                    C10998d c10998d = new C10998d(mo21395d, this.f35540n, (int) (((i * 8) * 1000000) / 20000), i);
                    this.f35546t = c10998d;
                    this.f35544r.mo20901a(c10998d);
                    this.f35539m = true;
                }
            }
            return m21777c;
        }
        throw new ParserException("Could not find AMR header.");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f35536j = 0L;
        this.f35537k = 0;
        this.f35538l = 0;
        if (j != 0) {
            AbstractC11146v abstractC11146v = this.f35546t;
            if (abstractC11146v instanceof C10998d) {
                this.f35543q = ((C10998d) abstractC11146v).m21751b(j);
                return;
            }
        }
        this.f35543q = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35544r = abstractC11130j;
        this.f35545s = abstractC11130j.mo20905a(0, 1);
        abstractC11130j.mo20907a();
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        return m21778b(abstractC11121i);
    }
}
