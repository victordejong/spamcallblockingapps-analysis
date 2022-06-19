package com.bumptech.glide.load.p083c.p084a;

import com.bumptech.glide.load.C1778g;
/* renamed from: com.bumptech.glide.load.c.a.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k.class */
public abstract class AbstractC1594k {

    /* renamed from: a */
    public static final AbstractC1594k f4968a = new C1599e();

    /* renamed from: b */
    public static final AbstractC1594k f4969b = new C1598d();

    /* renamed from: c */
    public static final AbstractC1594k f4970c = new C1595a();

    /* renamed from: d */
    public static final AbstractC1594k f4971d = new C1596b();

    /* renamed from: e */
    public static final AbstractC1594k f4972e = new C1597c();

    /* renamed from: f */
    public static final AbstractC1594k f4973f = new C1600f();

    /* renamed from: g */
    public static final AbstractC1594k f4974g = f4969b;

    /* renamed from: h */
    public static final C1778g<AbstractC1594k> f4975h = C1778g.m16329a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", f4974g);

    /* renamed from: com.bumptech.glide.load.c.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$a.class */
    private static class C1595a extends AbstractC1594k {
        C1595a() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: a */
        public float mo16775a(int i, int i2, int i3, int i4) {
            int min;
            float f = 1.0f;
            if (Math.min(i2 / i4, i / i3) != 0) {
                f = 1.0f / Integer.highestOneBit(min);
            }
            return f;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: b */
        public EnumC1601g mo16774b(int i, int i2, int i3, int i4) {
            return EnumC1601g.QUALITY;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$b.class */
    private static class C1596b extends AbstractC1594k {
        C1596b() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: a */
        public float mo16775a(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int max = Math.max(1, Integer.highestOneBit(ceil));
            return 1.0f / (max << (max < ceil ? 1 : 0));
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: b */
        public EnumC1601g mo16774b(int i, int i2, int i3, int i4) {
            return EnumC1601g.MEMORY;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.k$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$c.class */
    private static class C1597c extends AbstractC1594k {
        C1597c() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: a */
        public float mo16775a(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, f4968a.mo16775a(i, i2, i3, i4));
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: b */
        public EnumC1601g mo16774b(int i, int i2, int i3, int i4) {
            return EnumC1601g.QUALITY;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.k$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$d.class */
    private static class C1598d extends AbstractC1594k {
        C1598d() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: a */
        public float mo16775a(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: b */
        public EnumC1601g mo16774b(int i, int i2, int i3, int i4) {
            return EnumC1601g.QUALITY;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.k$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$e.class */
    private static class C1599e extends AbstractC1594k {
        C1599e() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: a */
        public float mo16775a(int i, int i2, int i3, int i4) {
            return Math.min(i3 / i, i4 / i2);
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: b */
        public EnumC1601g mo16774b(int i, int i2, int i3, int i4) {
            return EnumC1601g.QUALITY;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.k$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$f.class */
    private static class C1600f extends AbstractC1594k {
        C1600f() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: a */
        public float mo16775a(int i, int i2, int i3, int i4) {
            return 1.0f;
        }

        @Override // com.bumptech.glide.load.p083c.p084a.AbstractC1594k
        /* renamed from: b */
        public EnumC1601g mo16774b(int i, int i2, int i3, int i4) {
            return EnumC1601g.QUALITY;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.k$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/k$g.class */
    public enum EnumC1601g {
        MEMORY,
        QUALITY
    }

    /* renamed from: a */
    public abstract float mo16775a(int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract EnumC1601g mo16774b(int i, int i2, int i3, int i4);
}
