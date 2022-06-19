package androidx.media2.exoplayer.external.extractor.p069f;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.extractor.p069f.C1592d;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.f.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/a.class */
public final class C1589a implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f6268a = C1590b.f6274a;

    /* renamed from: b */
    private AbstractC1601i f6269b;

    /* renamed from: c */
    private AbstractC1641q f6270c;

    /* renamed from: d */
    private C1591c f6271d;

    /* renamed from: e */
    private int f6272e;

    /* renamed from: f */
    private int f6273f;

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42630a() {
        return new AbstractC1599g[]{new C1589a()};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        if (this.f6271d == null) {
            C1591c m42628a = C1592d.m42628a(abstractC1600h);
            this.f6271d = m42628a;
            if (m42628a == null) {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
            this.f6270c.mo42192a(Format.createAudioSampleFormat(null, "audio/raw", null, m42628a.f6276b * m42628a.f6278d * m42628a.f6275a, 32768, this.f6271d.f6275a, this.f6271d.f6276b, this.f6271d.f6279e, null, null, 0, null));
            this.f6272e = this.f6271d.f6277c;
        }
        if (!(this.f6271d.f6280f != -1)) {
            C1591c c1591c = this.f6271d;
            C1993a.m41690a(abstractC1600h);
            C1993a.m41690a(c1591c);
            abstractC1600h.mo42612a();
            C2018p c2018p = new C2018p(8);
            C1592d.C1593a m42627a = C1592d.C1593a.m42627a(abstractC1600h, c2018p);
            while (true) {
                C1592d.C1593a c1593a = m42627a;
                if (c1593a.f6283a != 1684108385) {
                    if (c1593a.f6283a != 1380533830 && c1593a.f6283a != 1718449184) {
                        int i = c1593a.f6283a;
                        StringBuilder sb = new StringBuilder(39);
                        sb.append("Ignoring unknown WAV chunk: ");
                        sb.append(i);
                        C2009j.m41584a("WavHeaderReader", sb.toString());
                    }
                    char c = c1593a.f6284b + 8;
                    if (c1593a.f6283a == 1380533830) {
                        c = '\f';
                    }
                    if (c > 2147483647L) {
                        int i2 = c1593a.f6283a;
                        StringBuilder sb2 = new StringBuilder(51);
                        sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                        sb2.append(i2);
                        throw new ParserException(sb2.toString());
                    }
                    abstractC1600h.mo42606b(c);
                    m42627a = C1592d.C1593a.m42627a(abstractC1600h, c2018p);
                } else {
                    abstractC1600h.mo42606b(8);
                    int mo42603c = (int) abstractC1600h.mo42603c();
                    ?? r0 = mo42603c + c1593a.f6284b;
                    ?? mo42600d = abstractC1600h.mo42600d();
                    char c2 = r0;
                    if (mo42600d != -1) {
                        c2 = r0;
                        if (r0 > mo42600d) {
                            StringBuilder sb3 = new StringBuilder(69);
                            sb3.append("Data exceeds input length: ");
                            sb3.append((long) r0);
                            sb3.append(", ");
                            sb3.append((long) mo42600d);
                            C2009j.m41584a("WavHeaderReader", sb3.toString());
                            c2 = mo42600d;
                        }
                    }
                    c1591c.f6280f = mo42603c;
                    c1591c.f6281g = c2;
                    this.f6269b.mo42209a(this.f6271d);
                }
            }
        } else if (abstractC1600h.mo42603c() == 0) {
            abstractC1600h.mo42606b(this.f6271d.f6280f);
        }
        long j = this.f6271d.f6281g;
        C1993a.m41686b(j != -1);
        long mo42603c2 = j - abstractC1600h.mo42603c();
        if (mo42603c2 <= 0) {
            return -1;
        }
        int mo42308a = this.f6270c.mo42308a(abstractC1600h, (int) Math.min(32768 - this.f6273f, mo42603c2), true);
        if (mo42308a != -1) {
            this.f6273f += mo42308a;
        }
        int i3 = this.f6273f / this.f6272e;
        if (i3 > 0) {
            long m42629b = this.f6271d.m42629b(abstractC1600h.mo42603c() - this.f6273f);
            int i4 = i3 * this.f6272e;
            int i5 = this.f6273f - i4;
            this.f6273f = i5;
            this.f6270c.mo42313a(m42629b, 1, i4, i5, null);
        }
        return mo42308a == -1 ? -1 : 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f6273f = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6269b = abstractC1601i;
        this.f6270c = abstractC1601i.mo42213a(0, 1);
        this.f6271d = null;
        abstractC1601i.mo42215a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        return C1592d.m42628a(abstractC1600h) != null;
    }
}
