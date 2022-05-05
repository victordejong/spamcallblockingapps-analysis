package p081h.p119d.p120a.p124s.p134k.p135e;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.aotter.net.volley.toolbox.DiskBasedCache;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p149y.C6089a;
import p081h.p119d.p120a.p149y.C6091c;
import p081h.p119d.p120a.p149y.C6094f;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.k.e.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/f.class */
public abstract class AbstractC5958f implements AbstractC5953a<InputStream> {

    /* renamed from: a */
    public static final Set<ImageHeaderParser.ImageType> f14875a = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);

    /* renamed from: b */
    public static final Queue<BitmapFactory.Options> f14876b = C6096h.m23864a(0);

    /* renamed from: c */
    public static final AbstractC5958f f14877c = new C5959a();

    /* renamed from: d */
    public static final AbstractC5958f f14878d = new C5960b();

    /* renamed from: h.d.a.s.k.e.f$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/f$a.class */
    public static final class C5959a extends AbstractC5958f {
        @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5958f
        /* renamed from: a */
        public int mo24109a(int i, int i2, int i3, int i4) {
            return Math.min(i2 / i4, i / i3);
        }

        @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5953a
        public String getId() {
            return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
        }
    }

    /* renamed from: h.d.a.s.k.e.f$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/f$b.class */
    public static final class C5960b extends AbstractC5958f {
        @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5958f
        /* renamed from: a */
        public int mo24109a(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int i5 = 1;
            int max = Math.max(1, Integer.highestOneBit(ceil));
            if (max >= ceil) {
                i5 = 0;
            }
            return max << i5;
        }

        @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5953a
        public String getId() {
            return "AT_MOST.com.bumptech.glide.load.data.bitmap";
        }
    }

    /* renamed from: h.d.a.s.k.e.f$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/f$c.class */
    public static final class C5961c extends AbstractC5958f {
        @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5958f
        /* renamed from: a */
        public int mo24109a(int i, int i2, int i3, int i4) {
            return 0;
        }

        @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5953a
        public String getId() {
            return "NONE.com.bumptech.glide.load.data.bitmap";
        }
    }

    static {
        new C5961c();
    }

    /* renamed from: a */
    public static Bitmap.Config m24113a(InputStream inputStream, EnumC5804a aVar) {
        boolean z;
        if (aVar == EnumC5804a.ALWAYS_ARGB_8888 || aVar == EnumC5804a.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            return Bitmap.Config.ARGB_8888;
        }
        inputStream.mark(1024);
        try {
            try {
                z = new ImageHeaderParser(inputStream).m36086d();
            } catch (IOException e) {
                z = false;
                if (Log.isLoggable("Downsampler", 5)) {
                    String str = "Cannot determine whether the image has alpha or not from header for format " + aVar;
                    z = false;
                }
            }
            try {
                inputStream.reset();
            } catch (IOException e2) {
                Log.isLoggable("Downsampler", 5);
            }
            return z ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        } catch (Throwable th) {
            try {
                inputStream.reset();
            } catch (IOException e3) {
                Log.isLoggable("Downsampler", 5);
            }
            throw th;
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public static BitmapFactory.Options m24120a() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (AbstractC5958f.class) {
            try {
                synchronized (f14876b) {
                    poll = f14876b.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    m24111b(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return options;
    }

    /* renamed from: a */
    public static void m24118a(BitmapFactory.Options options) {
        m24111b(options);
        synchronized (f14876b) {
            f14876b.offer(options);
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public static void m24117a(BitmapFactory.Options options, Bitmap bitmap) {
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = bitmap;
        }
    }

    /* renamed from: a */
    public static boolean m24114a(InputStream inputStream) {
        if (19 <= Build.VERSION.SDK_INT) {
            return true;
        }
        inputStream.mark(1024);
        try {
            try {
                boolean contains = f14875a.contains(new ImageHeaderParser(inputStream).m36087c());
                try {
                    inputStream.reset();
                } catch (IOException e) {
                    Log.isLoggable("Downsampler", 5);
                }
                return contains;
            } catch (Throwable th) {
                try {
                    inputStream.reset();
                } catch (IOException e2) {
                    Log.isLoggable("Downsampler", 5);
                }
                throw th;
            }
        } catch (IOException e3) {
            Log.isLoggable("Downsampler", 5);
            try {
                inputStream.reset();
                return false;
            } catch (IOException e4) {
                Log.isLoggable("Downsampler", 5);
                return false;
            }
        }
    }

    /* renamed from: b */
    public static Bitmap m24110b(C6094f fVar, C5970n nVar, BitmapFactory.Options options) {
        if (options.inJustDecodeBounds) {
            fVar.mark(DiskBasedCache.DEFAULT_DISK_USAGE_BYTES);
        } else {
            nVar.m24101a();
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(fVar, null, options);
        try {
            if (options.inJustDecodeBounds) {
                fVar.reset();
            }
        } catch (IOException e) {
            if (Log.isLoggable("Downsampler", 6)) {
                Log.e("Downsampler", "Exception loading inDecodeBounds=" + options.inJustDecodeBounds + " sample=" + options.inSampleSize, e);
            }
        }
        return decodeStream;
    }

    @TargetApi(11)
    /* renamed from: b */
    public static void m24111b(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }

    /* renamed from: a */
    public abstract int mo24109a(int i, int i2, int i3, int i4);

    /* renamed from: a */
    public final int m24119a(int i, int i2, int i3, int i4, int i5) {
        int i6 = i5;
        if (i5 == Integer.MIN_VALUE) {
            i6 = i3;
        }
        int i7 = i4;
        if (i4 == Integer.MIN_VALUE) {
            i7 = i2;
        }
        int a = (i == 90 || i == 270) ? mo24109a(i3, i2, i7, i6) : mo24109a(i2, i3, i7, i6);
        return Math.max(1, a == 0 ? 0 : Integer.highestOneBit(a));
    }

    /* renamed from: a */
    public final Bitmap m24115a(C6094f fVar, C5970n nVar, BitmapFactory.Options options, AbstractC5856c cVar, int i, int i2, int i3, EnumC5804a aVar) {
        Bitmap.Config a = m24113a(fVar, aVar);
        options.inSampleSize = i3;
        options.inPreferredConfig = a;
        if ((options.inSampleSize == 1 || 19 <= Build.VERSION.SDK_INT) && m24114a(fVar)) {
            double d = i3;
            m24117a(options, cVar.mo24217b((int) Math.ceil(i / d), (int) Math.ceil(i2 / d), a));
        }
        return m24110b(fVar, nVar, options);
    }

    /* renamed from: a */
    public Bitmap m24112a(InputStream inputStream, AbstractC5856c cVar, int i, int i2, EnumC5804a aVar) {
        int i3;
        C6089a b = C6089a.m23886b();
        byte[] a = b.m23888a();
        byte[] a2 = b.m23888a();
        BitmapFactory.Options a3 = m24120a();
        C5970n nVar = new C5970n(inputStream, a2);
        C6091c b2 = C6091c.m23880b(nVar);
        C6094f fVar = new C6094f(b2);
        try {
            b2.mark(DiskBasedCache.DEFAULT_DISK_USAGE_BYTES);
            try {
                i3 = new ImageHeaderParser(b2).m36088b();
                try {
                    b2.reset();
                } catch (IOException e) {
                    Log.isLoggable("Downsampler", 5);
                }
            } catch (IOException e2) {
                Log.isLoggable("Downsampler", 5);
                try {
                    b2.reset();
                } catch (IOException e3) {
                    Log.isLoggable("Downsampler", 5);
                }
                i3 = 0;
            }
            a3.inTempStorage = a;
            int[] a4 = m24116a(fVar, nVar, a3);
            int i4 = a4[0];
            int i5 = a4[1];
            Bitmap a5 = m24115a(fVar, nVar, a3, cVar, i4, i5, m24119a(C5974q.m24097a(i3), i4, i5, i, i2), aVar);
            IOException a6 = b2.m23883a();
            if (a6 == null) {
                Bitmap bitmap = null;
                if (a5 != null) {
                    Bitmap a7 = C5974q.m24092a(a5, cVar, i3);
                    bitmap = a7;
                    if (!a5.equals(a7)) {
                        bitmap = a7;
                        if (!cVar.mo24220a(a5)) {
                            a5.recycle();
                            bitmap = a7;
                        }
                    }
                }
                return bitmap;
            }
            throw new RuntimeException(a6);
        } finally {
            b.m23887a(a);
            b.m23887a(a2);
            b2.m23881b();
            m24118a(a3);
        }
    }

    /* renamed from: a */
    public int[] m24116a(C6094f fVar, C5970n nVar, BitmapFactory.Options options) {
        options.inJustDecodeBounds = true;
        m24110b(fVar, nVar, options);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }
}
