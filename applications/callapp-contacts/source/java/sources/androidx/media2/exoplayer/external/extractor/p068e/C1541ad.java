package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.extractor.AbstractC1480a;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.ad */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ad.class */
final class C1541ad extends AbstractC1480a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.e.ad$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ad$a.class */
    public static final class C1542a implements AbstractC1480a.AbstractC1486f {

        /* renamed from: a */
        private final C2030z f5946a;

        /* renamed from: b */
        private final C2018p f5947b = new C2018p();

        /* renamed from: c */
        private final int f5948c;

        public C1542a(int i, C2030z c2030z) {
            this.f5948c = i;
            this.f5946a = c2030z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r0v31 */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38 */
        /* JADX WARN: Type inference failed for: r0v39 */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v59, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1 */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r19v0, types: [long] */
        /* JADX WARN: Type inference failed for: r1v21, types: [long] */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r24v1 */
        /* JADX WARN: Type inference failed for: r24v2, types: [long] */
        /* JADX WARN: Type inference failed for: r2v2 */
        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1480a.AbstractC1486f
        /* renamed from: a */
        public final AbstractC1480a.C1485e mo42639a(AbstractC1600h abstractC1600h, long j) throws IOException, InterruptedException {
            ?? r19;
            int m42702a;
            int m42702a2;
            long mo42603c = abstractC1600h.mo42603c();
            int min = (int) Math.min(112800L, abstractC1600h.mo42600d() - mo42603c);
            this.f5947b.m41541a(min);
            abstractC1600h.mo42601c(this.f5947b.f8131a, 0, min);
            C2018p c2018p = this.f5947b;
            int i = c2018p.f8133c;
            ?? r15 = true;
            ?? r17 = 65535;
            ?? r0 = -9223372036854775807;
            while (true) {
                r19 = r0;
                if (c2018p.m41536b() < 188 || (m42702a2 = (m42702a = C1553ai.m42702a(c2018p.f8131a, c2018p.f8132b, i)) + 188) > i) {
                    break;
                }
                long m42704a = C1553ai.m42704a(c2018p, m42702a, this.f5948c);
                ?? r22 = r17;
                ?? r24 = r19;
                if (m42704a != -9223372036854775807L) {
                    r24 = this.f5946a.m41478b(m42704a);
                    if (r24 > j) {
                        return r19 == -9223372036854775807L ? AbstractC1480a.C1485e.m42827a(r24, mo42603c) : AbstractC1480a.C1485e.m42828a(mo42603c + r17);
                    } else if (34464 + r24 > j) {
                        return AbstractC1480a.C1485e.m42828a(mo42603c + m42702a);
                    } else {
                        r22 = m42702a;
                    }
                }
                c2018p.m41533c(m42702a2);
                r15 = m42702a2;
                r17 = r22;
                r0 = r24;
            }
            return r19 != -9223372036854775807L ? AbstractC1480a.C1485e.m42825b(r19, mo42603c + (r15 == true ? 1L : 0L)) : AbstractC1480a.C1485e.f5618a;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1480a.AbstractC1486f
        /* renamed from: a */
        public final void mo42640a() {
            C2018p c2018p = this.f5947b;
            byte[] bArr = C1996ac.f8067f;
            c2018p.m41538a(bArr, bArr.length);
        }
    }

    public C1541ad(C2030z c2030z, long j, long j2, int i) {
        super(new AbstractC1480a.C1482b(), new C1542a(i, c2030z), j, 0L, j + 1, 0L, j2, 188L, 940);
    }
}
