package androidx.media2.exoplayer.external.extractor.p064a;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1503c;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.a.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a/a.class */
public final class C1487a implements AbstractC1599g {

    /* renamed from: c */
    private static final int[] f5624c;

    /* renamed from: f */
    private static final int f5627f;

    /* renamed from: g */
    private final byte[] f5628g;

    /* renamed from: h */
    private final int f5629h;

    /* renamed from: i */
    private boolean f5630i;

    /* renamed from: j */
    private long f5631j;

    /* renamed from: k */
    private int f5632k;

    /* renamed from: l */
    private int f5633l;

    /* renamed from: m */
    private boolean f5634m;

    /* renamed from: n */
    private long f5635n;

    /* renamed from: o */
    private int f5636o;

    /* renamed from: p */
    private int f5637p;

    /* renamed from: q */
    private long f5638q;

    /* renamed from: r */
    private AbstractC1601i f5639r;

    /* renamed from: s */
    private AbstractC1641q f5640s;

    /* renamed from: t */
    private AbstractC1637o f5641t;

    /* renamed from: u */
    private boolean f5642u;

    /* renamed from: a */
    public static final AbstractC1602j f5622a = C1488b.f5643a;

    /* renamed from: b */
    private static final int[] f5623b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d */
    private static final byte[] f5625d = C1996ac.m41623c("#!AMR\n");

    /* renamed from: e */
    private static final byte[] f5626e = C1996ac.m41623c("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f5624c = iArr;
        f5627f = iArr[8];
    }

    public C1487a() {
        this(0);
    }

    public C1487a(int i) {
        this.f5629h = i;
        this.f5628g = new byte[1];
        this.f5636o = -1;
    }

    /* renamed from: a */
    private static boolean m42834a(AbstractC1600h abstractC1600h, byte[] bArr) throws IOException, InterruptedException {
        abstractC1600h.mo42612a();
        byte[] bArr2 = new byte[bArr.length];
        abstractC1600h.mo42601c(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42835a() {
        return new AbstractC1599g[]{new C1487a()};
    }

    /* renamed from: b */
    private boolean m42833b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        byte[] bArr = f5625d;
        if (m42834a(abstractC1600h, bArr)) {
            this.f5630i = false;
            abstractC1600h.mo42606b(bArr.length);
            return true;
        }
        byte[] bArr2 = f5626e;
        if (!m42834a(abstractC1600h, bArr2)) {
            return false;
        }
        this.f5630i = true;
        abstractC1600h.mo42606b(bArr2.length);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        if ((!r0 && (r0 < 12 || r0 > 14)) != false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[Catch: EOFException -> 0x014f, TRY_ENTER, TryCatch #0 {EOFException -> 0x014f, blocks: (B:4:0x0007, B:11:0x0039, B:35:0x0082, B:40:0x0097, B:41:0x00d4, B:43:0x00d6, B:45:0x00dc, B:46:0x00e5, B:48:0x00ec, B:55:0x0127, B:56:0x014e), top: B:67:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m42832c(androidx.media2.exoplayer.external.extractor.AbstractC1600h r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p064a.C1487a.m42832c(androidx.media2.exoplayer.external.extractor.h):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        int i;
        if (abstractC1600h.mo42603c() != 0 || m42833b(abstractC1600h)) {
            if (!this.f5642u) {
                this.f5642u = true;
                boolean z = this.f5630i;
                this.f5640s.mo42192a(Format.createAudioSampleFormat(null, z ? "audio/amr-wb" : "audio/3gpp", null, -1, f5627f, 1, z ? 16000 : 8000, -1, null, null, 0, null));
            }
            int m42832c = m42832c(abstractC1600h);
            long mo42600d = abstractC1600h.mo42600d();
            if (!this.f5634m) {
                if ((this.f5629h & 1) == 0 || mo42600d == -1 || !((i = this.f5636o) == -1 || i == this.f5632k)) {
                    AbstractC1637o.C1639b c1639b = new AbstractC1637o.C1639b(-9223372036854775807L);
                    this.f5641t = c1639b;
                    this.f5639r.mo42209a(c1639b);
                    this.f5634m = true;
                } else if (this.f5637p >= 20 || m42832c == -1) {
                    C1503c c1503c = new C1503c(mo42600d, this.f5635n, (int) (((i * 8) * 1000000) / 20000), i);
                    this.f5641t = c1503c;
                    this.f5639r.mo42209a(c1503c);
                    this.f5634m = true;
                }
            }
            return m42832c;
        }
        throw new ParserException("Could not find AMR header.");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f5631j = 0L;
        this.f5632k = 0;
        this.f5633l = 0;
        if (j != 0) {
            AbstractC1637o abstractC1637o = this.f5641t;
            if (abstractC1637o instanceof C1503c) {
                this.f5638q = ((C1503c) abstractC1637o).m42785b(j);
                return;
            }
        }
        this.f5638q = 0L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f5639r = abstractC1601i;
        this.f5640s = abstractC1601i.mo42213a(0, 1);
        abstractC1601i.mo42215a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return m42833b(abstractC1600h);
    }
}
