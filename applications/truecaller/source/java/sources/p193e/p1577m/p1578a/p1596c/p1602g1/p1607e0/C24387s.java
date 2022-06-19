package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/s.class */
public final class C24387s extends AbstractC24287a {

    /* renamed from: e.m.a.c.g1.e0.s$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/s$b.class */
    public static final class C24389b implements AbstractC24287a.AbstractC24293f {

        /* renamed from: a */
        public final C24771c0 f68011a;

        /* renamed from: b */
        public final C24798t f68012b = new C24798t();

        public C24389b(C24771c0 c24771c0, C24388a c24388a) {
            this.f68011a = c24771c0;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a.AbstractC24293f
        /* renamed from: a */
        public void mo5135a() {
            this.f68012b.m4520z(C24773d0.f69432f);
        }

        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a.AbstractC24293f
        /* renamed from: b */
        public AbstractC24287a.C24292e mo5134b(C24353e c24353e, long j) throws IOException, InterruptedException {
            AbstractC24287a.C24292e m5300c;
            int m5173g;
            long j2 = c24353e.f67726d;
            int min = (int) Math.min((long) DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL, c24353e.f67725c - j2);
            this.f68012b.m4521y(min);
            c24353e.m5210e(this.f68012b.f69504a, 0, min, false);
            C24798t c24798t = this.f68012b;
            int i = -1;
            int i2 = -1;
            char c = 1;
            while (true) {
                if (c24798t.m4545a() < 4) {
                    m5300c = c != -9223372036854775807L ? AbstractC24287a.C24292e.m5300c(c, j2 + i) : AbstractC24287a.C24292e.f67354d;
                } else if (C24387s.m5173g(c24798t.f69504a, c24798t.f69505b) != 442) {
                    c24798t.m4546D(1);
                } else {
                    c24798t.m4546D(4);
                    long m5170c = C24390t.m5170c(c24798t);
                    int i3 = i2;
                    char c2 = c;
                    if (m5170c != -9223372036854775807L) {
                        c2 = this.f68011a.m4632b(m5170c);
                        if (c2 > j) {
                            m5300c = c == -9223372036854775807L ? AbstractC24287a.C24292e.m5302a(c2, j2) : AbstractC24287a.C24292e.m5301b(j2 + i2);
                        } else if (34464 + c2 > j) {
                            m5300c = AbstractC24287a.C24292e.m5301b(j2 + c24798t.f69505b);
                            break;
                        } else {
                            i3 = c24798t.f69505b;
                        }
                    }
                    int i4 = c24798t.f69506c;
                    if (c24798t.m4545a() >= 10) {
                        c24798t.m4546D(9);
                        int m4529q = c24798t.m4529q() & 7;
                        if (c24798t.m4545a() >= m4529q) {
                            c24798t.m4546D(m4529q);
                            if (c24798t.m4545a() >= 4) {
                                if (C24387s.m5173g(c24798t.f69504a, c24798t.f69505b) == 443) {
                                    c24798t.m4546D(4);
                                    int m4524v = c24798t.m4524v();
                                    if (c24798t.m4545a() < m4524v) {
                                        c24798t.m4547C(i4);
                                    } else {
                                        c24798t.m4546D(m4524v);
                                    }
                                }
                                while (true) {
                                    if (c24798t.m4545a() < 4 || (m5173g = C24387s.m5173g(c24798t.f69504a, c24798t.f69505b)) == 442 || m5173g == 441 || (m5173g >>> 8) != 1) {
                                        break;
                                    }
                                    c24798t.m4546D(4);
                                    if (c24798t.m4545a() < 2) {
                                        c24798t.m4547C(i4);
                                        break;
                                    }
                                    c24798t.m4547C(Math.min(c24798t.f69506c, c24798t.f69505b + c24798t.m4524v()));
                                }
                            } else {
                                c24798t.m4547C(i4);
                            }
                        } else {
                            c24798t.m4547C(i4);
                        }
                    } else {
                        c24798t.m4547C(i4);
                    }
                    i = c24798t.f69505b;
                    i2 = i3;
                    c = c2;
                }
            }
            return m5300c;
        }
    }

    public C24387s(C24771c0 c24771c0, long j, long j2) {
        super(new AbstractC24287a.C24289b(), new C24389b(c24771c0, null), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: g */
    public static int m5173g(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
