package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.C1512d;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.C1693a;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import androidx.media2.exoplayer.external.source.hls.AbstractC1791f;
import androidx.media2.exoplayer.external.source.hls.playlist.C1816f;
import androidx.media2.exoplayer.external.source.p070a.AbstractC1722d;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1995ab;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.media2.exoplayer.external.source.hls.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/h.class */
public final class C1794h extends AbstractC1722d {

    /* renamed from: o */
    private static final AtomicInteger f7082o = new AtomicInteger();

    /* renamed from: A */
    private final C2018p f7083A;

    /* renamed from: B */
    private final boolean f7084B;

    /* renamed from: C */
    private final boolean f7085C;

    /* renamed from: D */
    private AbstractC1599g f7086D;

    /* renamed from: E */
    private boolean f7087E;

    /* renamed from: F */
    private int f7088F;

    /* renamed from: G */
    private boolean f7089G;

    /* renamed from: H */
    private volatile boolean f7090H;

    /* renamed from: j */
    public final int f7091j;

    /* renamed from: k */
    public final int f7092k;

    /* renamed from: l */
    public final Uri f7093l;

    /* renamed from: m */
    C1797k f7094m;

    /* renamed from: n */
    boolean f7095n;

    /* renamed from: p */
    private final AbstractC1968f f7096p;

    /* renamed from: q */
    private final C1971h f7097q;

    /* renamed from: r */
    private final boolean f7098r;

    /* renamed from: s */
    private final boolean f7099s;

    /* renamed from: t */
    private final C2030z f7100t;

    /* renamed from: u */
    private final boolean f7101u;

    /* renamed from: v */
    private final AbstractC1791f f7102v;

    /* renamed from: w */
    private final List<Format> f7103w;

    /* renamed from: x */
    private final DrmInitData f7104x;

    /* renamed from: y */
    private final AbstractC1599g f7105y;

    /* renamed from: z */
    private final C1693a f7106z;

    private C1794h(AbstractC1791f abstractC1791f, AbstractC1968f abstractC1968f, C1971h c1971h, Format format, boolean z, AbstractC1968f abstractC1968f2, C1971h c1971h2, boolean z2, Uri uri, List<Format> list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, boolean z4, C2030z c2030z, DrmInitData drmInitData, AbstractC1599g abstractC1599g, C1693a c1693a, C2018p c2018p, boolean z5) {
        super(abstractC1968f, c1971h, format, i, obj, j, j2, j3);
        this.f7084B = z;
        this.f7092k = i2;
        this.f7096p = abstractC1968f2;
        this.f7097q = c1971h2;
        this.f7085C = z2;
        this.f7093l = uri;
        this.f7098r = z4;
        this.f7100t = c2030z;
        this.f7099s = z3;
        this.f7102v = abstractC1791f;
        this.f7103w = list;
        this.f7104x = drmInitData;
        this.f7105y = abstractC1599g;
        this.f7106z = c1693a;
        this.f7083A = c2018p;
        this.f7101u = z5;
        this.f7089G = c1971h2 != null;
        this.f7091j = f7082o.getAndIncrement();
    }

