package com.bumptech.glide.load.p083c.p084a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.C1665e;
import com.bumptech.glide.load.C1778g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1493b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.p083c.p084a.AbstractC1594k;
import com.bumptech.glide.p077h.C1452e;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
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
/* renamed from: com.bumptech.glide.load.c.a.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/l.class */
public final class C1602l {

    /* renamed from: a */
    public static final C1778g<EnumC1493b> f4979a = C1778g.m16329a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", EnumC1493b.f4841c);
    @Deprecated

    /* renamed from: b */
    public static final C1778g<AbstractC1594k> f4980b = AbstractC1594k.f4975h;

    /* renamed from: c */
    public static final C1778g<Boolean> f4981c = C1778g.m16329a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", false);

    /* renamed from: d */
    public static final C1778g<Boolean> f4982d = C1778g.m16329a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", false);

    /* renamed from: e */
    private static final Set<String> f4983e = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: f */
    private static final AbstractC1604a f4984f = new AbstractC1604a() { // from class: com.bumptech.glide.load.c.a.l.1
        @Override // com.bumptech.glide.load.p083c.p084a.C1602l.AbstractC1604a
        /* renamed from: a */
        public void mo16730a() {
        }

        @Override // com.bumptech.glide.load.p083c.p084a.C1602l.AbstractC1604a
        /* renamed from: a */
        public void mo16729a(AbstractC1678e abstractC1678e, Bitmap bitmap) {
        }
    };

    /* renamed from: g */
    private static final Set<ImageHeaderParser.ImageType> f4985g = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: h */
    private static final Queue<BitmapFactory.Options> f4986h = C1457j.m16981a(0);

    /* renamed from: i */
    private final AbstractC1678e f4987i;

    /* renamed from: j */
    private final DisplayMetrics f4988j;

    /* renamed from: k */
    private final AbstractC1673b f4989k;

    /* renamed from: l */
    private final List<ImageHeaderParser> f4990l;

    /* renamed from: m */
    private final C1610q f4991m = C1610q.m16743a();

    /* renamed from: com.bumptech.glide.load.c.a.l$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/l$a.class */
    public interface AbstractC1604a {
        /* renamed from: a */
        void mo16730a();

        /* renamed from: a */
        void mo16729a(AbstractC1678e abstractC1678e, Bitmap bitmap);
    }

