package androidx.media2.exoplayer.external.extractor.p068e;

import android.support.p008v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.x */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/x.class */
public final class C1584x implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f6247a = C1586y.f6267a;

    /* renamed from: b */
    private final C2030z f6248b;

    /* renamed from: c */
    private final SparseArray<C1585a> f6249c;

    /* renamed from: d */
    private final C2018p f6250d;

    /* renamed from: e */
    private final C1583w f6251e;

    /* renamed from: f */
    private boolean f6252f;

    /* renamed from: g */
    private boolean f6253g;

    /* renamed from: h */
    private boolean f6254h;

    /* renamed from: i */
    private long f6255i;

    /* renamed from: j */
    private C1580v f6256j;

    /* renamed from: k */
    private AbstractC1601i f6257k;

    /* renamed from: l */
    private boolean f6258l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.e.x$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/x$a.class */
    public static final class C1585a {

        /* renamed from: a */
        final AbstractC1566m f6259a;

        /* renamed from: b */
        final C2030z f6260b;

        /* renamed from: c */
        final C2017o f6261c = new C2017o(new byte[64]);

        /* renamed from: d */
        boolean f6262d;

        /* renamed from: e */
        boolean f6263e;

        /* renamed from: f */
        boolean f6264f;

        /* renamed from: g */
        int f6265g;

        /* renamed from: h */
        long f6266h;

        public C1585a(AbstractC1566m abstractC1566m, C2030z c2030z) {
            this.f6259a = abstractC1566m;
            this.f6260b = c2030z;
        }
    }

    public C1584x() {
        this(new C2030z(0L));
    }

    public C1584x(C2030z c2030z) {
        this.f6248b = c2030z;
        this.f6250d = new C2018p(4096);
        this.f6249c = new SparseArray<>();
        this.f6251e = new C1583w();
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42633a() {
        return new AbstractC1599g[]{new C1584x()};
    }

    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v190, types: [long] */
    /* JADX WARN: Type inference failed for: r0v256, types: [long] */
    /* JADX WARN: Type inference failed for: r0v294, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        char c;
        char c2;
        long mo42600d = abstractC1600h.mo42600d();
        int i = (mo42600d > (-1L) ? 1 : (mo42600d == (-1L) ? 0 : -1));
        if ((i != 0) && !this.f6251e.f6241c) {
            C1583w c1583w = this.f6251e;
            if (!c1583w.f6243e) {
                long mo42600d2 = abstractC1600h.mo42600d();
                int min = (int) Math.min(20000L, mo42600d2);
                long j = mo42600d2 - min;
                if (abstractC1600h.mo42603c() != j) {
                    c1636n.f6500a = j;
                    return 1;
                }
                c1583w.f6240b.m41541a(min);
                abstractC1600h.mo42612a();
                abstractC1600h.mo42601c(c1583w.f6240b.f8131a, 0, min);
                C2018p c2018p = c1583w.f6240b;
                int i2 = c2018p.f8132b;
                int i3 = c2018p.f8133c - 4;
                while (true) {
                    if (i3 < i2) {
                        c2 = 1;
                        break;
                    }
                    if (C1583w.m42635a(c2018p.f8131a, i3) == 442) {
                        c2018p.m41533c(i3 + 4);
                        c2 = C1583w.m42637a(c2018p);
                        if (c2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    i3--;
                }
                c1583w.f6245g = c2;
                c1583w.f6243e = true;
                return 0;
            } else if (c1583w.f6245g == -9223372036854775807L) {
                return c1583w.m42638a(abstractC1600h);
            } else {
                if (c1583w.f6242d) {
                    if (c1583w.f6244f == -9223372036854775807L) {
                        return c1583w.m42638a(abstractC1600h);
                    }
                    c1583w.f6246h = c1583w.f6239a.m41478b(c1583w.f6245g) - c1583w.f6239a.m41478b(c1583w.f6244f);
                    return c1583w.m42638a(abstractC1600h);
                }
                int min2 = (int) Math.min(20000L, abstractC1600h.mo42600d());
                if (abstractC1600h.mo42603c() != 0) {
                    c1636n.f6500a = 0L;
                    return 1;
                }
                c1583w.f6240b.m41541a(min2);
                abstractC1600h.mo42612a();
                abstractC1600h.mo42601c(c1583w.f6240b.f8131a, 0, min2);
                C2018p c2018p2 = c1583w.f6240b;
                int i4 = c2018p2.f8132b;
                int i5 = c2018p2.f8133c;
                while (true) {
                    if (i4 >= i5 - 3) {
                        c = 1;
                        break;
                    }
                    if (C1583w.m42635a(c2018p2.f8131a, i4) == 442) {
                        c2018p2.m41533c(i4 + 4);
                        c = C1583w.m42637a(c2018p2);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    i4++;
                }
                c1583w.f6244f = c;
                c1583w.f6242d = true;
                return 0;
            }
        }
        if (!this.f6258l) {
            this.f6258l = true;
            if (this.f6251e.f6246h != -9223372036854775807L) {
                C1580v c1580v = new C1580v(this.f6251e.f6239a, this.f6251e.f6246h, mo42600d);
                this.f6256j = c1580v;
                this.f6257k.mo42209a(c1580v.m42842a());
            } else {
                this.f6257k.mo42209a(new AbstractC1637o.C1639b(this.f6251e.f6246h));
            }
        }
        C1580v c1580v2 = this.f6256j;
        if (c1580v2 != null && c1580v2.m42837b()) {
            return this.f6256j.m42838a(abstractC1600h, c1636n);
        }
        abstractC1600h.mo42612a();
        char mo42607b = i != 0 ? mo42600d - abstractC1600h.mo42607b() : (char) 65535;
        if ((mo42607b != -1 && mo42607b < 4) || !abstractC1600h.mo42604b(this.f6250d.f8131a, 0, 4, true)) {
            return -1;
        }
        this.f6250d.m41533c(0);
        int m41524i = this.f6250d.m41524i();
        if (m41524i == 441) {
            return -1;
        }
        if (m41524i == 442) {
            abstractC1600h.mo42601c(this.f6250d.f8131a, 0, 10);
            this.f6250d.m41533c(9);
            abstractC1600h.mo42606b((this.f6250d.m41534c() & 7) + 14);
            return 0;
        } else if (m41524i == 443) {
            abstractC1600h.mo42601c(this.f6250d.f8131a, 0, 2);
            this.f6250d.m41533c(0);
            abstractC1600h.mo42606b(this.f6250d.m41532d() + 6);
            return 0;
        } else if (((m41524i & (-256)) >> 8) != 1) {
            abstractC1600h.mo42606b(1);
            return 0;
        } else {
            int i6 = m41524i & 255;
            C1585a c1585a = this.f6249c.get(i6);
            C1585a c1585a2 = c1585a;
            if (!this.f6252f) {
                C1585a c1585a3 = c1585a;
                if (c1585a == null) {
                    C1556c c1556c = null;
                    if (i6 == 189) {
                        c1556c = new C1556c();
                        this.f6253g = true;
                        this.f6255i = abstractC1600h.mo42603c();
                    } else if ((i6 & 224) == 192) {
                        c1556c = new C1577s();
                        this.f6253g = true;
                        this.f6255i = abstractC1600h.mo42603c();
                    } else if ((i6 & 240) == 224) {
                        c1556c = new C1567n();
                        this.f6254h = true;
                        this.f6255i = abstractC1600h.mo42603c();
                    }
                    c1585a3 = c1585a;
                    if (c1556c != null) {
                        c1556c.mo42653a(this.f6257k, new AbstractC1548ah.C1552d(i6, PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
                        c1585a3 = new C1585a(c1556c, this.f6248b);
                        this.f6249c.put(i6, c1585a3);
                    }
                }
                c1585a2 = c1585a3;
                if (abstractC1600h.mo42603c() > ((!this.f6253g || !this.f6254h) ? (char) 0 : this.f6255i + PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
                    this.f6252f = true;
                    this.f6257k.mo42215a();
                    c1585a2 = c1585a3;
                }
            }
            abstractC1600h.mo42601c(this.f6250d.f8131a, 0, 2);
            this.f6250d.m41533c(0);
            int m41532d = this.f6250d.m41532d() + 6;
            if (c1585a2 == null) {
                abstractC1600h.mo42606b(m41532d);
                return 0;
            }
            this.f6250d.m41541a(m41532d);
            abstractC1600h.mo42605b(this.f6250d.f8131a, 0, m41532d);
            this.f6250d.m41533c(6);
            C2018p c2018p3 = this.f6250d;
            c2018p3.m41537a(c1585a2.f6261c.f8127a, 0, 3);
            c1585a2.f6261c.m41554a(0);
            c1585a2.f6261c.m41551b(8);
            c1585a2.f6262d = c1585a2.f6261c.m41545e();
            c1585a2.f6263e = c1585a2.f6261c.m41545e();
            c1585a2.f6261c.m41551b(6);
            c1585a2.f6265g = c1585a2.f6261c.m41548c(8);
            c2018p3.m41537a(c1585a2.f6261c.f8127a, 0, c1585a2.f6265g);
            c1585a2.f6261c.m41554a(0);
            c1585a2.f6266h = 0L;
            if (c1585a2.f6262d) {
                c1585a2.f6261c.m41551b(4);
                long m41548c = c1585a2.f6261c.m41548c(3);
                c1585a2.f6261c.m41551b(1);
                long m41548c2 = c1585a2.f6261c.m41548c(15) << 15;
                c1585a2.f6261c.m41551b(1);
                long m41548c3 = c1585a2.f6261c.m41548c(15);
                c1585a2.f6261c.m41551b(1);
                if (!c1585a2.f6264f && c1585a2.f6263e) {
                    c1585a2.f6261c.m41551b(4);
                    long m41548c4 = c1585a2.f6261c.m41548c(3);
                    c1585a2.f6261c.m41551b(1);
                    long m41548c5 = c1585a2.f6261c.m41548c(15) << 15;
                    c1585a2.f6261c.m41551b(1);
                    long m41548c6 = c1585a2.f6261c.m41548c(15);
                    c1585a2.f6261c.m41551b(1);
                    c1585a2.f6260b.m41478b((m41548c4 << 30) | m41548c5 | m41548c6);
                    c1585a2.f6264f = true;
                }
                c1585a2.f6266h = c1585a2.f6260b.m41478b((m41548c << 30) | m41548c2 | m41548c3);
            }
            c1585a2.f6259a.mo42654a(c1585a2.f6266h, 4);
            c1585a2.f6259a.mo42652a(c2018p3);
            c1585a2.f6259a.mo42651b();
            C2018p c2018p4 = this.f6250d;
            c2018p4.m41535b(c2018p4.f8131a.length);
            return 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        if ((this.f6248b.m41481a() == -9223372036854775807L) || (this.f6248b.f8162a != 0 && this.f6248b.f8162a != j2)) {
            this.f6248b.f8164c = -9223372036854775807L;
            this.f6248b.m41480a(j2);
        }
        C1580v c1580v = this.f6256j;
        if (c1580v != null) {
            c1580v.m42841a(j2);
        }
        for (int i = 0; i < this.f6249c.size(); i++) {
            C1585a valueAt = this.f6249c.valueAt(i);
            valueAt.f6264f = false;
            valueAt.f6259a.mo42655a();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6257k = abstractC1601i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        abstractC1600h.mo42601c(bArr, 0, 14);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            abstractC1600h.mo42602c(bArr[13] & 7);
            abstractC1600h.mo42601c(bArr, 0, 3);
            return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
        }
        return false;
    }
}
