package androidx.media2.exoplayer.external.extractor.f;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.aa;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/d.class */
final class d {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/f/d$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3290a;

        /* renamed from: b  reason: collision with root package name */
        public final long f3291b;

        private a(int i, long j) {
            this.f3290a = i;
            this.f3291b = j;
        }

        public static a a(h hVar, p pVar) throws IOException, InterruptedException {
            hVar.c(pVar.f4166a, 0, 8);
            pVar.c(0);
            return new a(pVar.i(), pVar.h());
        }
    }

    private d() {
    }

    public static c a(h hVar) throws IOException, InterruptedException {
        a a2;
        androidx.media2.exoplayer.external.util.a.a(hVar);
        p pVar = new p(16);
        if (a.a(hVar, pVar).f3290a != 1380533830) {
            return null;
        }
        hVar.c(pVar.f4166a, 0, 4);
        pVar.c(0);
        int i = pVar.i();
        if (i != 1463899717) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Unsupported RIFF format: ");
            sb.append(i);
            j.b("WavHeaderReader", sb.toString());
            return null;
        }
        while (true) {
            a2 = a.a(hVar, pVar);
            if (a2.f3290a == 1718449184) {
                break;
            }
            hVar.c((int) a2.f3291b);
        }
        androidx.media2.exoplayer.external.util.a.b(a2.f3291b >= 16);
        hVar.c(pVar.f4166a, 0, 16);
        pVar.c(0);
        int e = pVar.e();
        int e2 = pVar.e();
        int o = pVar.o();
        int o2 = pVar.o();
        int e3 = pVar.e();
        int e4 = pVar.e();
        int i2 = (e2 * e4) / 8;
        if (e3 == i2) {
            int a3 = aa.a(e, e4);
            if (a3 == 0) {
                StringBuilder sb2 = new StringBuilder(64);
                sb2.append("Unsupported WAV format: ");
                sb2.append(e4);
                sb2.append(" bit/sample, type ");
                sb2.append(e);
                j.b("WavHeaderReader", sb2.toString());
                return null;
            }
            hVar.c(((int) a2.f3291b) - 16);
            return new c(e2, o, o2, e3, e4, a3);
        }
        StringBuilder sb3 = new StringBuilder(55);
        sb3.append("Expected block alignment: ");
        sb3.append(i2);
        sb3.append("; got: ");
        sb3.append(e3);
        throw new ParserException(sb3.toString());
    }
}
