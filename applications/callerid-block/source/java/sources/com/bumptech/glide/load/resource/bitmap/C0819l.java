package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.C0733d;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.AbstractC0764s;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import com.bumptech.glide.load.engine.p020x.AbstractC0770e;
import com.bumptech.glide.load.resource.bitmap.AbstractC0823r;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.p029o.C0851f;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.C0857k;
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
public final class C0819l {

    /* renamed from: h */
    public static final C0733d<Boolean> f3743h;

    /* renamed from: i */
    public static final C0733d<Boolean> f3744i;

    /* renamed from: a */
    private final AbstractC0770e f3749a;

    /* renamed from: b */
    private final DisplayMetrics f3750b;

    /* renamed from: c */
    private final AbstractC0768b f3751c;

    /* renamed from: d */
    private final List<ImageHeaderParser> f3752d;

    /* renamed from: e */
    private final C0822q f3753e = C0822q.m10878b();

    /* renamed from: f */
    public static final C0733d<DecodeFormat> f3741f = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.f3496d);

    /* renamed from: g */
    public static final C0733d<PreferredColorSpace> f3742g = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", PreferredColorSpace.SRGB);

    /* renamed from: j */
    private static final Set<String> f3745j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: k */
    private static final AbstractC0820b f3746k = new a();

    /* renamed from: l */
    private static final Set<ImageHeaderParser.ImageType> f3747l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: m */
    private static final Queue<BitmapFactory.Options> f3748m = C0857k.m10753e(0);

    /* renamed from: com.bumptech.glide.load.resource.bitmap.l$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l$b.class */
    public interface AbstractC0820b {
        /* renamed from: a */
        void m10883a(AbstractC0770e abstractC0770e, Bitmap bitmap);

        /* renamed from: b */
        void m10882b();
    }

    static {
        C0733d<DownsampleStrategy> c0733d = DownsampleStrategy.f3729f;
        Boolean bool = Boolean.FALSE;
        f3743h = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f3744i = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
    }

    public C0819l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, AbstractC0770e abstractC0770e, AbstractC0768b abstractC0768b) {
        this.f3752d = list;
        C0856j.m10759d(displayMetrics);
        this.f3750b = displayMetrics;
        C0856j.m10759d(abstractC0770e);
        this.f3749a = abstractC0770e;
        C0856j.m10759d(abstractC0768b);
        this.f3751c = abstractC0768b;
    }

    /* renamed from: a */
    private static int m10909a(double d) {
        int m10898l = m10898l(d);
        double d2 = m10898l;
        Double.isNaN(d2);
        int m10886x = m10886x(d2 * d);
        double d3 = m10886x / m10898l;
        Double.isNaN(d3);
        double d4 = d / d3;
        double d5 = m10886x;
        Double.isNaN(d5);
        return m10886x(d4 * d5);
    }

    /* renamed from: b */
    private void m10908b(AbstractC0823r abstractC0823r, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        if (this.f3753e.m10871i(i, i2, options, z, z2)) {
            return;
        }
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            z3 = abstractC0823r.m10867d().hasAlpha();
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

    /* renamed from: c */
    private static void m10907c(ImageHeaderParser.ImageType imageType, AbstractC0823r abstractC0823r, AbstractC0820b abstractC0820b, AbstractC0770e abstractC0770e, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (i2 <= 0 || i3 <= 0) {
            if (!Log.isLoggable("Downsampler", 3)) {
                return;
            }
            Log.d("Downsampler", "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + "]");
            return;
        }
        if (m10892r(i)) {
            i7 = i2;
            i6 = i3;
        } else {
            i6 = i2;
            i7 = i3;
        }
        float m10916b = downsampleStrategy.m10916b(i6, i7, i4, i5);
        if (m10916b <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + m10916b + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        DownsampleStrategy.SampleSizeRounding m10917a = downsampleStrategy.m10917a(i6, i7, i4, i5);
        if (m10917a == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i6;
        int m10886x = m10886x(m10916b * f);
        float f2 = i7;
        int m10886x2 = m10886x(m10916b * f2);
        int i11 = i6 / m10886x;
        int i12 = i7 / m10886x2;
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int max = m10917a == sampleSizeRounding ? Math.max(i11, i12) : Math.min(i11, i12);
        int i13 = Build.VERSION.SDK_INT;
        if (i13 > 23 || !f3745j.contains(options.outMimeType)) {
            int max2 = Math.max(1, Integer.highestOneBit(max));
            int i14 = max2;
            if (m10917a == sampleSizeRounding) {
                i14 = max2;
                if (max2 < 1.0f / m10916b) {
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
            if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                    if (i13 >= 24) {
                        float f3 = i8;
                        i10 = Math.round(f / f3);
                        i9 = Math.round(f2 / f3);
                    }
                } else if (i6 % i8 == 0 && i7 % i8 == 0) {
                    i9 = i7 / i8;
                    i10 = i6 / i8;
                } else {
                    int[] m10897m = m10897m(abstractC0823r, options, abstractC0820b, abstractC0770e);
                    i10 = m10897m[0];
                    i9 = m10897m[1];
                }
            }
            float f4 = i8;
            i10 = (int) Math.floor(f / f4);
            i9 = (int) Math.floor(f2 / f4);
        }
        double m10916b2 = downsampleStrategy.m10916b(i10, i9, i4, i5);
        if (i13 >= 19) {
            options.inTargetDensity = m10909a(m10916b2);
            options.inDensity = m10898l(m10916b2);
        }
        if (m10891s(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (!Log.isLoggable("Downsampler", 2)) {
            return;
        }
        Log.v("Downsampler", "Calculate scaling, source: [" + i2 + "x" + i3 + "], degreesToRotate: " + i + ", target: [" + i4 + "x" + i5 + "], power of two scaled: [" + i10 + "x" + i9 + "], exact scale factor: " + m10916b + ", power of 2 sample size: " + i8 + ", adjusted scale factor: " + m10916b2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
    }

    /* renamed from: e */
    private AbstractC0764s<Bitmap> m10905e(AbstractC0823r abstractC0823r, int i, int i2, e eVar, AbstractC0820b abstractC0820b) {
        byte[] bArr = (byte[]) this.f3751c.m11070d(65536, byte[].class);
        BitmapFactory.Options m10899k = m10899k();
        m10899k.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) eVar.c(f3741f);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) eVar.c(f3742g);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) eVar.c(DownsampleStrategy.f3729f);
        boolean booleanValue = ((Boolean) eVar.c(f3743h)).booleanValue();
        C0733d<Boolean> c0733d = f3744i;
        try {
            return e.f(m10902h(abstractC0823r, m10899k, downsampleStrategy, decodeFormat, preferredColorSpace, eVar.c(c0733d) != null && ((Boolean) eVar.c(c0733d)).booleanValue(), i, i2, booleanValue, abstractC0820b), this.f3749a);
        } finally {
            m10888v(m10899k);
            this.f3751c.put(bArr);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0279, code lost:
        if (r0 >= 26) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02c5  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap m10902h(com.bumptech.glide.load.resource.bitmap.AbstractC0823r r13, android.graphics.BitmapFactory.Options r14, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r15, com.bumptech.glide.load.DecodeFormat r16, com.bumptech.glide.load.PreferredColorSpace r17, boolean r18, int r19, int r20, boolean r21, com.bumptech.glide.load.resource.bitmap.C0819l.AbstractC0820b r22) {
        /*
            Method dump skipped, instructions count: 758
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.C0819l.m10902h(com.bumptech.glide.load.resource.bitmap.r, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, com.bumptech.glide.load.DecodeFormat, com.bumptech.glide.load.PreferredColorSpace, boolean, int, int, boolean, com.bumptech.glide.load.resource.bitmap.l$b):android.graphics.Bitmap");
    }

    /* renamed from: i */
    private static Bitmap m10901i(AbstractC0823r abstractC0823r, BitmapFactory.Options options, AbstractC0820b abstractC0820b, AbstractC0770e abstractC0770e) {
        if (!options.inJustDecodeBounds) {
            abstractC0820b.m10882b();
            abstractC0823r.m10869b();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        C0824x.m10858i().lock();
        try {
            try {
                Bitmap m10870a = abstractC0823r.m10870a(options);
                C0824x.m10858i().unlock();
                return m10870a;
            } catch (IllegalArgumentException e) {
                IOException m10889u = m10889u(e, i, i2, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", m10889u);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw m10889u;
                }
                try {
                    abstractC0770e.m11063d(bitmap);
                    options.inBitmap = null;
                    Bitmap m10901i = m10901i(abstractC0823r, options, abstractC0820b, abstractC0770e);
                    C0824x.m10858i().unlock();
                    return m10901i;
                } catch (IOException e2) {
                    throw m10889u;
                }
            }
        } catch (Throwable th) {
            C0824x.m10858i().unlock();
            throw th;
        }
    }

    @TargetApi(19)
    /* renamed from: j */
    private static String m10900j(Bitmap bitmap) {
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
    private static BitmapFactory.Options m10899k() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (C0819l.class) {
            try {
                Queue<BitmapFactory.Options> queue = f3748m;
                synchronized (queue) {
                    poll = queue.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    m10887w(options);
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
    private static int m10898l(double d) {
        int i = (d > 1.0d ? 1 : (d == 1.0d ? 0 : -1));
        ?? r5 = d;
        if (i > 0) {
            r5 = 1.0d / d;
        }
        return (int) Math.round(r5 * 0);
    }

    /* renamed from: m */
    private static int[] m10897m(AbstractC0823r abstractC0823r, BitmapFactory.Options options, AbstractC0820b abstractC0820b, AbstractC0770e abstractC0770e) {
        options.inJustDecodeBounds = true;
        m10901i(abstractC0823r, options, abstractC0820b, abstractC0770e);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: n */
    private static String m10896n(BitmapFactory.Options options) {
        return m10900j(options.inBitmap);
    }

    /* renamed from: r */
    private static boolean m10892r(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: s */
    private static boolean m10891s(BitmapFactory.Options options) {
        int i;
        int i2 = options.inTargetDensity;
        return i2 > 0 && (i = options.inDensity) > 0 && i2 != i;
    }

    /* renamed from: t */
    private static void m10890t(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v("Downsampler", "Decoded " + m10900j(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + m10896n(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + C0851f.m10776a(j));
    }

    /* renamed from: u */
    private static IOException m10889u(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m10896n(options), illegalArgumentException);
    }

    /* renamed from: v */
    private static void m10888v(BitmapFactory.Options options) {
        m10887w(options);
        Queue<BitmapFactory.Options> queue = f3748m;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    /* renamed from: w */
    private static void m10887w(BitmapFactory.Options options) {
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
    private static int m10886x(double d) {
        return (int) (d + 0.5d);
    }

    @TargetApi(26)
    /* renamed from: y */
    private static void m10885y(BitmapFactory.Options options, AbstractC0770e abstractC0770e, int i, int i2) {
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
        options.inBitmap = abstractC0770e.m11062e(i, i2, config2);
    }

    /* renamed from: z */
    private boolean m10884z(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f3747l.contains(imageType);
    }

    /* renamed from: d */
    public AbstractC0764s<Bitmap> m10906d(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, e eVar) {
        return m10905e(new AbstractC0823r.b(parcelFileDescriptor, this.f3752d, this.f3751c), i, i2, eVar, f3746k);
    }

    /* renamed from: f */
    public AbstractC0764s<Bitmap> m10904f(InputStream inputStream, int i, int i2, e eVar) {
        return m10903g(inputStream, i, i2, eVar, f3746k);
    }

    /* renamed from: g */
    public AbstractC0764s<Bitmap> m10903g(InputStream inputStream, int i, int i2, e eVar, AbstractC0820b abstractC0820b) {
        return m10905e(new AbstractC0823r.a(inputStream, this.f3752d, this.f3751c), i, i2, eVar, abstractC0820b);
    }

    /* renamed from: o */
    public boolean m10895o(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.c();
    }

    /* renamed from: p */
    public boolean m10894p(InputStream inputStream) {
        return true;
    }

    /* renamed from: q */
    public boolean m10893q(ByteBuffer byteBuffer) {
        return true;
    }
}
