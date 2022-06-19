package androidx.media2.exoplayer.external.extractor.p069f;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.C1397aa;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.f.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/d.class */
final class C1592d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.f.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/d$a.class */
    public static final class C1593a {

        /* renamed from: a */
        public final int f6283a;

        /* renamed from: b */
        public final long f6284b;

        private C1593a(int i, long j) {
            this.f6283a = i;
            this.f6284b = j;
        }

        /* renamed from: a */
        public static C1593a m42627a(AbstractC1600h abstractC1600h, C2018p c2018p) throws IOException, InterruptedException {
            abstractC1600h.mo42601c(c2018p.f8131a, 0, 8);
            c2018p.m41533c(0);
            return new C1593a(c2018p.m41524i(), c2018p.m41525h());
        }
    }

    private C1592d() {
    }

    /* renamed from: a */
    public static C1591c m42628a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        C1593a m42627a;
        C1993a.m41690a(abstractC1600h);
        C2018p c2018p = new C2018p(16);
        if (C1593a.m42627a(abstractC1600h, c2018p).f6283a != 1380533830) {
            return null;
        }
        abstractC1600h.mo42601c(c2018p.f8131a, 0, 4);
        c2018p.m41533c(0);
        int m41524i = c2018p.m41524i();
        if (m41524i != 1463899717) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Unsupported RIFF format: ");
            sb.append(m41524i);
            C2009j.m41580b("WavHeaderReader", sb.toString());
            return null;
        }
        while (true) {
            m42627a = C1593a.m42627a(abstractC1600h, c2018p);
            if (m42627a.f6283a == 1718449184) {
                break;
            }
            abstractC1600h.mo42602c((int) m42627a.f6284b);
        }
        C1993a.m41686b(m42627a.f6284b >= 16);
        abstractC1600h.mo42601c(c2018p.f8131a, 0, 16);
        c2018p.m41533c(0);
        int m41530e = c2018p.m41530e();
        int m41530e2 = c2018p.m41530e();
        int m41518o = c2018p.m41518o();
        int m41518o2 = c2018p.m41518o();
        int m41530e3 = c2018p.m41530e();
        int m41530e4 = c2018p.m41530e();
        int i = (m41530e2 * m41530e4) / 8;
        if (m41530e3 != i) {
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("Expected block alignment: ");
            sb2.append(i);
            sb2.append("; got: ");
            sb2.append(m41530e3);
            throw new ParserException(sb2.toString());
        }
        int m43025a = C1397aa.m43025a(m41530e, m41530e4);
        if (m43025a != 0) {
            abstractC1600h.mo42602c(((int) m42627a.f6284b) - 16);
            return new C1591c(m41530e2, m41518o, m41518o2, m41530e3, m41530e4, m43025a);
        }
        StringBuilder sb3 = new StringBuilder(64);
        sb3.append("Unsupported WAV format: ");
        sb3.append(m41530e4);
        sb3.append(" bit/sample, type ");
        sb3.append(m41530e);
        C2009j.m41580b("WavHeaderReader", sb3.toString());
        return null;
    }
}
