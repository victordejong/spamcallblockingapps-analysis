package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.extractor.AbstractC1480a;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.v */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/v.class */
final class C1580v extends AbstractC1480a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.e.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/v$a.class */
    public static final class C1582a implements AbstractC1480a.AbstractC1486f {

        /* renamed from: a */
        private final C2030z f6237a;

        /* renamed from: b */
        private final C2018p f6238b;

        private C1582a(C2030z c2030z) {
            this.f6237a = c2030z;
            this.f6238b = new C2018p();
        }

        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1480a.AbstractC1486f
        /* renamed from: a */
        public final AbstractC1480a.C1485e mo42639a(AbstractC1600h abstractC1600h, long j) throws IOException, InterruptedException {
            int m42641a;
            long mo42603c = abstractC1600h.mo42603c();
            int min = (int) Math.min(20000L, abstractC1600h.mo42600d() - mo42603c);
            this.f6238b.m41541a(min);
            abstractC1600h.mo42601c(this.f6238b.f8131a, 0, min);
            C2018p c2018p = this.f6238b;
            int i = -1;
            char c = 1;
            int i2 = -1;
            while (c2018p.m41536b() >= 4) {
                if (C1580v.m42641a(c2018p.f8131a, c2018p.f8132b) != 442) {
                    c2018p.m41531d(1);
                } else {
                    c2018p.m41531d(4);
                    long m42637a = C1583w.m42637a(c2018p);
                    int i3 = i2;
                    char c2 = c;
                    if (m42637a != -9223372036854775807L) {
                        c2 = this.f6237a.m41478b(m42637a);
                        if (c2 > j) {
                            return c == -9223372036854775807L ? AbstractC1480a.C1485e.m42827a(c2, mo42603c) : AbstractC1480a.C1485e.m42828a(mo42603c + i2);
                        } else if (34464 + c2 > j) {
                            return AbstractC1480a.C1485e.m42828a(mo42603c + c2018p.f8132b);
                        } else {
                            i3 = c2018p.f8132b;
                        }
                    }
                    int i4 = c2018p.f8133c;
                    if (c2018p.m41536b() >= 10) {
                        c2018p.m41531d(9);
                        int m41534c = c2018p.m41534c() & 7;
                        if (c2018p.m41536b() >= m41534c) {
                            c2018p.m41531d(m41534c);
                            if (c2018p.m41536b() >= 4) {
                                if (C1580v.m42641a(c2018p.f8131a, c2018p.f8132b) == 443) {
                                    c2018p.m41531d(4);
                                    int m41532d = c2018p.m41532d();
                                    if (c2018p.m41536b() < m41532d) {
                                        c2018p.m41533c(i4);
                                    } else {
                                        c2018p.m41531d(m41532d);
                                    }
                                }
                                while (true) {
                                    if (c2018p.m41536b() < 4 || (m42641a = C1580v.m42641a(c2018p.f8131a, c2018p.f8132b)) == 442 || m42641a == 441 || (m42641a >>> 8) != 1) {
                                        break;
                                    }
                                    c2018p.m41531d(4);
                                    if (c2018p.m41536b() < 2) {
                                        c2018p.m41533c(i4);
                                        break;
                                    }
                                    c2018p.m41533c(Math.min(c2018p.f8133c, c2018p.f8132b + c2018p.m41532d()));
                                }
                            } else {
                                c2018p.m41533c(i4);
                            }
                        } else {
                            c2018p.m41533c(i4);
                        }
                    } else {
                        c2018p.m41533c(i4);
                    }
                    i = c2018p.f8132b;
                    i2 = i3;
                    c = c2;
                }
            }
            return c != -9223372036854775807L ? AbstractC1480a.C1485e.m42825b(c, mo42603c + i) : AbstractC1480a.C1485e.f5618a;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1480a.AbstractC1486f
        /* renamed from: a */
        public final void mo42640a() {
            C2018p c2018p = this.f6238b;
            byte[] bArr = C1996ac.f8067f;
            c2018p.m41538a(bArr, bArr.length);
        }
    }

    public C1580v(C2030z c2030z, long j, long j2) {
        super(new AbstractC1480a.C1482b(), new C1582a(c2030z), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: a */
    static /* synthetic */ int m42641a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
