package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27166a;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.w.s */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/s.class */
public final class C27286s extends AbstractC27166a {

    /* renamed from: n3.y.b.a.q0.w.s$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/s$b.class */
    public static final class C27288b implements AbstractC27166a.AbstractC27173g {

        /* renamed from: a */
        public final C27443v f76749a;

        /* renamed from: b */
        public final C27434m f76750b = new C27434m();

        public C27288b(C27443v c27443v, C27287a c27287a) {
            this.f76749a = c27443v;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27166a.AbstractC27173g
        /* renamed from: a */
        public void mo608a() {
            this.f76750b.m318w(C27445x.f77234f);
        }

        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27166a.AbstractC27173g
        /* renamed from: b */
        public AbstractC27166a.C27172f mo607b(C27176d c27176d, long j, AbstractC27166a.C27169c c27169c) throws IOException, InterruptedException {
            AbstractC27166a.C27172f c27172f;
            int m618f;
            long j2 = c27176d.f76031d;
            int min = (int) Math.min((long) DefaultRefreshIntervals.ACTIVE_CONV_MIN_FETCH_INTERVAL, c27176d.f76030c - j2);
            this.f76750b.m319v(min);
            c27176d.m757d(this.f76750b.f77200a, 0, min, false);
            C27434m c27434m = this.f76750b;
            int i = -1;
            int i2 = -1;
            char c = 1;
            while (true) {
                if (c27434m.m340a() < 4) {
                    c27172f = c != -9223372036854775807L ? new AbstractC27166a.C27172f(-2, c, j2 + i) : AbstractC27166a.C27172f.f76012d;
                } else if (C27286s.m618f(c27434m.f77200a, c27434m.f77201b) != 442) {
                    c27434m.m341A(1);
                } else {
                    c27434m.m341A(4);
                    long m615c = C27289t.m615c(c27434m);
                    int i3 = i2;
                    char c2 = c;
                    if (m615c != -9223372036854775807L) {
                        c2 = this.f76749a.m296b(m615c);
                        if (c2 > j) {
                            c27172f = c == -9223372036854775807L ? new AbstractC27166a.C27172f(-1, c2, j2) : AbstractC27166a.C27172f.m763a(j2 + i2);
                        } else if (34464 + c2 > j) {
                            c27172f = AbstractC27166a.C27172f.m763a(j2 + c27434m.f77201b);
                            break;
                        } else {
                            i3 = c27434m.f77201b;
                        }
                    }
                    int i4 = c27434m.f77202c;
                    if (c27434m.m340a() >= 10) {
                        c27434m.m341A(9);
                        int m326o = c27434m.m326o() & 7;
                        if (c27434m.m340a() >= m326o) {
                            c27434m.m341A(m326o);
                            if (c27434m.m340a() >= 4) {
                                if (C27286s.m618f(c27434m.f77200a, c27434m.f77201b) == 443) {
                                    c27434m.m341A(4);
                                    int m321t = c27434m.m321t();
                                    if (c27434m.m340a() < m321t) {
                                        c27434m.m315z(i4);
                                    } else {
                                        c27434m.m341A(m321t);
                                    }
                                }
                                while (true) {
                                    if (c27434m.m340a() < 4 || (m618f = C27286s.m618f(c27434m.f77200a, c27434m.f77201b)) == 442 || m618f == 441 || (m618f >>> 8) != 1) {
                                        break;
                                    }
                                    c27434m.m341A(4);
                                    if (c27434m.m340a() < 2) {
                                        c27434m.m315z(i4);
                                        break;
                                    }
                                    c27434m.m315z(Math.min(c27434m.f77202c, c27434m.f77201b + c27434m.m321t()));
                                }
                            } else {
                                c27434m.m315z(i4);
                            }
                        } else {
                            c27434m.m315z(i4);
                        }
                    } else {
                        c27434m.m315z(i4);
                    }
                    i = c27434m.f77201b;
                    i2 = i3;
                    c = c2;
                }
            }
            return c27172f;
        }
    }

    public C27286s(C27443v c27443v, long j, long j2) {
        super(new AbstractC27166a.C27168b(), new C27288b(c27443v, null), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: f */
    public static int m618f(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
