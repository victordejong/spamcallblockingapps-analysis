package p012b.p076s.p078b.p079a.p086s0.p094y;

import androidx.media2.exoplayer.external.ParserException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p083p0.C1267a0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.y.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/y/d.class */
public final class C1498d {

    /* renamed from: b.s.b.a.s0.y.d$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/y/d$a.class */
    public static final class C1499a {

        /* renamed from: a */
        public final int f6156a;

        /* renamed from: b */
        public final long f6157b;

        public C1499a(int i, long j) {
            this.f6156a = i;
            this.f6157b = j;
        }

        /* renamed from: a */
        public static C1499a m33108a(AbstractC1351h hVar, C1184p pVar) throws IOException, InterruptedException {
            hVar.mo33619a(pVar.f4738a, 0, 8);
            pVar.m34358e(0);
            return new C1499a(pVar.m34357f(), pVar.m34351k());
        }
    }

    /* renamed from: a */
    public static C1497c m33110a(AbstractC1351h hVar) throws IOException, InterruptedException {
        C1160a.m34522a(hVar);
        C1184p pVar = new C1184p(16);
        if (C1499a.m33108a(hVar, pVar).f6156a != 1380533830) {
            return null;
        }
        hVar.mo33619a(pVar.f4738a, 0, 4);
        pVar.m34358e(0);
        int f = pVar.m34357f();
        if (f != 1463899717) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Unsupported RIFF format: ");
            sb.append(f);
            C1175j.m34417b("WavHeaderReader", sb.toString());
            return null;
        }
        C1499a a = C1499a.m33108a(hVar, pVar);
        while (a.f6156a != 1718449184) {
            hVar.mo33621a((int) a.f6157b);
            a = C1499a.m33108a(hVar, pVar);
        }
        C1160a.m34518b(a.f6157b >= 16);
        hVar.mo33619a(pVar.f4738a, 0, 16);
        pVar.m34358e(0);
        int m = pVar.m34349m();
        int m2 = pVar.m34349m();
        int l = pVar.m34350l();
        int l2 = pVar.m34350l();
        int m3 = pVar.m34349m();
        int m4 = pVar.m34349m();
        int i = (m2 * m4) / 8;
        if (m3 == i) {
            int a2 = C1267a0.m33942a(m, m4);
            if (a2 == 0) {
                StringBuilder sb2 = new StringBuilder(64);
                sb2.append("Unsupported WAV format: ");
                sb2.append(m4);
                sb2.append(" bit/sample, type ");
                sb2.append(m);
                C1175j.m34417b("WavHeaderReader", sb2.toString());
                return null;
            }
            hVar.mo33621a(((int) a.f6157b) - 16);
            return new C1497c(m2, l, l2, m3, m4, a2);
        }
        StringBuilder sb3 = new StringBuilder(55);
        sb3.append("Expected block alignment: ");
        sb3.append(i);
        sb3.append("; got: ");
        sb3.append(m3);
        throw new ParserException(sb3.toString());
    }

    /* renamed from: a */
    public static void m33109a(AbstractC1351h hVar, C1497c cVar) throws IOException, InterruptedException {
        C1160a.m34522a(hVar);
        C1160a.m34522a(cVar);
        hVar.mo33614c();
        C1184p pVar = new C1184p(8);
        C1499a a = C1499a.m33108a(hVar, pVar);
        while (true) {
            int i = a.f6156a;
            if (i != 1684108385) {
                StringBuilder sb = new StringBuilder(39);
                sb.append("Ignoring unknown WAV chunk: ");
                sb.append(i);
                C1175j.m34414d("WavHeaderReader", sb.toString());
                long j = a.f6157b + 8;
                if (a.f6156a == 1380533830) {
                    j = 12;
                }
                if (j <= 2147483647L) {
                    hVar.mo33613c((int) j);
                    a = C1499a.m33108a(hVar, pVar);
                } else {
                    int i2 = a.f6156a;
                    StringBuilder sb2 = new StringBuilder(51);
                    sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                    sb2.append(i2);
                    throw new ParserException(sb2.toString());
                }
            } else {
                hVar.mo33613c(8);
                cVar.m33120a(hVar.getPosition(), a.f6157b);
                return;
            }
        }
    }
}
