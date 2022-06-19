package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22259b;
import p193e.p1451f.p1452a.p1457n.EnumC22268j;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m;
import p193e.p1451f.p1452a.p1480t.C22619f;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.q.d.n */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/n.class */
public final class C22512n {

    /* renamed from: h */
    public static final C22264h<Boolean> f62388h;

    /* renamed from: i */
    public static final C22264h<Boolean> f62389i;

    /* renamed from: a */
    public final AbstractC22303d f62394a;

    /* renamed from: b */
    public final DisplayMetrics f62395b;

    /* renamed from: c */
    public final AbstractC22301b f62396c;

    /* renamed from: d */
    public final List<ImageHeaderParser> f62397d;

    /* renamed from: e */
    public final C22517t f62398e = C22517t.m8175a();

    /* renamed from: f */
    public static final C22264h<EnumC22259b> f62386f = C22264h.m8362a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", EnumC22259b.PREFER_ARGB_8888);

    /* renamed from: g */
    public static final C22264h<EnumC22268j> f62387g = C22264h.m8362a("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", EnumC22268j.SRGB);

    /* renamed from: j */
    public static final Set<String> f62390j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: k */
    public static final AbstractC22514b f62391k = new C22513a();

    /* renamed from: l */
    public static final Set<ImageHeaderParser.ImageType> f62392l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: m */
    public static final Queue<BitmapFactory.Options> f62393m = new ArrayDeque(0);

    /* renamed from: e.f.a.n.q.d.n$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/n$a.class */
    public class C22513a implements AbstractC22514b {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n.AbstractC22514b
        /* renamed from: a */
        public void mo8169a() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n.AbstractC22514b
        /* renamed from: b */
        public void mo8168b(AbstractC22303d abstractC22303d, Bitmap bitmap) {
        }
    }

    /* renamed from: e.f.a.n.q.d.n$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/n$b.class */
    public interface AbstractC22514b {
        /* renamed from: a */
        void mo8169a();

        /* renamed from: b */
        void mo8168b(AbstractC22303d abstractC22303d, Bitmap bitmap) throws IOException;
    }

    static {
        C22264h<AbstractC22505m> c22264h = AbstractC22505m.f62381g;
        Boolean bool = Boolean.FALSE;
        f62388h = C22264h.m8362a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f62389i = C22264h.m8362a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        char[] cArr = C22623j.f62648a;
    }

    public C22512n(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, AbstractC22303d abstractC22303d, AbstractC22301b abstractC22301b) {
        this.f62397d = list;
        Objects.requireNonNull(displayMetrics, "Argument must not be null");
        this.f62395b = displayMetrics;
        Objects.requireNonNull(abstractC22303d, "Argument must not be null");
        this.f62394a = abstractC22303d;
        Objects.requireNonNull(abstractC22301b, "Argument must not be null");
        this.f62396c = abstractC22301b;
    }