    /* renamed from: a */
    private long m42227a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        abstractC1600h.mo42612a();
        try {
            abstractC1600h.mo42601c(this.f7083A.f8131a, 0, 10);
            this.f7083A.m41541a(10);
            if (this.f7083A.m41528f() != 4801587) {
                return -9223372036854775807L;
            }
            this.f7083A.m41531d(3);
            int m41520m = this.f7083A.m41520m();
            int i = m41520m + 10;
            if (i > this.f7083A.f8131a.length) {
                byte[] bArr = this.f7083A.f8131a;
                this.f7083A.m41541a(i);
                System.arraycopy(bArr, 0, this.f7083A.f8131a, 0, 10);
            }
            abstractC1600h.mo42601c(this.f7083A.f8131a, 10, m41520m);
            Metadata m42393a = this.f7106z.m42393a(this.f7083A.f8131a, m41520m);
            if (m42393a == null) {
                return -9223372036854775807L;
            }
            int length = m42393a.length();
            for (int i2 = 0; i2 < length; i2++) {
                Metadata.Entry entry = m42393a.get(i2);
                if (entry instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) entry;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.owner)) {
                        System.arraycopy(privFrame.privateData, 0, this.f7083A.f8131a, 0, 8);
                        this.f7083A.m41541a(8);
                        return this.f7083A.m41522k() & 8589934591L;
                    }
                }
            }
            return -9223372036854775807L;
        } catch (EOFException e) {
            return -9223372036854775807L;
        }
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: a */
    private C1512d m42225a(AbstractC1968f abstractC1968f, C1971h c1971h) throws IOException, InterruptedException {
        C1512d c1512d = new C1512d(abstractC1968f, c1971h.f7956e, abstractC1968f.mo41199a(c1971h));
        if (this.f7086D == null) {
            long m42227a = m42227a(c1512d);
            c1512d.f5820a = 0;
            AbstractC1791f abstractC1791f = this.f7102v;
            AbstractC1599g abstractC1599g = this.f7105y;
            Uri uri = c1971h.f7952a;
            Format format = this.f6756c;
            List<Format> list = this.f7103w;
            DrmInitData drmInitData = this.f7104x;
            C2030z c2030z = this.f7100t;
            abstractC1968f.mo41696b();
            AbstractC1791f.C1792a mo42228a = abstractC1791f.mo42228a(abstractC1599g, uri, format, list, drmInitData, c2030z, c1512d);
            this.f7086D = mo42228a.f7077a;
            this.f7087E = mo42228a.f7079c;
            if (mo42228a.f7078b) {
                this.f7094m.m42202b((long) (m42227a != -9223372036854775807L ? this.f7100t.m41478b(m42227a) : this.f6759f));
            }
            this.f7094m.m42212a(this.f7091j, this.f7101u, false);
            this.f7086D.mo42186a(this.f7094m);
        }
        return c1512d;
    }

    /* renamed from: a */
    public static C1794h m42226a(AbstractC1791f abstractC1791f, AbstractC1968f abstractC1968f, Format format, long j, C1816f c1816f, int i, Uri uri, List<Format> list, int i2, Object obj, boolean z, C1803o c1803o, C1794h c1794h, byte[] bArr, byte[] bArr2) {
        boolean z2;
        C1971h c1971h;
        AbstractC1968f abstractC1968f2;
        boolean z3;
        C2018p c2018p;
        AbstractC1599g abstractC1599g;
        C1693a c1693a;
        C1816f.C1817a c1817a = c1816f.f7256l.get(i);
        C1971h c1971h2 = new C1971h(C1995ab.m41681a(c1816f.f7270n, c1817a.f7258a), c1817a.f7267j, c1817a.f7268k, null);
        boolean z4 = bArr != null;
        AbstractC1968f m42223a = m42223a(abstractC1968f, bArr, z4 ? m42222a(c1817a.f7266i) : null);
        C1816f.C1817a c1817a2 = c1817a.f7259b;
        if (c1817a2 != null) {
            boolean z5 = bArr2 != null;
            byte[] m42222a = z5 ? m42222a(c1817a2.f7266i) : null;
            C1971h c1971h3 = new C1971h(C1995ab.m41681a(c1816f.f7270n, c1817a2.f7258a), c1817a2.f7267j, c1817a2.f7268k, null);
            abstractC1968f2 = m42223a(abstractC1968f, bArr2, m42222a);
            c1971h = c1971h3;
            z2 = z5;
        } else {
            c1971h = null;
            z2 = false;
            abstractC1968f2 = null;
        }
        long j2 = j + c1817a.f7263f;
        long j3 = c1817a.f7260c;
        int i3 = c1816f.f7249e + c1817a.f7262e;
        if (c1794h != null) {
            C1693a c1693a2 = c1794h.f7106z;
            c2018p = c1794h.f7083A;
            z3 = !uri.equals(c1794h.f7093l) || !c1794h.f7095n;
            abstractC1599g = (!c1794h.f7087E || c1794h.f7092k != i3 || z3) ? null : c1794h.f7086D;
            c1693a = c1693a2;
        } else {
            c1693a = new C1693a();
            c2018p = new C2018p(10);
            abstractC1599g = null;
            z3 = false;
        }
        long j4 = c1816f.f7250f;
        long j5 = i;
        boolean z6 = c1817a.f7269l;
        C2030z c2030z = c1803o.f7182a.get(i3);
        C2030z c2030z2 = c2030z;
        if (c2030z == null) {
            c2030z2 = new C2030z(Long.MAX_VALUE);
            c1803o.f7182a.put(i3, c2030z2);
        }
        return new C1794h(abstractC1791f, m42223a, c1971h2, format, z4, abstractC1968f2, c1971h, z2, uri, list, i2, obj, j2, j2 + j3, j4 + j5, i3, z6, z, c2030z2, c1817a.f7264g, abstractC1599g, c1693a, c2018p, z3);
    }

    /* renamed from: a */
    private static AbstractC1968f m42223a(AbstractC1968f abstractC1968f, byte[] bArr, byte[] bArr2) {
        return bArr != null ? new C1781a(abstractC1968f, bArr, bArr2) : abstractC1968f;
    }

    /* renamed from: a */
    private void m42224a(AbstractC1968f abstractC1968f, C1971h c1971h, boolean z) throws IOException, InterruptedException {
        C1971h c1971h2;
        boolean z2;
        if (z) {
            z2 = this.f7088F != 0;
            c1971h2 = c1971h;
        } else {
            c1971h2 = c1971h.m41737a(this.f7088F);
            z2 = false;
        }
        try {
            C1512d m42225a = m42225a(abstractC1968f, c1971h2);
            int i = 0;
            if (z2) {
                m42225a.mo42606b(this.f7088F);
                i = 0;
            }
            while (i == 0 && !this.f7090H) {
                i = this.f7086D.mo42187a(m42225a, (C1636n) null);
            }
            this.f7088F = (int) (m42225a.mo42603c() - c1971h.f7956e);
        } finally {
            C1996ac.m41662a(abstractC1968f);
        }
    }

    /* renamed from: a */
    private static byte[] m42222a(String str) {
        String str2 = str;
        if (C1996ac.m41620d(str).startsWith("0x")) {
            str2 = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str2, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
    /* renamed from: a */
    public final void mo41700a() {
        this.f7090H = true;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC1959d
    /* renamed from: b */
    public final void mo41699b() throws IOException, InterruptedException {
        AbstractC1599g abstractC1599g;
        if (this.f7086D == null && (abstractC1599g = this.f7105y) != null) {
            this.f7086D = abstractC1599g;
            this.f7087E = true;
            this.f7089G = false;
            this.f7094m.m42212a(this.f7091j, this.f7101u, true);
        }
        if (this.f7089G) {
            m42224a(this.f7096p, this.f7097q, this.f7085C);
            this.f7088F = 0;
            this.f7089G = false;
        }
        if (!this.f7090H) {
            if (!this.f7099s) {
                if (!this.f7098r) {
                    this.f7100t.m41479b();
                } else if (this.f7100t.f8162a == Long.MAX_VALUE) {
                    this.f7100t.m41480a(this.f6759f);
                }
                m42224a(this.f6761h, this.f6754a, this.f7084B);
            }
            this.f7095n = true;
        }
    }
}
