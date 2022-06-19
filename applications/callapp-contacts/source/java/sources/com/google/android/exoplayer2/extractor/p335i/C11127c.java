package com.google.android.exoplayer2.extractor.p335i;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.i.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/c.class */
final class C11127c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.i.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i/c$a.class */
    public static final class C11128a {

        /* renamed from: a */
        public final int f36465a;

        /* renamed from: b */
        public final long f36466b;

        private C11128a(int i, long j) {
            this.f36465a = i;
            this.f36466b = j;
        }

        /* renamed from: a */
        public static C11128a m21427a(AbstractC11121i abstractC11121i, C11628u c11628u) throws IOException {
            abstractC11121i.mo21394d(c11628u.f38733a, 0, 8);
            c11628u.m19801d(0);
            return new C11128a(c11628u.m19792j(), c11628u.m19793i());
        }
    }

    private C11127c() {
    }

    /* renamed from: a */
    public static C11126b m21429a(AbstractC11121i abstractC11121i) throws IOException {
        C11128a m21427a;
        byte[] bArr;
        C11593a.m20020b(abstractC11121i);
        C11628u c11628u = new C11628u(16);
        if (C11128a.m21427a(abstractC11121i, c11628u).f36465a != 1380533830) {
            return null;
        }
        abstractC11121i.mo21394d(c11628u.f38733a, 0, 4);
        c11628u.m19801d(0);
        int m19792j = c11628u.m19792j();
        if (m19792j != 1463899717) {
            C11617n.m19858b("WavHeaderReader", "Unsupported RIFF format: ".concat(String.valueOf(m19792j)));
            return null;
        }
        while (true) {
            m21427a = C11128a.m21427a(abstractC11121i, c11628u);
            if (m21427a.f36465a == 1718449184) {
                break;
            }
            abstractC11121i.mo21397c((int) m21427a.f36466b);
        }
        C11593a.m20019b(m21427a.f36466b >= 16);
        abstractC11121i.mo21394d(c11628u.f38733a, 0, 16);
        c11628u.m19801d(0);
        int m19800e = c11628u.m19800e();
        int m19800e2 = c11628u.m19800e();
        int m19786p = c11628u.m19786p();
        int m19786p2 = c11628u.m19786p();
        int m19800e3 = c11628u.m19800e();
        int m19800e4 = c11628u.m19800e();
        int i = ((int) m21427a.f36466b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            abstractC11121i.mo21394d(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = C11599af.f38653f;
        }
        return new C11126b(m19800e, m19800e2, m19786p, m19786p2, m19800e3, m19800e4, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: b */
    public static Pair<Long, Long> m21428b(AbstractC11121i abstractC11121i) throws IOException {
        C11593a.m20020b(abstractC11121i);
        abstractC11121i.mo21406a();
        C11628u c11628u = new C11628u(8);
        C11128a m21427a = C11128a.m21427a(abstractC11121i, c11628u);
        while (true) {
            C11128a c11128a = m21427a;
            if (c11128a.f36465a == 1684108385) {
                abstractC11121i.mo21401b(8);
                long mo21398c = abstractC11121i.mo21398c();
                ?? r0 = c11128a.f36466b + mo21398c;
                ?? mo21395d = abstractC11121i.mo21395d();
                char c = r0;
                if (mo21395d != -1) {
                    c = r0;
                    if (r0 > mo21395d) {
                        C11617n.m19863a("WavHeaderReader", "Data exceeds input length: " + ((long) r0) + ", " + ((long) mo21395d));
                        c = mo21395d;
                    }
                }
                return Pair.create(Long.valueOf(mo21398c), Long.valueOf(c));
            }
            if (c11128a.f36465a != 1380533830 && c11128a.f36465a != 1718449184) {
                C11617n.m19863a("WavHeaderReader", "Ignoring unknown WAV chunk: " + c11128a.f36465a);
            }
            char c2 = c11128a.f36466b + 8;
            if (c11128a.f36465a == 1380533830) {
                c2 = '\f';
            }
            if (c2 > 2147483647L) {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + c11128a.f36465a);
            }
            abstractC11121i.mo21401b(c2);
            m21427a = C11128a.m21427a(abstractC11121i, c11628u);
        }
    }
}
