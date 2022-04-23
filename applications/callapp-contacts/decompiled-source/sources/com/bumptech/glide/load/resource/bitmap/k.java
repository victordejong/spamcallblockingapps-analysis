package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k.class */
public abstract class k {
    public static final k e;
    public static final k g;
    public static final com.bumptech.glide.load.g<k> h;
    static final boolean i;

    /* renamed from: a  reason: collision with root package name */
    public static final k f7664a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final k f7665b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final k f7666c = new e();

    /* renamed from: d  reason: collision with root package name */
    public static final k f7667d = new c();
    public static final k f = new f();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$a.class */
    static final class a extends k {
        a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final float a(int i, int i2, int i3, int i4) {
            int min = Math.min(i2 / i4, i / i3);
            if (min == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(min);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final int b(int i, int i2, int i3, int i4) {
            return g.f7669b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$b.class */
    static final class b extends k {
        b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final float a(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int i5 = 1;
            int max = Math.max(1, Integer.highestOneBit(ceil));
            if (max >= ceil) {
                i5 = 0;
            }
            return 1.0f / (max << i5);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final int b(int i, int i2, int i3, int i4) {
            return g.f7668a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$c.class */
    static final class c extends k {
        c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final float a(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, f7666c.a(i, i2, i3, i4));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final int b(int i, int i2, int i3, int i4) {
            return a(i, i2, i3, i4) == 1.0f ? g.f7669b : f7666c.b(i, i2, i3, i4);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$d.class */
    static final class d extends k {
        d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final float a(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final int b(int i, int i2, int i3, int i4) {
            return g.f7669b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$e.class */
    static final class e extends k {
        e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final float a(int i, int i2, int i3, int i4) {
            if (i) {
                return Math.min(i3 / i, i4 / i2);
            }
            int max = Math.max(i2 / i4, i / i3);
            if (max == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(max);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final int b(int i, int i2, int i3, int i4) {
            return i ? g.f7669b : g.f7668a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$f.class */
    static final class f extends k {
        f() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final float a(int i, int i2, int i3, int i4) {
            return 1.0f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.k
        public final int b(int i, int i2, int i3, int i4) {
            return g.f7669b;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/k$g.class */
    public static final class g extends Enum<g> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f7668a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f7669b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ int[] f7670c = {1, 2};

        private g(String str, int i) {
        }
    }

    static {
        d dVar = new d();
        e = dVar;
        g = dVar;
        h = com.bumptech.glide.load.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", dVar);
        i = Build.VERSION.SDK_INT >= 19;
    }

    public abstract float a(int i2, int i3, int i4, int i5);

    public abstract int b(int i2, int i3, int i4, int i5);
}
