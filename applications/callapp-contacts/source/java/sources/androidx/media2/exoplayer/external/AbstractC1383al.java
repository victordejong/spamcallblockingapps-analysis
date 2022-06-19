package androidx.media2.exoplayer.external;

import android.util.Pair;
import androidx.media2.exoplayer.external.source.ads.C1731a;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.al */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/al.class */
public abstract class AbstractC1383al {

    /* renamed from: a */
    public static final AbstractC1383al f5203a = new AbstractC1383al() { // from class: androidx.media2.exoplayer.external.al.1
        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final int mo42088a(Object obj) {
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final C1385a mo42091a(int i, C1385a c1385a, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final C1386b mo42095a(int i, C1386b c1386b, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: a */
        public final Object mo42092a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: b */
        public final int mo42094b() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: c */
        public final int mo42093c() {
            return 0;
        }
    };

    /* renamed from: androidx.media2.exoplayer.external.al$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/al$a.class */
    public static final class C1385a {

        /* renamed from: a */
        public Object f5204a;

        /* renamed from: b */
        public Object f5205b;

        /* renamed from: c */
        public int f5206c;

        /* renamed from: d */
        public long f5207d;

        /* renamed from: e */
        public long f5208e;

        /* renamed from: f */
        C1731a f5209f = C1731a.f6799a;

        /* renamed from: a */
        public final int m43088a(int i, int i2) {
            return this.f5209f.f6802d[i].m42364a(i2);
        }

        /* renamed from: a */
        public final int m43087a(long j) {
            return this.f5209f.m42368a(j);
        }

        /* renamed from: a */
        public final long m43089a(int i) {
            return this.f5209f.f6801c[i];
        }

        /* renamed from: a */
        public final C1385a m43086a(Object obj, Object obj2, int i, long j, long j2, C1731a c1731a) {
            this.f5204a = obj;
            this.f5205b = obj2;
            this.f5206c = i;
            this.f5207d = j;
            this.f5208e = j2;
            this.f5209f = c1731a;
            return this;
        }

        /* renamed from: a */
        public final C1385a m43085a(Object obj, Object obj2, long j, long j2) {
            return m43086a(obj, obj2, 0, j, j2, C1731a.f6799a);
        }

        /* renamed from: b */
        public final int m43084b(int i) {
            return this.f5209f.f6802d[i].m42364a(-1);
        }

        /* renamed from: b */
        public final int m43082b(long j) {
            return this.f5209f.m42366a(j, this.f5207d);
        }

        /* renamed from: b */
        public final boolean m43083b(int i, int i2) {
            C1731a.C1732a c1732a = this.f5209f.f6802d[i];
            return (c1732a.f6805a == -1 || c1732a.f6807c[i2] == 0) ? false : true;
        }

        /* renamed from: c */
        public final int m43081c(int i) {
            return this.f5209f.f6802d[i].f6805a;
        }

        /* renamed from: c */
        public final long m43080c(int i, int i2) {
            C1731a.C1732a c1732a = this.f5209f.f6802d[i];
            if (c1732a.f6805a != -1) {
                return c1732a.f6808d[i2];
            }
            return -9223372036854775807L;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.al$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/al$b.class */
    public static final class C1386b {

        /* renamed from: a */
        public Object f5210a;

        /* renamed from: b */
        public Object f5211b;

        /* renamed from: c */
        public long f5212c;

        /* renamed from: d */
        public long f5213d;

        /* renamed from: e */
        public boolean f5214e;

        /* renamed from: f */
        public boolean f5215f;

        /* renamed from: g */
        public int f5216g;

        /* renamed from: h */
        public int f5217h;

        /* renamed from: i */
        public long f5218i;

        /* renamed from: j */
        public long f5219j;

        /* renamed from: k */
        public long f5220k;

        /* renamed from: a */
        public final C1386b m43079a(Object obj, Object obj2, long j, long j2, boolean z, boolean z2, long j3, long j4, long j5) {
            this.f5210a = obj;
            this.f5211b = obj2;
            this.f5212c = j;
            this.f5213d = j2;
            this.f5214e = z;
            this.f5215f = z2;
            this.f5218i = j3;
            this.f5219j = j4;
            this.f5216g = 0;
            this.f5217h = 0;
            this.f5220k = j5;
            return this;
        }
    }

    /* renamed from: a */
    public int mo42111a(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i != mo42110a(z)) {
                return i + 1;
            }
            return -1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == mo42110a(z) ? mo42108b(z) : i + 1;
        }
    }

    /* renamed from: a */
    public final int m43093a(int i, C1385a c1385a, C1386b c1386b, int i2, boolean z) {
        int i3 = mo42091a(i, c1385a, false).f5206c;
        if (mo42095a(i3, c1386b, 0L).f5217h == i) {
            int mo42111a = mo42111a(i3, i2, z);
            if (mo42111a != -1) {
                return mo42095a(mo42111a, c1386b, 0L).f5216g;
            }
            return -1;
        }
        return i + 1;
    }

    /* renamed from: a */
    public abstract int mo42088a(Object obj);

    /* renamed from: a */
    public int mo42110a(boolean z) {
        if (m43094a()) {
            return -1;
        }
        return mo42094b() - 1;
    }

    /* renamed from: a */
    public final Pair<Object, Long> m43092a(C1386b c1386b, C1385a c1385a, int i, long j) {
        return (Pair) C1993a.m41690a(m43091a(c1386b, c1385a, i, j, 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* renamed from: a */
    public final Pair<Object, Long> m43091a(C1386b c1386b, C1385a c1385a, int i, long j, long j2) {
        C1993a.m41691a(i, mo42094b());
        mo42095a(i, c1386b, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            ?? r0 = c1386b.f5218i;
            c = r0;
            if (r0 == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c1386b.f5216g;
        char c2 = c1386b.f5220k + c;
        ?? r02 = mo42091a(i2, c1385a, true).f5207d;
        while (true) {
            char c3 = r02;
            if (c3 == -9223372036854775807L || c2 < c3 || i2 >= c1386b.f5217h) {
                break;
            }
            c2 -= c3;
            i2++;
            r02 = mo42091a(i2, c1385a, true).f5207d;
        }
        return Pair.create(C1993a.m41690a(c1385a.f5205b), Long.valueOf(c2));
    }

    /* renamed from: a */
    public abstract C1385a mo42091a(int i, C1385a c1385a, boolean z);

    /* renamed from: a */
    public C1385a mo42381a(Object obj, C1385a c1385a) {
        return mo42091a(mo42088a(obj), c1385a, true);
    }

    /* renamed from: a */
    public C1386b mo42095a(int i, C1386b c1386b, long j) {
        return mo42109b(i, c1386b, j);
    }

    /* renamed from: a */
    public abstract Object mo42092a(int i);

    /* renamed from: a */
    public final boolean m43094a() {
        return mo42094b() == 0;
    }

    /* renamed from: b */
    public abstract int mo42094b();

    /* renamed from: b */
    public int mo42108b(boolean z) {
        return m43094a() ? -1 : 0;
    }

    @Deprecated
    /* renamed from: b */
    public C1386b mo42109b(int i, C1386b c1386b, long j) {
        return mo42095a(i, c1386b, j);
    }

    /* renamed from: b */
    public final boolean m43090b(int i, C1385a c1385a, C1386b c1386b, int i2, boolean z) {
        return m43093a(i, c1385a, c1386b, i2, z) == -1;
    }

    /* renamed from: c */
    public abstract int mo42093c();
}