    public C1602l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, AbstractC1678e abstractC1678e, AbstractC1673b abstractC1673b) {
        this.f4990l = list;
        this.f4988j = (DisplayMetrics) C1456i.m16989a(displayMetrics);
        this.f4987i = (AbstractC1678e) C1456i.m16989a(abstractC1678e);
        this.f4989k = (AbstractC1673b) C1456i.m16989a(abstractC1673b);
    }

    /* renamed from: a */
    private static int m16772a(double d) {
        int m16757b = m16757b(d);
        int m16754c = m16754c(m16757b * d);
        return m16754c(m16754c * (d / (m16754c / m16757b)));
    }

    /* renamed from: a */
    private Bitmap m16762a(InputStream inputStream, BitmapFactory.Options options, AbstractC1594k abstractC1594k, EnumC1493b enumC1493b, boolean z, int i, int i2, boolean z2, AbstractC1604a abstractC1604a) {
        long m17002a = C1452e.m17002a();
        int[] m16761a = m16761a(inputStream, options, abstractC1604a, this.f4987i);
        int i3 = m16761a[0];
        int i4 = m16761a[1];
        String str = options.outMimeType;
        if (i3 == -1 || i4 == -1) {
            z = false;
        }
        int m16609b = C1665e.m16609b(this.f4990l, inputStream, this.f4989k);
        int m16727a = C1617v.m16727a(m16609b);
        boolean m16718b = C1617v.m16718b(m16609b);
        int i5 = i == Integer.MIN_VALUE ? i3 : i;
        int i6 = i2 == Integer.MIN_VALUE ? i4 : i2;
        ImageHeaderParser.ImageType m16611a = C1665e.m16611a(this.f4990l, inputStream, this.f4989k);
        m16766a(m16611a, inputStream, abstractC1604a, this.f4987i, abstractC1594k, m16727a, i3, i4, i5, i6, options);
        m16760a(inputStream, enumC1493b, z, m16718b, options, i5, i6);
        boolean z3 = Build.VERSION.SDK_INT >= 19;
        if ((options.inSampleSize == 1 || z3) && m16767a(m16611a)) {
            if (i3 < 0 || i4 < 0 || !z2 || !z3) {
                float f = m16769a(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i7 = options.inSampleSize;
                int ceil = (int) Math.ceil(i3 / i7);
                int ceil2 = (int) Math.ceil(i4 / i7);
                int round = Math.round(ceil * f);
                int round2 = Math.round(ceil2 * f);
                i5 = round;
                i6 = round2;
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Calculated target [" + round + "x" + round2 + "] for source [" + i3 + "x" + i4 + "], sampleSize: " + i7 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f);
                    i5 = round;
                    i6 = round2;
                }
            }
            if (i5 > 0 && i6 > 0) {
                m16768a(options, this.f4987i, i5, i6);
            }
        }
        Bitmap m16755b = m16755b(inputStream, options, abstractC1604a, this.f4987i);
        abstractC1604a.mo16729a(this.f4987i, m16755b);
        if (Log.isLoggable("Downsampler", 2)) {
            m16771a(i3, i4, str, options, m16755b, i, i2, m17002a);
        }
        Bitmap bitmap = null;
        if (m16755b != null) {
            m16755b.setDensity(this.f4988j.densityDpi);
            Bitmap m16720a = C1617v.m16720a(this.f4987i, m16755b, m16609b);
            bitmap = m16720a;
            if (!m16755b.equals(m16720a)) {
                this.f4987i.mo16540a(m16755b);
                bitmap = m16720a;
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    private static BitmapFactory.Options m16773a() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (C1602l.class) {
            try {
                synchronized (f4986h) {
                    poll = f4986h.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    m16752d(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return options;
    }

    /* renamed from: a */
    private static IOException m16759a(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m16756b(options), illegalArgumentException);
    }

    @TargetApi(19)
    /* renamed from: a */
    private static String m16770a(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            str = null;
        } else {
            str = "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (Build.VERSION.SDK_INT >= 19 ? " (" + bitmap.getAllocationByteCount() + ")" : "");
        }
        return str;
    }

    /* renamed from: a */
    private static void m16771a(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v("Downsampler", "Decoded " + m16770a(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + m16756b(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + C1452e.m17001a(j));
    }

    @TargetApi(26)
    /* renamed from: a */
    private static void m16768a(BitmapFactory.Options options, AbstractC1678e abstractC1678e, int i, int i2) {
        Bitmap.Config config = null;
        if (Build.VERSION.SDK_INT >= 26) {
            if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
                return;
            }
            config = options.outConfig;
        }
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = options.inPreferredConfig;
        }
        options.inBitmap = abstractC1678e.mo16538b(i, i2, config2);
    }

    /* renamed from: a */
    private static void m16766a(ImageHeaderParser.ImageType imageType, InputStream inputStream, AbstractC1604a abstractC1604a, AbstractC1678e abstractC1678e, AbstractC1594k abstractC1594k, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) {
        int i6;
        int floor;
        int floor2;
        if (i2 <= 0 || i3 <= 0) {
            if (!Log.isLoggable("Downsampler", 3)) {
                return;
            }
            Log.d("Downsampler", "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + "]");
            return;
        }
        float mo16775a = (i == 90 || i == 270) ? abstractC1594k.mo16775a(i3, i2, i4, i5) : abstractC1594k.mo16775a(i2, i3, i4, i5);
        if (mo16775a <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + mo16775a + " from: " + abstractC1594k + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        AbstractC1594k.EnumC1601g mo16774b = abstractC1594k.mo16774b(i2, i3, i4, i5);
        if (mo16774b == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        int m16754c = i2 / m16754c(i2 * mo16775a);
        int m16754c2 = i3 / m16754c(i3 * mo16775a);
        int max = mo16774b == AbstractC1594k.EnumC1601g.MEMORY ? Math.max(m16754c, m16754c2) : Math.min(m16754c, m16754c2);
        if (Build.VERSION.SDK_INT > 23 || !f4983e.contains(options.outMimeType)) {
            int max2 = Math.max(1, Integer.highestOneBit(max));
            i6 = max2;
            if (mo16774b == AbstractC1594k.EnumC1601g.MEMORY) {
                i6 = max2;
                if (max2 < 1.0f / mo16775a) {
                    i6 = max2 << 1;
                }
            }
        } else {
            i6 = 1;
        }
        options.inSampleSize = i6;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            int min = Math.min(i6, 8);
            int ceil = (int) Math.ceil(i2 / min);
            int ceil2 = (int) Math.ceil(i3 / min);
            int i7 = i6 / 8;
            floor2 = ceil2;
            floor = ceil;
            if (i7 > 0) {
                floor = ceil / i7;
                floor2 = ceil2 / i7;
            }
        } else if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
            floor = (int) Math.floor(i2 / i6);
            floor2 = (int) Math.floor(i3 / i6);
        } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
            if (Build.VERSION.SDK_INT >= 24) {
                floor = Math.round(i2 / i6);
                floor2 = Math.round(i3 / i6);
            } else {
                floor = (int) Math.floor(i2 / i6);
                floor2 = (int) Math.floor(i3 / i6);
            }
        } else if (i2 % i6 == 0 && i3 % i6 == 0) {
            floor = i2 / i6;
            floor2 = i3 / i6;
        } else {
            int[] m16761a = m16761a(inputStream, options, abstractC1604a, abstractC1678e);
            floor = m16761a[0];
            floor2 = m16761a[1];
        }
        double mo16775a2 = abstractC1594k.mo16775a(floor, floor2, i4, i5);
        if (Build.VERSION.SDK_INT >= 19) {
            options.inTargetDensity = m16772a(mo16775a2);
            options.inDensity = m16757b(mo16775a2);
        }
        if (m16769a(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (!Log.isLoggable("Downsampler", 2)) {
            return;
        }
        Log.v("Downsampler", "Calculate scaling, source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "], power of two scaled: [" + floor + "x" + floor2 + "], exact scale factor: " + mo16775a + ", power of 2 sample size: " + i6 + ", adjusted scale factor: " + mo16775a2 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
    }

    /* renamed from: a */
    private void m16760a(InputStream inputStream, EnumC1493b enumC1493b, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        boolean z3;
        if (this.f4991m.m16742a(i, i2, options, enumC1493b, z, z2)) {
            return;
        }
        if (enumC1493b == EnumC1493b.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            z3 = C1665e.m16611a(this.f4990l, inputStream, this.f4989k).hasAlpha();
        } catch (IOException e) {
            if (Log.isLoggable("Downsampler", 3)) {
                Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + enumC1493b, e);
            }
            z3 = false;
        }
        options.inPreferredConfig = z3 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        if (options.inPreferredConfig != Bitmap.Config.RGB_565) {
            return;
        }
        options.inDither = true;
    }

    /* renamed from: a */
    private static boolean m16769a(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    /* renamed from: a */
    private boolean m16767a(ImageHeaderParser.ImageType imageType) {
        return Build.VERSION.SDK_INT >= 19 ? true : f4985g.contains(imageType);
    }

    /* renamed from: a */
    private static int[] m16761a(InputStream inputStream, BitmapFactory.Options options, AbstractC1604a abstractC1604a, AbstractC1678e abstractC1678e) {
        options.inJustDecodeBounds = true;
        m16755b(inputStream, options, abstractC1604a, abstractC1678e);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: b */
    private static int m16757b(double d) {
        int i = (d > 1.0d ? 1 : (d == 1.0d ? 0 : -1));
        ?? r5 = d;
        if (i > 0) {
            r5 = 1.0d / d;
        }
        return (int) Math.round(0 * r5);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private static Bitmap m16755b(InputStream inputStream, BitmapFactory.Options options, AbstractC1604a abstractC1604a, AbstractC1678e abstractC1678e) {
        Bitmap m16755b;
        if (options.inJustDecodeBounds) {
            inputStream.mark(10485760);
        } else {
            abstractC1604a.mo16730a();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        C1617v.m16728a().lock();
        try {
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                C1617v.m16728a().unlock();
                m16755b = decodeStream;
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                    m16755b = decodeStream;
                }
            } catch (IllegalArgumentException e) {
                IOException m16759a = m16759a(e, i, i2, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", m16759a);
                }
                if (options.inBitmap == null) {
                    throw m16759a;
                }
                try {
                    inputStream.reset();
                    abstractC1678e.mo16540a(options.inBitmap);
                    options.inBitmap = null;
                    m16755b = m16755b(inputStream, options, abstractC1604a, abstractC1678e);
                    C1617v.m16728a().unlock();
                } catch (IOException e2) {
                    throw m16759a;
                }
            }
            return m16755b;
        } catch (Throwable th) {
            C1617v.m16728a().unlock();
            throw th;
        }
    }

    /* renamed from: b */
    private static String m16756b(BitmapFactory.Options options) {
        return m16770a(options.inBitmap);
    }

    /* renamed from: c */
    private static int m16754c(double d) {
        return (int) (0.5d + d);
    }

    /* renamed from: c */
    private static void m16753c(BitmapFactory.Options options) {
        m16752d(options);
        synchronized (f4986h) {
            f4986h.offer(options);
        }
    }

    /* renamed from: d */
    private static void m16752d(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* renamed from: a */
    public AbstractC1771t<Bitmap> m16764a(InputStream inputStream, int i, int i2, C1781h c1781h) {
        return m16763a(inputStream, i, i2, c1781h, f4984f);
    }

    /* renamed from: a */
    public AbstractC1771t<Bitmap> m16763a(InputStream inputStream, int i, int i2, C1781h c1781h, AbstractC1604a abstractC1604a) {
        C1456i.m16985a(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f4989k.mo16562a(65536, byte[].class);
        BitmapFactory.Options m16773a = m16773a();
        m16773a.inTempStorage = bArr;
        EnumC1493b enumC1493b = (EnumC1493b) c1781h.m16324a(f4979a);
        try {
            return C1583d.m16797a(m16762a(inputStream, m16773a, (AbstractC1594k) c1781h.m16324a(AbstractC1594k.f4975h), enumC1493b, c1781h.m16324a(f4982d) != null && ((Boolean) c1781h.m16324a(f4982d)).booleanValue(), i, i2, ((Boolean) c1781h.m16324a(f4981c)).booleanValue(), abstractC1604a), this.f4987i);
        } finally {
            m16753c(m16773a);
            this.f4989k.mo16557a((AbstractC1673b) bArr);
        }
    }

    /* renamed from: a */
    public boolean m16765a(InputStream inputStream) {
        return true;
    }

    /* renamed from: a */
    public boolean m16758a(ByteBuffer byteBuffer) {
        return true;
    }
}
