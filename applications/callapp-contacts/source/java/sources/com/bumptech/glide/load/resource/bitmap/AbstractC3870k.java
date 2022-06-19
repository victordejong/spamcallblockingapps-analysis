package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
import com.bumptech.glide.load.C3819g;
/* renamed from: com.bumptech.glide.load.resource.bitmap.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k.class */
public abstract class AbstractC3870k {

    /* renamed from: e */
    public static final AbstractC3870k f14231e;

    /* renamed from: g */
    public static final AbstractC3870k f14233g;

    /* renamed from: h */
    public static final C3819g<AbstractC3870k> f14234h;

    /* renamed from: i */
    static final boolean f14235i;

    /* renamed from: a */
    public static final AbstractC3870k f14227a = new C3871a();

    /* renamed from: b */
    public static final AbstractC3870k f14228b = new C3872b();

    /* renamed from: c */
    public static final AbstractC3870k f14229c = new C3875e();

    /* renamed from: d */
    public static final AbstractC3870k f14230d = new C3873c();

    /* renamed from: f */
    public static final AbstractC3870k f14232f = new C3876f();

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$a.class */
    static final class C3871a extends AbstractC3870k {
        C3871a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: a */
        public final float mo37282a(int i, int i2, int i3, int i4) {
            int min = Math.min(i2 / i4, i / i3);
            if (min == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(min);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: b */
        public final int mo37281b(int i, int i2, int i3, int i4) {
            return EnumC3877g.f14237b;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$b.class */
    static final class C3872b extends AbstractC3870k {
        C3872b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: a */
        public final float mo37282a(int i, int i2, int i3, int i4) {
            int max;
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int i5 = 1;
            if (Math.max(1, Integer.highestOneBit(ceil)) >= ceil) {
                i5 = 0;
            }
            return 1.0f / (max << i5);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: b */
        public final int mo37281b(int i, int i2, int i3, int i4) {
            return EnumC3877g.f14236a;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$c.class */
    static final class C3873c extends AbstractC3870k {
        C3873c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: a */
        public final float mo37282a(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, f14229c.mo37282a(i, i2, i3, i4));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: b */
        public final int mo37281b(int i, int i2, int i3, int i4) {
            return mo37282a(i, i2, i3, i4) == 1.0f ? EnumC3877g.f14237b : f14229c.mo37281b(i, i2, i3, i4);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$d.class */
    static final class C3874d extends AbstractC3870k {
        C3874d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: a */
        public final float mo37282a(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: b */
        public final int mo37281b(int i, int i2, int i3, int i4) {
            return EnumC3877g.f14237b;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$e.class */
    static final class C3875e extends AbstractC3870k {
        C3875e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: a */
        public final float mo37282a(int i, int i2, int i3, int i4) {
            if (f14235i) {
                return Math.min(i3 / i, i4 / i2);
            }
            int max = Math.max(i2 / i4, i / i3);
            if (max != 0) {
                return 1.0f / Integer.highestOneBit(max);
            }
            return 1.0f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: b */
        public final int mo37281b(int i, int i2, int i3, int i4) {
            return f14235i ? EnumC3877g.f14237b : EnumC3877g.f14236a;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$f.class */
    static final class C3876f extends AbstractC3870k {
        C3876f() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: a */
        public final float mo37282a(int i, int i2, int i3, int i4) {
            return 1.0f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3870k
        /* renamed from: b */
        public final int mo37281b(int i, int i2, int i3, int i4) {
            return EnumC3877g.f14237b;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.k$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$g.class */
    public static final class EnumC3877g extends Enum<EnumC3877g> {

        /* renamed from: a */
        public static final int f14236a = 1;

        /* renamed from: b */
        public static final int f14237b = 2;

        /* renamed from: c */
        private static final /* synthetic */ int[] f14238c = {1, 2};

        private EnumC3877g(String str, int i) {
            super(str, i);
        }
    }

    static {
        C3874d c3874d = new C3874d();
        f14231e = c3874d;
        f14233g = c3874d;
        f14234h = C3819g.m37324a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", c3874d);
        f14235i = Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: a */
    public abstract float mo37282a(int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract int mo37281b(int i, int i2, int i3, int i4);
}
