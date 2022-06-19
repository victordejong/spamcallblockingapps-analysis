package com.bumptech.glide.p029o;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.p023i.AbstractC0797l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.o.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/k.class */
public final class C0857k {

    /* renamed from: a */
    private static final char[] f3828a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    private static final char[] f3829b = new char[64];

    /* renamed from: c */
    private static volatile Handler f3830c;

    /* renamed from: com.bumptech.glide.o.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/k$a.class */
    public static /* synthetic */ class C0858a {

        /* renamed from: a */
        static final /* synthetic */ int[] f3831a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f3831a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3831a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3831a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3831a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3831a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private C0857k() {
    }

    /* renamed from: a */
    public static void m10757a() {
        if (m10741q()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on the main thread");
    }

    /* renamed from: b */
    public static boolean m10756b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj instanceof AbstractC0797l ? ((AbstractC0797l) obj).m10987a(obj2) : obj.equals(obj2);
    }

    /* renamed from: c */
    public static boolean m10755c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: d */
    private static String m10754d(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f3828a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: e */
    public static <T> Queue<T> m10753e(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: f */
    public static int m10752f(int i, int i2, Bitmap.Config config) {
        return i * i2 * m10750h(config);
    }

    @TargetApi(19)
    /* renamed from: g */
    public static int m10751g(Bitmap bitmap) {
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
    private static int m10750h(Bitmap.Config config) {
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        int i = C0858a.f3831a[config2.ordinal()];
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
    public static <T> List<T> m10749i(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: j */
    private static Handler m10748j() {
        if (f3830c == null) {
            synchronized (C0857k.class) {
                try {
                    if (f3830c == null) {
                        f3830c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3830c;
    }

    /* renamed from: k */
    public static int m10747k(float f) {
        return m10746l(f, 17);
    }

    /* renamed from: l */
    public static int m10746l(float f, int i) {
        return m10745m(Float.floatToIntBits(f), i);
    }

    /* renamed from: m */
    public static int m10745m(int i, int i2) {
        return (i2 * 31) + i;
    }

    /* renamed from: n */
    public static int m10744n(Object obj, int i) {
        return m10745m(obj == null ? 0 : obj.hashCode(), i);
    }

    /* renamed from: o */
    public static int m10743o(boolean z, int i) {
        return m10745m(z ? 1 : 0, i);
    }

    /* renamed from: p */
    public static boolean m10742p() {
        return !m10741q();
    }

    /* renamed from: q */
    public static boolean m10741q() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: r */
    private static boolean m10740r(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: s */
    public static boolean m10739s(int i, int i2) {
        return m10740r(i) && m10740r(i2);
    }

    /* renamed from: t */
    public static void m10738t(Runnable runnable) {
        m10748j().post(runnable);
    }

    /* renamed from: u */
    public static void m10737u(Runnable runnable) {
        m10748j().removeCallbacks(runnable);
    }

    /* renamed from: v */
    public static String m10736v(byte[] bArr) {
        String m10754d;
        char[] cArr = f3829b;
        synchronized (cArr) {
            m10754d = m10754d(bArr, cArr);
        }
        return m10754d;
    }
}
