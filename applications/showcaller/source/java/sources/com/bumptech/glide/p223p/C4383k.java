package com.bumptech.glide.p223p;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.p212i.AbstractC4187l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.p.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/k.class */
public final class C4383k {

    /* renamed from: a */
    private static final char[] f13391a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    private static final char[] f13392b = new char[64];

    /* renamed from: c */
    private static volatile Handler f13393c;

    /* renamed from: com.bumptech.glide.p.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/k$a.class */
    public static /* synthetic */ class C4384a {

        /* renamed from: a */
        static final /* synthetic */ int[] f13394a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f13394a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13394a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13394a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13394a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13394a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private C4383k() {
    }

    /* renamed from: a */
    public static void m22717a() {
        if (m22701q()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on the main thread");
    }

    /* renamed from: b */
    public static boolean m22716b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj instanceof AbstractC4187l ? ((AbstractC4187l) obj).m23142a(obj2) : obj.equals(obj2);
    }

    /* renamed from: c */
    public static boolean m22715c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: d */
    private static String m22714d(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f13391a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: e */
    public static <T> Queue<T> m22713e(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: f */
    public static int m22712f(int i, int i2, Bitmap.Config config) {
        return i * i2 * m22710h(config);
    }

    @TargetApi(19)
    /* renamed from: g */
    public static int m22711g(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    return bitmap.getAllocationByteCount();
                } catch (NullPointerException e) {
                }
            }
            return bitmap.getHeight() * bitmap.getRowBytes();
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    /* renamed from: h */
    private static int m22710h(Bitmap.Config config) {
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        int i = C4384a.f13394a[config2.ordinal()];
        int i2 = 4;
        if (i == 1) {
            i2 = 1;
        } else if (i == 2 || i == 3) {
            i2 = 2;
        } else if (i == 4) {
            i2 = 8;
        }
        return i2;
    }

    /* renamed from: i */
    public static <T> List<T> m22709i(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: j */
    private static Handler m22708j() {
        if (f13393c == null) {
            synchronized (C4383k.class) {
                try {
                    if (f13393c == null) {
                        f13393c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f13393c;
    }

    /* renamed from: k */
    public static int m22707k(float f) {
        return m22706l(f, 17);
    }

    /* renamed from: l */
    public static int m22706l(float f, int i) {
        return m22705m(Float.floatToIntBits(f), i);
    }

    /* renamed from: m */
    public static int m22705m(int i, int i2) {
        return (i2 * 31) + i;
    }

    /* renamed from: n */
    public static int m22704n(Object obj, int i) {
        return m22705m(obj == null ? 0 : obj.hashCode(), i);
    }

    /* renamed from: o */
    public static int m22703o(boolean z, int i) {
        return m22705m(z ? 1 : 0, i);
    }

    /* renamed from: p */
    public static boolean m22702p() {
        return !m22701q();
    }

    /* renamed from: q */
    public static boolean m22701q() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: r */
    private static boolean m22700r(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: s */
    public static boolean m22699s(int i, int i2) {
        return m22700r(i) && m22700r(i2);
    }

    /* renamed from: t */
    public static void m22698t(Runnable runnable) {
        m22708j().post(runnable);
    }

    /* renamed from: u */
    public static void m22697u(Runnable runnable) {
        m22708j().removeCallbacks(runnable);
    }

    /* renamed from: v */
    public static String m22696v(byte[] bArr) {
        String m22714d;
        char[] cArr = f13392b;
        synchronized (cArr) {
            m22714d = m22714d(bArr, cArr);
        }
        return m22714d;
    }
}
