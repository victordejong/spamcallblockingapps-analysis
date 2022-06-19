package com.bumptech.glide.p116g;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.model.Model;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.g.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/k.class */
public final class C3644k {

    /* renamed from: a */
    private static final char[] f13755a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    private static final char[] f13756b = new char[64];

    /* renamed from: c */
    private static volatile Handler f13757c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.g.k$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/k$1.class */
    public static final /* synthetic */ class C36451 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13758a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f13758a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13758a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13758a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13758a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13758a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private C3644k() {
    }

    /* renamed from: a */
    public static int m37583a(float f) {
        return Float.floatToIntBits(f) + 527;
    }

    /* renamed from: a */
    public static int m37580a(int i, int i2, Bitmap.Config config) {
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        int i3 = C36451.f13758a[config2.ordinal()];
        int i4 = 4;
        if (i3 == 1) {
            i4 = 1;
        } else if (i3 == 2 || i3 == 3) {
            i4 = 2;
        } else if (i3 == 4) {
            i4 = 8;
        }
        return i * i2 * i4;
    }

    /* renamed from: a */
    public static int m37579a(Bitmap bitmap) {
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

    /* renamed from: a */
    public static int m37578a(Object obj, int i) {
        return (i * 31) + (obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: a */
    public static int m37574a(boolean z, int i) {
        return (i * 31) + (z ? 1 : 0);
    }

    /* renamed from: a */
    public static String m37573a(byte[] bArr) {
        String str;
        char[] cArr = f13756b;
        synchronized (cArr) {
            for (int i = 0; i < bArr.length; i++) {
                int i2 = bArr[i] & 255;
                int i3 = i * 2;
                char[] cArr2 = f13755a;
                cArr[i3] = cArr2[i2 >>> 4];
                cArr[i3 + 1] = cArr2[i2 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }

    /* renamed from: a */
    public static <T> List<T> m37575a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <T> Queue<T> m37582a(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: a */
    public static void m37584a() {
        if (m37567c()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on the main thread");
    }

    /* renamed from: a */
    public static void m37576a(Runnable runnable) {
        m37565e().post(runnable);
    }

    /* renamed from: a */
    public static boolean m37581a(int i, int i2) {
        return m37571b(i) && m37571b(i2);
    }

    /* renamed from: a */
    public static boolean m37577a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m37570b(int i, int i2) {
        return (i2 * 31) + i;
    }

    /* renamed from: b */
    public static void m37572b() {
        if (m37566d()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on a background thread");
    }

    /* renamed from: b */
    public static void m37568b(Runnable runnable) {
        m37565e().removeCallbacks(runnable);
    }

    /* renamed from: b */
    private static boolean m37571b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: b */
    public static boolean m37569b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj instanceof Model ? ((Model) obj).isEquivalentTo(obj2) : obj.equals(obj2);
    }

    /* renamed from: c */
    public static boolean m37567c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: d */
    public static boolean m37566d() {
        return !m37567c();
    }

    /* renamed from: e */
    private static Handler m37565e() {
        if (f13757c == null) {
            synchronized (C3644k.class) {
                try {
                    if (f13757c == null) {
                        f13757c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f13757c;
    }
}
