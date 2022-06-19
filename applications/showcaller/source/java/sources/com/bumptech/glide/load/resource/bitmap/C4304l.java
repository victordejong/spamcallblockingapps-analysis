package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.load.resource.bitmap.AbstractC4313r;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.p223p.C4377f;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.resource.bitmap.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l.class */
public final class C4304l {

    /* renamed from: d */
    public static final C4000d<Boolean> f13258d;

    /* renamed from: e */
    public static final C4000d<Boolean> f13259e;

    /* renamed from: j */
    private final AbstractC4096e f13264j;

    /* renamed from: k */
    private final DisplayMetrics f13265k;

    /* renamed from: l */
    private final AbstractC4091b f13266l;

    /* renamed from: m */
    private final List<ImageHeaderParser> f13267m;

    /* renamed from: n */
    private final C4312q f13268n = C4312q.m22902b();

    /* renamed from: a */
    public static final C4000d<DecodeFormat> f13255a = C4000d.m23510f("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.f12616f);

    /* renamed from: b */
    public static final C4000d<PreferredColorSpace> f13256b = C4000d.m23510f("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", PreferredColorSpace.SRGB);
    @Deprecated

    /* renamed from: c */
    public static final C4000d<DownsampleStrategy> f13257c = DownsampleStrategy.f13219h;

    /* renamed from: f */
    private static final Set<String> f13260f = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: g */
    private static final AbstractC4306b f13261g = new C4305a();

    /* renamed from: h */
    private static final Set<ImageHeaderParser.ImageType> f13262h = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: i */
    private static final Queue<BitmapFactory.Options> f13263i = C4383k.m22713e(0);

    /* renamed from: com.bumptech.glide.load.resource.bitmap.l$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l$a.class */
    class C4305a implements AbstractC4306b {
        C4305a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C4304l.AbstractC4306b
        /* renamed from: a */
        public void mo22879a(AbstractC4096e abstractC4096e, Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C4304l.AbstractC4306b
        /* renamed from: b */
        public void mo22878b() {
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.l$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l$b.class */
    public interface AbstractC4306b {
        /* renamed from: a */
        void mo22879a(AbstractC4096e abstractC4096e, Bitmap bitmap);

        /* renamed from: b */
        void mo22878b();
    }

    static {
        Boolean bool = Boolean.FALSE;
        f13258d = C4000d.m23510f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f13259e = C4000d.m23510f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
    }

    public C4304l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, AbstractC4096e abstractC4096e, AbstractC4091b abstractC4091b) {
        this.f13267m = list;
        this.f13265k = (DisplayMetrics) C4382j.m22719d(displayMetrics);
        this.f13264j = (AbstractC4096e) C4382j.m22719d(abstractC4096e);
        this.f13266l = (AbstractC4091b) C4382j.m22719d(abstractC4091b);
    }

    /* renamed from: a */
    private static int m22939a(double d) {
        int m22928l = m22928l(d);
        int m22916x = m22916x(m22928l * d);
        return m22916x((d / (m22916x / m22928l)) * m22916x);
    }

    /* renamed from: b */
    private void m22938b(AbstractC4313r abstractC4313r, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        if (this.f13268n.m22895i(i, i2, options, z, z2)) {
            return;
        }
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            z3 = abstractC4313r.mo22891d().hasAlpha();
        } catch (IOException e) {
            z3 = false;
            if (Log.isLoggable("Downsampler", 3)) {
                Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e);
                z3 = false;
            }
        }
        Bitmap.Config config = z3 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config != Bitmap.Config.RGB_565) {
            return;
        }
        options.inDither = true;
    }

