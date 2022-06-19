package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
import com.bumptech.glide.load.C4000d;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy.class */
public abstract class DownsampleStrategy {

    /* renamed from: e */
    public static final DownsampleStrategy f13216e;

    /* renamed from: g */
    public static final DownsampleStrategy f13218g;

    /* renamed from: h */
    public static final C4000d<DownsampleStrategy> f13219h;

    /* renamed from: i */
    static final boolean f13220i;

    /* renamed from: a */
    public static final DownsampleStrategy f13212a = new C4279a();

    /* renamed from: b */
    public static final DownsampleStrategy f13213b = new C4280b();

    /* renamed from: c */
    public static final DownsampleStrategy f13214c = new C4283e();

    /* renamed from: d */
    public static final DownsampleStrategy f13215d = new C4281c();

    /* renamed from: f */
    public static final DownsampleStrategy f13217f = new C4284f();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding.class */
    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$a.class */
    private static class C4279a extends DownsampleStrategy {
        C4279a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: a */
        public SampleSizeRounding mo22971a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: b */
        public float mo22970b(int i, int i2, int i3, int i4) {
            int min;
            float f = 1.0f;
            if (Math.min(i2 / i4, i / i3) != 0) {
                f = 1.0f / Integer.highestOneBit(min);
            }
            return f;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$b.class */
    private static class C4280b extends DownsampleStrategy {
        C4280b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: a */
        public SampleSizeRounding mo22971a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: b */
        public float mo22970b(int i, int i2, int i3, int i4) {
            int max;
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int i5 = 1;
            if (Math.max(1, Integer.highestOneBit(ceil)) >= ceil) {
                i5 = 0;
            }
            return 1.0f / (max << i5);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$c.class */
    private static class C4281c extends DownsampleStrategy {
        C4281c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: a */
        public SampleSizeRounding mo22971a(int i, int i2, int i3, int i4) {
            return mo22970b(i, i2, i3, i4) == 1.0f ? SampleSizeRounding.QUALITY : DownsampleStrategy.f13214c.mo22971a(i, i2, i3, i4);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: b */
        public float mo22970b(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, DownsampleStrategy.f13214c.mo22970b(i, i2, i3, i4));
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$d.class */
    private static class C4282d extends DownsampleStrategy {
        C4282d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: a */
        public SampleSizeRounding mo22971a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: b */
        public float mo22970b(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$e.class */
    private static class C4283e extends DownsampleStrategy {
        C4283e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: a */
        public SampleSizeRounding mo22971a(int i, int i2, int i3, int i4) {
            return DownsampleStrategy.f13220i ? SampleSizeRounding.QUALITY : SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: b */
        public float mo22970b(int i, int i2, int i3, int i4) {
            int max;
            if (DownsampleStrategy.f13220i) {
                return Math.min(i3 / i, i4 / i2);
            }
            float f = 1.0f;
            if (Math.max(i2 / i4, i / i3) != 0) {
                f = 1.0f / Integer.highestOneBit(max);
            }
            return f;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$f.class */
    private static class C4284f extends DownsampleStrategy {
        C4284f() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: a */
        public SampleSizeRounding mo22971a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        /* renamed from: b */
        public float mo22970b(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    static {
        C4282d c4282d = new C4282d();
        f13216e = c4282d;
        f13218g = c4282d;
        f13219h = C4000d.m23510f("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", c4282d);
        f13220i = Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: a */
    public abstract SampleSizeRounding mo22971a(int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract float mo22970b(int i, int i2, int i3, int i4);
}
