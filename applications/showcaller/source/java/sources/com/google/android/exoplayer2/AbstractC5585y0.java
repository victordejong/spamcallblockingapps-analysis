package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.source.ads.C5206a;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.y0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/y0.class */
public abstract class AbstractC5585y0 {

    /* renamed from: a */
    public static final AbstractC5585y0 f18173a = new C5586a();

    /* renamed from: com.google.android.exoplayer2.y0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/y0$a.class */
    static final class C5586a extends AbstractC5585y0 {
        C5586a() {
        }

        @Override // com.google.android.exoplayer2.AbstractC5585y0
        /* renamed from: b */
        public int mo18356b(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.AbstractC5585y0
        /* renamed from: g */
        public C5587b mo18355g(int i, C5587b c5587b, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.AbstractC5585y0
        /* renamed from: i */
        public int mo18354i() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.AbstractC5585y0
        /* renamed from: m */
        public Object mo18353m(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.AbstractC5585y0
        /* renamed from: o */
        public C5588c mo18352o(int i, C5588c c5588c, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.AbstractC5585y0
        /* renamed from: p */
        public int mo18351p() {
            return 0;
        }
    }

    /* renamed from: com.google.android.exoplayer2.y0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/y0$b.class */
    public static final class C5587b {

        /* renamed from: a */
        public Object f18174a;

        /* renamed from: b */
        public Object f18175b;

        /* renamed from: c */
        public int f18176c;

        /* renamed from: d */
        public long f18177d;

        /* renamed from: e */
        private long f18178e;

        /* renamed from: f */
        private C5206a f18179f = C5206a.f16346a;

        /* renamed from: a */
        public int m18350a(int i) {
            return this.f18179f.f16349d[i].f16352a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* renamed from: b */
        public long m18349b(int i, int i2) {
            C5206a.C5207a c5207a = this.f18179f.f16349d[i];
            return c5207a.f16352a != -1 ? c5207a.f16355d[i2] : (char) 1;
        }

        /* renamed from: c */
        public int m18348c() {
            return this.f18179f.f16347b;
        }

        /* renamed from: d */
        public int m18347d(long j) {
            return this.f18179f.m20111a(j, this.f18177d);
        }

        /* renamed from: e */
        public int m18346e(long j) {
            return this.f18179f.m20110b(j);
        }

        /* renamed from: f */
        public long m18345f(int i) {
            return this.f18179f.f16348c[i];
        }

        /* renamed from: g */
        public long m18344g() {
            return this.f18179f.f16350e;
        }

        /* renamed from: h */
        public long m18343h() {
            return this.f18177d;
        }

        /* renamed from: i */
        public int m18342i(int i) {
            return this.f18179f.f16349d[i].m20108a();
        }

        /* renamed from: j */
        public int m18341j(int i, int i2) {
            return this.f18179f.f16349d[i].m20107b(i2);
        }

        /* renamed from: k */
        public long m18340k() {
            return C5543v.m18629b(this.f18178e);
        }

        /* renamed from: l */
        public long m18339l() {
            return this.f18178e;
        }

        /* renamed from: m */
        public boolean m18338m(int i) {
            return !this.f18179f.f16349d[i].m20106c();
        }

        /* renamed from: n */
        public boolean m18337n(int i, int i2) {
            C5206a.C5207a c5207a = this.f18179f.f16349d[i];
            return (c5207a.f16352a == -1 || c5207a.f16354c[i2] == 0) ? false : true;
        }

        /* renamed from: o */
        public C5587b m18336o(Object obj, Object obj2, int i, long j, long j2) {
            return m18335p(obj, obj2, i, j, j2, C5206a.f16346a);
        }

        /* renamed from: p */
        public C5587b m18335p(Object obj, Object obj2, int i, long j, long j2, C5206a c5206a) {
            this.f18174a = obj;
            this.f18175b = obj2;
            this.f18176c = i;
            this.f18177d = j;
            this.f18178e = j2;
            this.f18179f = c5206a;
            return this;
        }
    }

    /* renamed from: com.google.android.exoplayer2.y0$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/y0$c.class */
    public static final class C5588c {

        /* renamed from: a */
        public static final Object f18180a = new Object();

        /* renamed from: b */
        public Object f18181b = f18180a;

        /* renamed from: c */
        public Object f18182c;

        /* renamed from: d */
        public Object f18183d;

        /* renamed from: e */
        public long f18184e;

        /* renamed from: f */
        public long f18185f;

        /* renamed from: g */
        public boolean f18186g;

        /* renamed from: h */
        public boolean f18187h;

        /* renamed from: i */
        public boolean f18188i;

        /* renamed from: j */
        public int f18189j;

        /* renamed from: k */
        public int f18190k;

        /* renamed from: l */
        public long f18191l;

        /* renamed from: m */
        public long f18192m;

        /* renamed from: n */
        public long f18193n;

        /* renamed from: a */
        public long m18334a() {
            return C5543v.m18629b(this.f18191l);
        }

        /* renamed from: b */
        public long m18333b() {
            return this.f18191l;
        }

        /* renamed from: c */
        public long m18332c() {
            return C5543v.m18629b(this.f18192m);
        }

        /* renamed from: d */
        public long m18331d() {
            return this.f18193n;
        }

        /* renamed from: e */
        public C5588c m18330e(Object obj, Object obj2, Object obj3, long j, long j2, boolean z, boolean z2, boolean z3, long j3, long j4, int i, int i2, long j5) {
            this.f18181b = obj;
            this.f18182c = obj2;
            this.f18183d = obj3;
            this.f18184e = j;
            this.f18185f = j2;
            this.f18186g = z;
            this.f18187h = z2;
            this.f18188i = z3;
            this.f18191l = j3;
            this.f18192m = j4;
            this.f18189j = i;
            this.f18190k = i2;
            this.f18193n = j5;
            return this;
        }
    }

    /* renamed from: a */
    public int m18368a(boolean z) {
        return m18358q() ? -1 : 0;
    }

    /* renamed from: b */
    public abstract int mo18356b(Object obj);

    /* renamed from: c */
    public int m18367c(boolean z) {
        return m18358q() ? -1 : mo18351p() - 1;
    }

    /* renamed from: d */
    public final int m18366d(int i, C5587b c5587b, C5588c c5588c, int i2, boolean z) {
        int i3 = m18364f(i, c5587b).f18176c;
        if (m18359n(i3, c5588c).f18190k == i) {
            int m18365e = m18365e(i3, i2, z);
            if (m18365e != -1) {
                return m18359n(m18365e, c5588c).f18189j;
            }
            return -1;
        }
        return i + 1;
    }

    /* renamed from: e */
    public int m18365e(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == m18367c(z) ? -1 : i + 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == m18367c(z) ? m18368a(z) : i + 1;
        }
    }

    /* renamed from: f */
    public final C5587b m18364f(int i, C5587b c5587b) {
        return mo18355g(i, c5587b, false);
    }

    /* renamed from: g */
    public abstract C5587b mo18355g(int i, C5587b c5587b, boolean z);

    /* renamed from: h */
    public C5587b m18363h(Object obj, C5587b c5587b) {
        return mo18355g(mo18356b(obj), c5587b, true);
    }

    /* renamed from: i */
    public abstract int mo18354i();

    /* renamed from: j */
    public final Pair<Object, Long> m18362j(C5588c c5588c, C5587b c5587b, int i, long j) {
        return (Pair) C5508e.m18911e(m18361k(c5588c, c5587b, i, j, 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* renamed from: k */
    public final Pair<Object, Long> m18361k(C5588c c5588c, C5587b c5587b, int i, long j, long j2) {
        C5508e.m18913c(i, 0, mo18351p());
        mo18352o(i, c5588c, j2);
        char c = j;
        if (j == -9223372036854775807L) {
            ?? m18333b = c5588c.m18333b();
            c = m18333b;
            if (m18333b == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c5588c.f18189j;
        char m18331d = c5588c.m18331d() + c;
        ?? r0 = mo18355g(i2, c5587b, true).m18343h();
        while (true) {
            char c2 = r0;
            if (c2 == -9223372036854775807L || m18331d < c2 || i2 >= c5588c.f18190k) {
                break;
            }
            m18331d -= c2;
            i2++;
            r0 = mo18355g(i2, c5587b, true).m18343h();
        }
        return Pair.create(C5508e.m18911e(c5587b.f18175b), Long.valueOf(m18331d));
    }

    /* renamed from: l */
    public int m18360l(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == m18368a(z) ? -1 : i - 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException();
            }
            return i == m18368a(z) ? m18367c(z) : i - 1;
        }
    }

    /* renamed from: m */
    public abstract Object mo18353m(int i);

    /* renamed from: n */
    public final C5588c m18359n(int i, C5588c c5588c) {
        return mo18352o(i, c5588c, 0L);
    }

    /* renamed from: o */
    public abstract C5588c mo18352o(int i, C5588c c5588c, long j);

    /* renamed from: p */
    public abstract int mo18351p();

    /* renamed from: q */
    public final boolean m18358q() {
        return mo18351p() == 0;
    }

    /* renamed from: r */
    public final boolean m18357r(int i, C5587b c5587b, C5588c c5588c, int i2, boolean z) {
        return m18366d(i, c5587b, c5588c, i2, z) == -1;
    }
}