    /* renamed from: c */
    public static Bitmap m8187c(InputStream inputStream, BitmapFactory.Options options, AbstractC22514b abstractC22514b, AbstractC22303d abstractC22303d) throws IOException {
        if (options.inJustDecodeBounds) {
            inputStream.mark(Constants.TEN_MB);
        } else {
            abstractC22514b.mo8169a();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        Lock lock = C22485c0.f62356e;
        lock.lock();
        try {
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                lock.unlock();
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                }
                return decodeStream;
            } catch (IllegalArgumentException e) {
                IOException m8182h = m8182h(e, i, i2, str, options);
                Log.isLoggable("Downsampler", 3);
                if (options.inBitmap == null) {
                    throw m8182h;
                }
                try {
                    inputStream.reset();
                    abstractC22303d.mo8327c(options.inBitmap);
                    options.inBitmap = null;
                    Bitmap m8187c = m8187c(inputStream, options, abstractC22514b, abstractC22303d);
                    C22485c0.f62356e.unlock();
                    return m8187c;
                } catch (IOException e2) {
                    throw m8182h;
                }
            }
        } catch (Throwable th) {
            C22485c0.f62356e.unlock();
            throw th;
        }
    }

    /* renamed from: d */
    public static String m8186d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        StringBuilder m8728C = C22128a.m8728C(" (");
        m8728C.append(bitmap.getAllocationByteCount());
        m8728C.append(")");
        String sb = m8728C.toString();
        StringBuilder m8728C2 = C22128a.m8728C("[");
        m8728C2.append(bitmap.getWidth());
        m8728C2.append("x");
        m8728C2.append(bitmap.getHeight());
        m8728C2.append("] ");
        m8728C2.append(bitmap.getConfig());
        m8728C2.append(sb);
        return m8728C2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: e */
    public static int m8185e(double d) {
        int i = (d > 1.0d ? 1 : (d == 1.0d ? 0 : -1));
        ?? r5 = d;
        if (i > 0) {
            r5 = 1.0d / d;
        }
        return (int) Math.round(r5 * 0);
    }

    /* renamed from: f */
    public static int[] m8184f(InputStream inputStream, BitmapFactory.Options options, AbstractC22514b abstractC22514b, AbstractC22303d abstractC22303d) throws IOException {
        options.inJustDecodeBounds = true;
        m8187c(inputStream, options, abstractC22514b, abstractC22303d);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: g */
    public static boolean m8183g(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: h */
    public static IOException m8182h(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        StringBuilder m8716F = C22128a.m8716F("Exception decoding bitmap, outWidth: ", i, ", outHeight: ", i2, ", outMimeType: ");
        m8716F.append(str);
        m8716F.append(", inBitmap: ");
        m8716F.append(m8186d(options.inBitmap));
        return new IOException(m8716F.toString(), illegalArgumentException);
    }

    /* renamed from: i */
    public static void m8181i(BitmapFactory.Options options) {
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

    /* renamed from: j */
    public static int m8180j(double d) {
        return (int) (d + 0.5d);
    }

    /* renamed from: a */
    public AbstractC22394w<Bitmap> m8189a(InputStream inputStream, int i, int i2, C22267i c22267i, AbstractC22514b abstractC22514b) throws IOException {
        Queue<BitmapFactory.Options> queue;
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        C26232y.m2302t(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.f62396c.mo8337c(65536, byte[].class);
        synchronized (C22512n.class) {
            try {
                queue = f62393m;
                synchronized (queue) {
                    poll = queue.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    m8181i(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        options.inTempStorage = bArr;
        EnumC22259b enumC22259b = (EnumC22259b) c22267i.m8361c(f62386f);
        EnumC22268j enumC22268j = (EnumC22268j) c22267i.m8361c(f62387g);
        AbstractC22505m abstractC22505m = (AbstractC22505m) c22267i.m8361c(AbstractC22505m.f62381g);
        boolean booleanValue = ((Boolean) c22267i.m8361c(f62388h)).booleanValue();
        C22264h<Boolean> c22264h = f62389i;
        try {
            C22490e m8203d = C22490e.m8203d(m8188b(inputStream, options, abstractC22505m, enumC22259b, enumC22268j, c22267i.m8361c(c22264h) != null && ((Boolean) c22267i.m8361c(c22264h)).booleanValue(), i, i2, booleanValue, abstractC22514b), this.f62394a);
            m8181i(options);
            synchronized (queue) {
                queue.offer(options);
            }
            this.f62396c.put(bArr);
            return m8203d;
        } catch (Throwable th2) {
            m8181i(options);
            Queue<BitmapFactory.Options> queue2 = f62393m;
            synchronized (queue2) {
                queue2.offer(options);
                this.f62396c.put(bArr);
                throw th2;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v309, types: [double] */
    /* JADX WARN: Type inference failed for: r0v323, types: [double] */
    /* renamed from: b */
    public final Bitmap m8188b(InputStream inputStream, BitmapFactory.Options options, AbstractC22505m abstractC22505m, EnumC22259b enumC22259b, EnumC22268j enumC22268j, boolean z, int i, int i2, boolean z2, AbstractC22514b abstractC22514b) throws IOException {
        int i3;
        boolean z3;
        float f;
        int i4;
        Bitmap bitmap;
        ColorSpace colorSpace;
        Bitmap.Config config;
        int i5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int m8185e;
        int m8180j;
        char c;
        int i11;
        int i12 = Build.VERSION.SDK_INT;
        int i13 = C22619f.f62640b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int[] m8184f = m8184f(inputStream, options, abstractC22514b, this.f62394a);
        int i14 = m8184f[0];
        int i15 = m8184f[1];
        if (i14 == -1 || i15 == -1) {
            z = false;
        }
        int m2305s0 = C26232y.m2305s0(this.f62397d, inputStream, this.f62396c);
        switch (m2305s0) {
            case 3:
            case 4:
                i3 = 180;
                break;
            case 5:
            case 6:
                i3 = 90;
                break;
            case 7:
            case 8:
                i3 = 270;
                break;
            default:
                i3 = 0;
                break;
        }
        switch (m2305s0) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                z3 = true;
                break;
            default:
                z3 = false;
                break;
        }
        int i16 = i;
        if (i == Integer.MIN_VALUE) {
            i16 = m8183g(i3) ? i15 : i14;
        }
        int i17 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i17 = m8183g(i3) ? i14 : i15;
        }
        ImageHeaderParser.ImageType m2467F0 = C26232y.m2467F0(this.f62397d, inputStream, this.f62396c);
        AbstractC22303d abstractC22303d = this.f62394a;
        if (i14 <= 0 || i15 <= 0) {
            if (Log.isLoggable("Downsampler", 3)) {
                String str = "Unable to determine dimensions for: " + m2467F0 + " with target [" + i16 + "x" + i17 + "]";
            }
            f = 0.0f;
        } else {
            if (m8183g(i3)) {
                i6 = i15;
                i7 = i14;
            } else {
                i7 = i15;
                i6 = i14;
            }
            float mo8190b = abstractC22505m.mo8190b(i6, i7, i16, i17);
            if (mo8190b <= 0.0f) {
                throw new IllegalArgumentException("Cannot scale with factor: " + mo8190b + " from: " + abstractC22505m + ", source: [" + i14 + "x" + i15 + "], target: [" + i16 + "x" + i17 + "]");
            }
            AbstractC22505m.EnumC22511f mo8191a = abstractC22505m.mo8191a(i6, i7, i16, i17);
            if (mo8191a == null) {
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            float f2 = i6;
            int m8180j2 = m8180j(mo8190b * f2);
            float f3 = i7;
            int m8180j3 = m8180j(mo8190b * f3);
            int i18 = i6 / m8180j2;
            int i19 = i7 / m8180j3;
            AbstractC22505m.EnumC22511f enumC22511f = AbstractC22505m.EnumC22511f.MEMORY;
            int max = mo8191a == enumC22511f ? Math.max(i18, i19) : Math.min(i18, i19);
            if (i12 > 23 || !f62390j.contains(options.outMimeType)) {
                int max2 = Math.max(1, Integer.highestOneBit(max));
                i8 = max2;
                if (mo8191a == enumC22511f) {
                    i8 = max2;
                    if (max2 < 1.0f / mo8190b) {
                        i8 = max2 << 1;
                    }
                }
            } else {
                i8 = 1;
            }
            options.inSampleSize = i8;
            if (m2467F0 == ImageHeaderParser.ImageType.JPEG) {
                float min = Math.min(i8, 8);
                int ceil = (int) Math.ceil(f2 / min);
                int ceil2 = (int) Math.ceil(f3 / min);
                int i20 = i8 / 8;
                i10 = ceil2;
                i9 = ceil;
                if (i20 > 0) {
                    i9 = ceil / i20;
                    i10 = ceil2 / i20;
                }
            } else {
                if (m2467F0 == ImageHeaderParser.ImageType.PNG || m2467F0 == ImageHeaderParser.ImageType.PNG_A) {
                    float f4 = i8;
                    i11 = (int) Math.floor(f2 / f4);
                    c = Math.floor(f3 / f4);
                } else if (m2467F0 == ImageHeaderParser.ImageType.WEBP || m2467F0 == ImageHeaderParser.ImageType.WEBP_A) {
                    if (i12 >= 24) {
                        float f5 = i8;
                        i9 = Math.round(f2 / f5);
                        i10 = Math.round(f3 / f5);
                    } else {
                        float f6 = i8;
                        i11 = (int) Math.floor(f2 / f6);
                        c = Math.floor(f3 / f6);
                    }
                } else if (i6 % i8 == 0 && i7 % i8 == 0) {
                    int i21 = i6 / i8;
                    i10 = i7 / i8;
                    i9 = i21;
                } else {
                    int[] m8184f2 = m8184f(inputStream, options, abstractC22514b, abstractC22303d);
                    i9 = m8184f2[0];
                    i10 = m8184f2[1];
                }
                i9 = i11;
                i10 = c;
            }
            double mo8190b2 = abstractC22505m.mo8190b(i9, i10, i16, i17);
            options.inTargetDensity = m8180j((mo8190b2 / (m8180j / m8185e)) * m8180j(m8185e(mo8190b2) * mo8190b2));
            int m8185e2 = m8185e(mo8190b2);
            options.inDensity = m8185e2;
            int i22 = options.inTargetDensity;
            if (i22 > 0 && m8185e2 > 0 && i22 != m8185e2) {
                options.inScaled = true;
            } else {
                options.inTargetDensity = 0;
                options.inDensity = 0;
            }
            Log.isLoggable("Downsampler", 2);
            f = 0.0f;
        }
        boolean m8174b = this.f62398e.m8174b(i16, i17, z, z3);
        if (m8174b) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        if (!m8174b) {
            if (enumC22259b != EnumC22259b.PREFER_ARGB_8888) {
                try {
                    z4 = C26232y.m2467F0(this.f62397d, inputStream, this.f62396c).hasAlpha();
                } catch (IOException e) {
                    if (Log.isLoggable("Downsampler", 3)) {
                        String str2 = "Cannot determine whether the image has alpha or not from header, format " + enumC22259b;
                    }
                    z4 = false;
                }
                Bitmap.Config config2 = z4 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                options.inPreferredConfig = config2;
                if (config2 == Bitmap.Config.RGB_565) {
                    options.inDither = true;
                }
            } else {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            }
        }
        int i23 = options.inSampleSize;
        if (i14 < 0 || i15 < 0 || !z2) {
            int i24 = options.inTargetDensity;
            float f7 = i24 > 0 && (i5 = options.inDensity) > 0 && i24 != i5 ? i24 / options.inDensity : 1.0f;
            float f8 = i14;
            float f9 = i23;
            int ceil3 = (int) Math.ceil(f8 / f9);
            int ceil4 = (int) Math.ceil(i15 / f9);
            i16 = Math.round(ceil3 * f7);
            i4 = Math.round(ceil4 * f7);
            Log.isLoggable("Downsampler", 2);
        } else {
            i4 = i17;
        }
        if (i16 > 0 && i4 > 0) {
            AbstractC22303d abstractC22303d2 = this.f62394a;
            if (i12 < 26) {
                config = null;
            } else if (options.inPreferredConfig != Bitmap.Config.HARDWARE) {
                config = options.outConfig;
            }
            Bitmap.Config config3 = config;
            if (config == null) {
                config3 = options.inPreferredConfig;
            }
            options.inBitmap = abstractC22303d2.mo8326d(i16, i4, config3);
        }
        if (i12 >= 28) {
            options.inPreferredColorSpace = ColorSpace.get(enumC22268j == EnumC22268j.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut() ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        } else if (i12 >= 26) {
            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Bitmap m8187c = m8187c(inputStream, options, abstractC22514b, this.f62394a);
        abstractC22514b.mo8168b(this.f62394a, m8187c);
        if (Log.isLoggable("Downsampler", 2)) {
            m8186d(m8187c);
            m8186d(options.inBitmap);
            Thread.currentThread().getName();
            C22619f.m8031a(elapsedRealtimeNanos);
        }
        Bitmap bitmap2 = null;
        if (m8187c != null) {
            m8187c.setDensity(this.f62395b.densityDpi);
            AbstractC22303d abstractC22303d3 = this.f62394a;
            boolean z5 = true;
            switch (m2305s0) {
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    z5 = false;
                    break;
            }
            if (!z5) {
                bitmap = m8187c;
            } else {
                Matrix matrix = new Matrix();
                switch (m2305s0) {
                    case 2:
                        matrix.setScale(-1.0f, 1.0f);
                        break;
                    case 3:
                        matrix.setRotate(180.0f);
                        break;
                    case 4:
                        matrix.setRotate(180.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 5:
                        matrix.setRotate(90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 6:
                        matrix.setRotate(90.0f);
                        break;
                    case 7:
                        matrix.setRotate(-90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 8:
                        matrix.setRotate(-90.0f);
                        break;
                }
                RectF rectF = new RectF(f, f, m8187c.getWidth(), m8187c.getHeight());
                matrix.mapRect(rectF);
                bitmap = abstractC22303d3.mo8325e(Math.round(rectF.width()), Math.round(rectF.height()), C22485c0.m8206e(m8187c));
                matrix.postTranslate(-rectF.left, -rectF.top);
                bitmap.setHasAlpha(m8187c.hasAlpha());
                C22485c0.m8210a(m8187c, bitmap, matrix);
            }
            bitmap2 = bitmap;
            if (!m8187c.equals(bitmap)) {
                this.f62394a.mo8327c(m8187c);
                bitmap2 = bitmap;
            }
        }
        return bitmap2;
    }
}