    /* JADX WARN: Type inference failed for: r0v158, types: [double] */
    /* JADX WARN: Type inference failed for: r0v172, types: [double] */
    /* renamed from: c */
    private static void m22937c(ImageHeaderParser.ImageType imageType, AbstractC4313r abstractC4313r, AbstractC4306b abstractC4306b, AbstractC4096e abstractC4096e, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        char c;
        if (i2 <= 0 || i3 <= 0) {
            if (!Log.isLoggable("Downsampler", 3)) {
                return;
            }
            Log.d("Downsampler", "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + "]");
            return;
        }
        if (m22922r(i)) {
            i7 = i2;
            i6 = i3;
        } else {
            i6 = i2;
            i7 = i3;
        }
        float mo22970b = downsampleStrategy.mo22970b(i6, i7, i4, i5);
        if (mo22970b <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + mo22970b + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        DownsampleStrategy.SampleSizeRounding mo22971a = downsampleStrategy.mo22971a(i6, i7, i4, i5);
        if (mo22971a == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i6;
        int m22916x = m22916x(mo22970b * f);
        float f2 = i7;
        int m22916x2 = m22916x(mo22970b * f2);
        int i11 = i6 / m22916x;
        int i12 = i7 / m22916x2;
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int max = mo22971a == sampleSizeRounding ? Math.max(i11, i12) : Math.min(i11, i12);
        int i13 = Build.VERSION.SDK_INT;
        if (i13 > 23 || !f13260f.contains(options.outMimeType)) {
            int max2 = Math.max(1, Integer.highestOneBit(max));
            int i14 = max2;
            if (mo22971a == sampleSizeRounding) {
                i14 = max2;
                if (max2 < 1.0f / mo22970b) {
                    i14 = max2 << 1;
                }
            }
            i8 = i14;
        } else {
            i8 = 1;
        }
        options.inSampleSize = i8;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float min = Math.min(i8, 8);
            int ceil = (int) Math.ceil(f / min);
            int ceil2 = (int) Math.ceil(f2 / min);
            int i15 = i8 / 8;
            i9 = ceil2;
            i10 = ceil;
            if (i15 > 0) {
                i10 = ceil / i15;
                i9 = ceil2 / i15;
            }
        } else {
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f3 = i8;
                i10 = (int) Math.floor(f / f3);
                c = Math.floor(f2 / f3);
            } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                if (i13 >= 24) {
                    float f4 = i8;
                    i10 = Math.round(f / f4);
                    i9 = Math.round(f2 / f4);
                } else {
                    float f5 = i8;
                    i10 = (int) Math.floor(f / f5);
                    c = Math.floor(f2 / f5);
                }
            } else if (i6 % i8 == 0 && i7 % i8 == 0) {
                i9 = i7 / i8;
                i10 = i6 / i8;
            } else {
                int[] m22927m = m22927m(abstractC4313r, options, abstractC4306b, abstractC4096e);
                i10 = m22927m[0];
                i9 = m22927m[1];
            }
            i9 = c;
        }
        double mo22970b2 = downsampleStrategy.mo22970b(i10, i9, i4, i5);
        if (i13 >= 19) {
            options.inTargetDensity = m22939a(mo22970b2);
            options.inDensity = m22928l(mo22970b2);
        }
        if (m22921s(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (!Log.isLoggable("Downsampler", 2)) {
            return;
        }
        Log.v("Downsampler", "Calculate scaling, source: [" + i2 + "x" + i3 + "], degreesToRotate: " + i + ", target: [" + i4 + "x" + i5 + "], power of two scaled: [" + i10 + "x" + i9 + "], exact scale factor: " + mo22970b + ", power of 2 sample size: " + i8 + ", adjusted scale factor: " + mo22970b2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
    }

    /* renamed from: e */
    private AbstractC4083s<Bitmap> m22935e(AbstractC4313r abstractC4313r, int i, int i2, C4032e c4032e, AbstractC4306b abstractC4306b) {
        byte[] bArr = (byte[]) this.f13266l.mo23275e(65536, byte[].class);
        BitmapFactory.Options m22929k = m22929k();
        m22929k.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) c4032e.m23457c(f13255a);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) c4032e.m23457c(f13256b);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) c4032e.m23457c(DownsampleStrategy.f13219h);
        boolean booleanValue = ((Boolean) c4032e.m23457c(f13258d)).booleanValue();
        C4000d<Boolean> c4000d = f13259e;
        try {
            return C4297e.m22944f(m22932h(abstractC4313r, m22929k, downsampleStrategy, decodeFormat, preferredColorSpace, c4032e.m23457c(c4000d) != null && ((Boolean) c4032e.m23457c(c4000d)).booleanValue(), i, i2, booleanValue, abstractC4306b), this.f13264j);
        } finally {
            m22918v(m22929k);
            this.f13266l.mo23276d(bArr);
        }
    }

    /* renamed from: h */
    private Bitmap m22932h(AbstractC4313r abstractC4313r, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z, int i, int i2, boolean z2, AbstractC4306b abstractC4306b) {
        long m22735b = C4377f.m22735b();
        int[] m22927m = m22927m(abstractC4313r, options, abstractC4306b, this.f13264j);
        int i3 = m22927m[0];
        int i4 = m22927m[1];
        String str = options.outMimeType;
        if (i3 == -1 || i4 == -1) {
            z = false;
        }
        int mo22894a = abstractC4313r.mo22894a();
        int m22868j = C4322x.m22868j(mo22894a);
        boolean m22865m = C4322x.m22865m(mo22894a);
        int i5 = i == Integer.MIN_VALUE ? m22922r(m22868j) ? i4 : i3 : i;
        int i6 = i2;
        if (i6 == Integer.MIN_VALUE) {
            i6 = m22922r(m22868j) ? i3 : i4;
        }
        ImageHeaderParser.ImageType mo22891d = abstractC4313r.mo22891d();
        m22937c(mo22891d, abstractC4313r, abstractC4306b, this.f13264j, downsampleStrategy, m22868j, i3, i4, i5, i6, options);
        m22938b(abstractC4313r, decodeFormat, z, m22865m, options, i5, i6);
        int i7 = Build.VERSION.SDK_INT;
        boolean z3 = i7 >= 19;
        if ((options.inSampleSize == 1 || z3) && m22914z(mo22891d)) {
            if (i3 < 0 || i4 < 0 || !z2 || !z3) {
                float f = m22921s(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i8 = options.inSampleSize;
                float f2 = i3;
                float f3 = i8;
                int ceil = (int) Math.ceil(f2 / f3);
                int ceil2 = (int) Math.ceil(i4 / f3);
                int round = Math.round(ceil * f);
                int round2 = Math.round(ceil2 * f);
                i5 = round;
                i6 = round2;
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Calculated target [" + round + "x" + round2 + "] for source [" + i3 + "x" + i4 + "], sampleSize: " + i8 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f);
                    i6 = round2;
                    i5 = round;
                }
            }
            if (i5 > 0 && i6 > 0) {
                m22915y(options, this.f13264j, i5, i6);
            }
        }
        if (i7 >= 28) {
            boolean z4 = false;
            if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3) {
                ColorSpace colorSpace = options.outColorSpace;
                z4 = false;
                if (colorSpace != null) {
                    z4 = false;
                    if (colorSpace.isWideGamut()) {
                        z4 = true;
                    }
                }
            }
            options.inPreferredColorSpace = ColorSpace.get(z4 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        } else if (i7 >= 26) {
            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Bitmap m22931i = m22931i(abstractC4313r, options, abstractC4306b, this.f13264j);
        abstractC4306b.mo22879a(this.f13264j, m22931i);
        if (Log.isLoggable("Downsampler", 2)) {
            m22920t(i3, i4, str, options, m22931i, i, i2, m22735b);
        }
        Bitmap bitmap = null;
        if (m22931i != null) {
            m22931i.setDensity(this.f13265k.densityDpi);
            Bitmap m22864n = C4322x.m22864n(this.f13264j, m22931i, mo22894a);
            bitmap = m22864n;
            if (!m22931i.equals(m22864n)) {
                this.f13264j.mo22911c(m22931i);
                bitmap = m22864n;
            }
        }
        return bitmap;
    }

    /* renamed from: i */
    private static Bitmap m22931i(AbstractC4313r abstractC4313r, BitmapFactory.Options options, AbstractC4306b abstractC4306b, AbstractC4096e abstractC4096e) {
        if (!options.inJustDecodeBounds) {
            abstractC4306b.mo22878b();
            abstractC4313r.mo22892c();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        C4322x.m22869i().lock();
        try {
            try {
                Bitmap mo22893b = abstractC4313r.mo22893b(options);
                C4322x.m22869i().unlock();
                return mo22893b;
            } catch (IllegalArgumentException e) {
                IOException m22919u = m22919u(e, i, i2, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", m22919u);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw m22919u;
                }
                try {
                    abstractC4096e.mo22911c(bitmap);
                    options.inBitmap = null;
                    Bitmap m22931i = m22931i(abstractC4313r, options, abstractC4306b, abstractC4096e);
                    C4322x.m22869i().unlock();
                    return m22931i;
                } catch (IOException e2) {
                    throw m22919u;
                }
            }
        } catch (Throwable th) {
            C4322x.m22869i().unlock();
            throw th;
        }
    }

    @TargetApi(19)
    /* renamed from: j */
    private static String m22930j(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    /* renamed from: k */
    private static BitmapFactory.Options m22929k() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (C4304l.class) {
            try {
                Queue<BitmapFactory.Options> queue = f13263i;
                synchronized (queue) {
                    poll = queue.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    m22917w(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return options;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: l */
    private static int m22928l(double d) {
        int i = (d > 1.0d ? 1 : (d == 1.0d ? 0 : -1));
        ?? r5 = d;
        if (i > 0) {
            r5 = 1.0d / d;
        }
        return (int) Math.round(r5 * 0);
    }

    /* renamed from: m */
    private static int[] m22927m(AbstractC4313r abstractC4313r, BitmapFactory.Options options, AbstractC4306b abstractC4306b, AbstractC4096e abstractC4096e) {
        options.inJustDecodeBounds = true;
        m22931i(abstractC4313r, options, abstractC4306b, abstractC4096e);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: n */
    private static String m22926n(BitmapFactory.Options options) {
        return m22930j(options.inBitmap);
    }

    /* renamed from: r */
    private static boolean m22922r(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: s */
    private static boolean m22921s(BitmapFactory.Options options) {
        int i;
        int i2 = options.inTargetDensity;
        return i2 > 0 && (i = options.inDensity) > 0 && i2 != i;
    }

    /* renamed from: t */
    private static void m22920t(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v("Downsampler", "Decoded " + m22930j(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + m22926n(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + C4377f.m22736a(j));
    }

    /* renamed from: u */
    private static IOException m22919u(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m22926n(options), illegalArgumentException);
    }

    /* renamed from: v */
    private static void m22918v(BitmapFactory.Options options) {
        m22917w(options);
        Queue<BitmapFactory.Options> queue = f13263i;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    /* renamed from: w */
    private static void m22917w(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* renamed from: x */
    private static int m22916x(double d) {
        return (int) (d + 0.5d);
    }

    @TargetApi(26)
    /* renamed from: y */
    private static void m22915y(BitmapFactory.Options options, AbstractC4096e abstractC4096e, int i, int i2) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = options.inPreferredConfig;
        }
        options.inBitmap = abstractC4096e.mo23257e(i, i2, config2);
    }

    /* renamed from: z */
    private boolean m22914z(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f13262h.contains(imageType);
    }

    /* renamed from: d */
    public AbstractC4083s<Bitmap> m22936d(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, C4032e c4032e) {
        return m22935e(new AbstractC4313r.C4315b(parcelFileDescriptor, this.f13267m, this.f13266l), i, i2, c4032e, f13261g);
    }

    /* renamed from: f */
    public AbstractC4083s<Bitmap> m22934f(InputStream inputStream, int i, int i2, C4032e c4032e) {
        return m22933g(inputStream, i, i2, c4032e, f13261g);
    }

    /* renamed from: g */
    public AbstractC4083s<Bitmap> m22933g(InputStream inputStream, int i, int i2, C4032e c4032e, AbstractC4306b abstractC4306b) {
        return m22935e(new AbstractC4313r.C4314a(inputStream, this.f13267m, this.f13266l), i, i2, c4032e, abstractC4306b);
    }

    /* renamed from: o */
    public boolean m22925o(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.m23508c();
    }

    /* renamed from: p */
    public boolean m22924p(InputStream inputStream) {
        return true;
    }

    /* renamed from: q */
    public boolean m22923q(ByteBuffer byteBuffer) {
        return true;
    }
}
