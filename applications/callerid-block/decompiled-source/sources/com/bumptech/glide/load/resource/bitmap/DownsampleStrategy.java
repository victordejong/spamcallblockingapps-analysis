package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
import com.bumptech.glide.load.C0733d;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy.class */
public abstract class DownsampleStrategy {

    /* renamed from: c */
    public static final DownsampleStrategy f3726c;

    /* renamed from: e */
    public static final DownsampleStrategy f3728e;

    /* renamed from: f */
    public static final C0733d<DownsampleStrategy> f3729f;

    /* renamed from: g */
    static final boolean f3730g;

    /* renamed from: a */
    public static final DownsampleStrategy f3724a = new c();

    /* renamed from: b */
    public static final DownsampleStrategy f3725b = new a();

    /* renamed from: d */
    public static final DownsampleStrategy f3727d = new d();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding.class */
    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    static {
        b bVar = new b();
        f3726c = bVar;
        f3728e = bVar;
        f3729f = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", bVar);
        f3730g = Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: a */
    public abstract SampleSizeRounding m10917a(int i, int i2, int i3, int i4);

    /* renamed from: b */
    public abstract float m10916b(int i, int i2, int i3, int i4);
}
