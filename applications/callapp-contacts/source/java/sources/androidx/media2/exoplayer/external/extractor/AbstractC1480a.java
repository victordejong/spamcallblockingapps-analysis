package androidx.media2.exoplayer.external.extractor;

import android.support.p008v4.media.session.PlaybackStateCompat;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a.class */
public abstract class AbstractC1480a {

    /* renamed from: a */
    protected final C1481a f5599a;

    /* renamed from: b */
    protected final AbstractC1486f f5600b;

    /* renamed from: c */
    protected C1483c f5601c;

    /* renamed from: d */
    private final int f5602d;

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$a.class */
    public static final class C1481a implements AbstractC1637o {

        /* renamed from: a */
        final AbstractC1484d f5603a;

        /* renamed from: b */
        final long f5604b;

        /* renamed from: c */
        final long f5605c;

        /* renamed from: d */
        final long f5606d;

        /* renamed from: e */
        final long f5607e;

        /* renamed from: f */
        final long f5608f;

        /* renamed from: g */
        private final long f5609g;

        public C1481a(AbstractC1484d abstractC1484d, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f5603a = abstractC1484d;
            this.f5609g = j;
            this.f5604b = j2;
            this.f5605c = j3;
            this.f5606d = j4;
            this.f5607e = j5;
            this.f5608f = j6;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: a */
        public final AbstractC1637o.C1638a mo42504a(long j) {
            return new AbstractC1637o.C1638a(new C1640p(j, C1483c.m42830a(this.f5603a.mo42829a(j), this.f5604b, this.f5605c, this.f5606d, this.f5607e, this.f5608f)));
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: b */
        public final long mo42503b() {
            return this.f5609g;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: j_ */
        public final boolean mo42502j_() {
            return true;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$b.class */
    public static final class C1482b implements AbstractC1484d {
        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1480a.AbstractC1484d
        /* renamed from: a */
        public final long mo42829a(long j) {
            return j;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$c.class */
    public static final class C1483c {

        /* renamed from: a */
        final long f5610a;

        /* renamed from: b */
        final long f5611b;

        /* renamed from: c */
        long f5612c;

        /* renamed from: d */
        long f5613d;

        /* renamed from: e */
        long f5614e;

        /* renamed from: f */
        long f5615f;

        /* renamed from: g */
        long f5616g;

        /* renamed from: h */
        private final long f5617h;

        protected C1483c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f5610a = j;
            this.f5611b = j2;
            this.f5612c = j3;
            this.f5613d = j4;
            this.f5614e = j5;
            this.f5615f = j6;
            this.f5617h = j7;
            this.f5616g = m42830a(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: a */
        protected static long m42830a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C1996ac.m41671a(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* renamed from: a */
        final void m42831a() {
            this.f5616g = m42830a(this.f5611b, this.f5612c, this.f5613d, this.f5614e, this.f5615f, this.f5617h);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$d.class */
    public interface AbstractC1484d {
        /* renamed from: a */
        long mo42829a(long j);
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$e.class */
    public static final class C1485e {

        /* renamed from: a */
        public static final C1485e f5618a = new C1485e(-3, -9223372036854775807L, -1);

        /* renamed from: b */
        private final int f5619b;

        /* renamed from: c */
        private final long f5620c;

        /* renamed from: d */
        private final long f5621d;

        private C1485e(int i, long j, long j2) {
            this.f5619b = i;
            this.f5620c = j;
            this.f5621d = j2;
        }

        /* renamed from: a */
        public static C1485e m42828a(long j) {
            return new C1485e(0, -9223372036854775807L, j);
        }

        /* renamed from: a */
        public static C1485e m42827a(long j, long j2) {
            return new C1485e(-1, j, j2);
        }

        /* renamed from: b */
        public static C1485e m42825b(long j, long j2) {
            return new C1485e(-2, j, j2);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.a$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/a$f.class */
    public interface AbstractC1486f {
        /* renamed from: a */
        C1485e mo42639a(AbstractC1600h abstractC1600h, long j) throws IOException, InterruptedException;

        /* renamed from: a */
        void mo42640a();
    }

    public AbstractC1480a(AbstractC1484d abstractC1484d, AbstractC1486f abstractC1486f, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f5600b = abstractC1486f;
        this.f5602d = i;
        this.f5599a = new C1481a(abstractC1484d, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    private static int m42839a(AbstractC1600h abstractC1600h, long j, C1636n c1636n) {
        if (j == abstractC1600h.mo42603c()) {
            return 0;
        }
        c1636n.f6500a = j;
        return 1;
    }

    /* renamed from: a */
    private static boolean m42840a(AbstractC1600h abstractC1600h, long j) throws IOException, InterruptedException {
        long mo42603c = j - abstractC1600h.mo42603c();
        if (mo42603c < 0 || mo42603c > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        abstractC1600h.mo42606b((int) mo42603c);
        return true;
    }

    /* renamed from: c */
    private void m42836c() {
        this.f5601c = null;
        this.f5600b.mo42640a();
    }

    /* renamed from: a */
    public final int m42838a(AbstractC1600h abstractC1600h, C1636n c1636n) throws InterruptedException, IOException {
        AbstractC1486f abstractC1486f = (AbstractC1486f) C1993a.m41690a(this.f5600b);
        while (true) {
            C1483c c1483c = (C1483c) C1993a.m41690a(this.f5601c);
            long j = c1483c.f5614e;
            long j2 = c1483c.f5615f;
            long j3 = c1483c.f5616g;
            if (j2 - j <= this.f5602d) {
                m42836c();
                return m42839a(abstractC1600h, j, c1636n);
            } else if (!m42840a(abstractC1600h, j3)) {
                return m42839a(abstractC1600h, j3, c1636n);
            } else {
                abstractC1600h.mo42612a();
                C1485e mo42639a = abstractC1486f.mo42639a(abstractC1600h, c1483c.f5611b);
                int i = mo42639a.f5619b;
                if (i == -3) {
                    m42836c();
                    return m42839a(abstractC1600h, j3, c1636n);
                } else if (i == -2) {
                    long j4 = mo42639a.f5620c;
                    long j5 = mo42639a.f5621d;
                    c1483c.f5612c = j4;
                    c1483c.f5614e = j5;
                    c1483c.m42831a();
                } else if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    long unused = mo42639a.f5621d;
                    m42836c();
                    m42840a(abstractC1600h, mo42639a.f5621d);
                    return m42839a(abstractC1600h, mo42639a.f5621d, c1636n);
                } else {
                    long j6 = mo42639a.f5620c;
                    long j7 = mo42639a.f5621d;
                    c1483c.f5613d = j6;
                    c1483c.f5615f = j7;
                    c1483c.m42831a();
                }
            }
        }
    }

    /* renamed from: a */
    public final AbstractC1637o m42842a() {
        return this.f5599a;
    }

    /* renamed from: a */
    public final void m42841a(long j) {
        C1483c c1483c = this.f5601c;
        if (c1483c == null || c1483c.f5610a != j) {
            this.f5601c = new C1483c(j, this.f5599a.f5603a.mo42829a(j), this.f5599a.f5604b, this.f5599a.f5605c, this.f5599a.f5606d, this.f5599a.f5607e, this.f5599a.f5608f);
        }
    }

    /* renamed from: b */
    public final boolean m42837b() {
        return this.f5601c != null;
    }
}
