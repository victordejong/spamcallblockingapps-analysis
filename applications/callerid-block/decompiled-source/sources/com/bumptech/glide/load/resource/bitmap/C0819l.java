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
        void m10883a(AbstractC0770e eVar, Bitmap bitmap);

        /* renamed from: b */
        void m10882b();
    }

    static {
        C0733d<DownsampleStrategy> dVar = DownsampleStrategy.f3729f;
        Boolean bool = Boolean.FALSE;
        f3743h = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f3744i = C0733d.m11195f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
    }

    public C0819l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, AbstractC0770e eVar, AbstractC0768b bVar) {
        this.f3752d = list;
        C0856j.m10759d(displayMetrics);
        this.f3750b = displayMetrics;
        C0856j.m10759d(eVar);
        this.f3749a = eVar;
        C0856j.m10759d(bVar);
        this.f3751c = bVar;
    }

    /* renamed from: a */
    private static int m10909a(double d) {
        int l = m10898l(d);
        double d2 = l;
        Double.isNaN(d2);
        int x = m10886x(d2 * d);
        double d3 = x / l;
        Double.isNaN(d3);
        double d4 = d / d3;
        double d5 = x;
        Double.isNaN(d5);
        return m10886x(d4 * d5);
    }

    /* renamed from: b */
    private void m10908b(AbstractC0823r rVar, DecodeFormat decodeFormat, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        if (!this.f3753e.m10871i(i, i2, options, z, z2)) {
            if (decodeFormat == DecodeFormat.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                return;
            }
            try {
                z3 = rVar.m10867d().hasAlpha();
            } catch (IOException e) {
                z3 = false;
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e);
                    z3 = false;
                }
            }
            Bitmap.Config config = z3 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            options.inPreferredConfig = config;
            if (config == Bitmap.Config.RGB_565) {
                options.inDither = true;
            }
        }
    }

    /* renamed from: c */
    private static void m10907c(ImageHeaderParser.ImageType imageType, AbstractC0823r rVar, AbstractC0820b bVar, AbstractC0770e eVar, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (i2 > 0 && i3 > 0) {
            if (m10892r(i)) {
                i7 = i2;
                i6 = i3;
            } else {
                i6 = i2;
                i7 = i3;
            }
            float b = downsampleStrategy.m10916b(i6, i7, i4, i5);
            if (b > 0.0f) {
                DownsampleStrategy.SampleSizeRounding a = downsampleStrategy.m10917a(i6, i7, i4, i5);
                if (a != null) {
                    float f = i6;
                    int x = m10886x(b * f);
                    float f2 = i7;
                    int x2 = m10886x(b * f2);
                    int i11 = i6 / x;
                    int i12 = i7 / x2;
                    DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
                    int max = a == sampleSizeRounding ? Math.max(i11, i12) : Math.min(i11, i12);
                    int i13 = Build.VERSION.SDK_INT;
                    if (i13 > 23 || !f3745j.contains(options.outMimeType)) {
                        int max2 = Math.max(1, Integer.highestOneBit(max));
                        i8 = max2;
                        if (a == sampleSizeRounding) {
                            i8 = max2;
                            if (max2 < 1.0f / b) {
                                i8 = max2 << 1;
                            }
                        }
                    } else {
                        i8 = 1;
                    }
                    options.inSampleSize = i8;
                    if (imageType == ImageHeaderParser.ImageType.JPEG) {
                        float min = Math.min(i8, 8);
                        int ceil = (int) Math.ceil(f / min);
                        int ceil2 = (int) Math.ceil(f2 / min);
                        int i14 = i8 / 8;
                        i9 = ceil2;
                        i10 = ceil;
                        if (i14 > 0) {
                            i10 = ceil / i14;
                            i9 = ceil2 / i14;
                        }
                    } else {
                        if (!(imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A)) {
                            if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                                if (i13 >= 24) {
                                    float f3 = i8;
                                    i10 = Math.round(f / f3);
                                    i9 = Math.round(f2 / f3);
                                }
                            } else if (i6 % i8 == 0 && i7 % i8 == 0) {
                                i10 = i6 / i8;
                                i9 = i7 / i8;
                            } else {
                                int[] m = m10897m(rVar, options, bVar, eVar);
                                i10 = m[0];
                                i9 = m[1];
                            }
                        }
                        float f4 = i8;
                        i10 = (int) Math.floor(f / f4);
                        i9 = (int) Math.floor(f2 / f4);
                    }
                    double b2 = downsampleStrategy.m10916b(i10, i9, i4, i5);
                    if (i13 >= 19) {
                        options.inTargetDensity = m10909a(b2);
                        options.inDensity = m10898l(b2);
                    }
                    if (m10891s(options)) {
                        options.inScaled = true;
                    } else {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                    }
                    if (Log.isLoggable("Downsampler", 2)) {
                        Log.v("Downsampler", "Calculate scaling, source: [" + i2 + "x" + i3 + "], degreesToRotate: " + i + ", target: [" + i4 + "x" + i5 + "], power of two scaled: [" + i10 + "x" + i9 + "], exact scale factor: " + b + ", power of 2 sample size: " + i8 + ", adjusted scale factor: " + b2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            throw new IllegalArgumentException("Cannot scale with factor: " + b + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        } else if (Log.isLoggable("Downsampler", 3)) {
            Log.d("Downsampler", "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + "]");
        }
    }

    /* renamed from: e */
    private AbstractC0764s<Bitmap> m10905e(AbstractC0823r rVar, int i, int i2, e eVar, AbstractC0820b bVar) {
        byte[] bArr = (byte[]) this.f3751c.m11070d(65536, byte[].class);
        BitmapFactory.Options k = m10899k();
        k.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) eVar.c(f3741f);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) eVar.c(f3742g);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) eVar.c(DownsampleStrategy.f3729f);
        boolean booleanValue = ((Boolean) eVar.c(f3743h)).booleanValue();
        C0733d<Boolean> dVar = f3744i;
        try {
            return e.f(m10902h(rVar, k, downsampleStrategy, decodeFormat, preferredColorSpace, eVar.c(dVar) != null && ((Boolean) eVar.c(dVar)).booleanValue(), i, i2, booleanValue, bVar), this.f3749a);
        } finally {
            m10888v(k);
            this.f3751c.put(bArr);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0279, code lost:
        if (r0 >= 26) goto L_0x027c;
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
    private static Bitmap m10901i(AbstractC0823r rVar, BitmapFactory.Options options, AbstractC0820b bVar, AbstractC0770e eVar) {
        if (!options.inJustDecodeBounds) {
            bVar.m10882b();
            rVar.m10869b();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        C0824x.m10858i().lock();
        try {
            try {
                Bitmap a = rVar.m10870a(options);
                C0824x.m10858i().unlock();
                return a;
            } catch (IllegalArgumentException e) {
                IOException u = m10889u(e, i, i2, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", u);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap != null) {
                    try {
                        eVar.m11063d(bitmap);
                        options.inBitmap = null;
                        Bitmap i3 = m10901i(rVar, options, bVar, eVar);
                        C0824x.m10858i().unlock();
                        return i3;
                    } catch (IOException e2) {
                        throw u;
                    }
                } else {
                    throw u;
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

    /* renamed from: l */
    private static int m10898l(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    /* renamed from: m */
    private static int[] m10897m(AbstractC0823r rVar, BitmapFactory.Options options, AbstractC0820b bVar, AbstractC0770e eVar) {
        options.inJustDecodeBounds = true;
        m10901i(rVar, options, bVar, eVar);
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
    private static void m10885y(BitmapFactory.Options options, AbstractC0770e eVar, int i, int i2) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig != Bitmap.Config.HARDWARE) {
            config = options.outConfig;
        } else {
            return;
        }
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = options.inPreferredConfig;
        }
        options.inBitmap = eVar.m11062e(i, i2, config2);
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
    public AbstractC0764s<Bitmap> m10903g(InputStream inputStream, int i, int i2, e eVar, AbstractC0820b bVar) {
        return m10905e(new AbstractC0823r.a(inputStream, this.f3752d, this.f3751c), i, i2, eVar, bVar);
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
