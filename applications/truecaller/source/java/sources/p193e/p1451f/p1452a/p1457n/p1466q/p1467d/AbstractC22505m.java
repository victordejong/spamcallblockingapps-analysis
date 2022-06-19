package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import p193e.p1451f.p1452a.p1457n.C22264h;
/* renamed from: e.f.a.n.q.d.m */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m.class */
public abstract class AbstractC22505m {

    /* renamed from: d */
    public static final AbstractC22505m f62378d;

    /* renamed from: f */
    public static final AbstractC22505m f62380f;

    /* renamed from: g */
    public static final C22264h<AbstractC22505m> f62381g;

    /* renamed from: a */
    public static final AbstractC22505m f62375a = new C22506a();

    /* renamed from: b */
    public static final AbstractC22505m f62376b = new C22509d();

    /* renamed from: c */
    public static final AbstractC22505m f62377c = new C22507b();

    /* renamed from: e */
    public static final AbstractC22505m f62379e = new C22510e();

    /* renamed from: h */
    public static final boolean f62382h = true;

    /* renamed from: e.f.a.n.q.d.m$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m$a.class */
    public static class C22506a extends AbstractC22505m {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: a */
        public EnumC22511f mo8191a(int i, int i2, int i3, int i4) {
            return EnumC22511f.MEMORY;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: b */
        public float mo8190b(int i, int i2, int i3, int i4) {
            int max;
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int i5 = 1;
            if (Math.max(1, Integer.highestOneBit(ceil)) >= ceil) {
                i5 = 0;
            }
            return 1.0f / (max << i5);
        }
    }

    /* renamed from: e.f.a.n.q.d.m$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m$b.class */
    public static class C22507b extends AbstractC22505m {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: a */
        public EnumC22511f mo8191a(int i, int i2, int i3, int i4) {
            EnumC22511f enumC22511f = EnumC22511f.QUALITY;
            if (mo8190b(i, i2, i3, i4) != 1.0f && !AbstractC22505m.f62382h) {
                enumC22511f = EnumC22511f.MEMORY;
            }
            return enumC22511f;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: b */
        public float mo8190b(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, AbstractC22505m.f62376b.mo8190b(i, i2, i3, i4));
        }
    }

    /* renamed from: e.f.a.n.q.d.m$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m$c.class */
    public static class C22508c extends AbstractC22505m {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: a */
        public EnumC22511f mo8191a(int i, int i2, int i3, int i4) {
            return EnumC22511f.QUALITY;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: b */
        public float mo8190b(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    /* renamed from: e.f.a.n.q.d.m$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m$d.class */
    public static class C22509d extends AbstractC22505m {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: a */
        public EnumC22511f mo8191a(int i, int i2, int i3, int i4) {
            return AbstractC22505m.f62382h ? EnumC22511f.QUALITY : EnumC22511f.MEMORY;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: b */
        public float mo8190b(int i, int i2, int i3, int i4) {
            int max;
            if (AbstractC22505m.f62382h) {
                return Math.min(i3 / i, i4 / i2);
            }
            float f = 1.0f;
            if (Math.max(i2 / i4, i / i3) != 0) {
                f = 1.0f / Integer.highestOneBit(max);
            }
            return f;
        }
    }

    /* renamed from: e.f.a.n.q.d.m$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m$e.class */
    public static class C22510e extends AbstractC22505m {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: a */
        public EnumC22511f mo8191a(int i, int i2, int i3, int i4) {
            return EnumC22511f.QUALITY;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m
        /* renamed from: b */
        public float mo8190b(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    /* renamed from: e.f.a.n.q.d.m$f */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/m$f.class */
    public enum EnumC22511f {
        MEMORY,
        QUALITY
    }

    static {
        C22508c c22508c = new C22508c();
        f62378d = c22508c;
        f62380f = c22508c;
        f62381g = C22264h.m8362a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", c22508c);
    }

    /* renamed from: a */
    public abstract EnumC22511f mo8191a(int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract float mo8190b(int i, int i2, int i3, int i4);
}
