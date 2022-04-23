package com.bumptech.glide.g;

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
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f7358a = "0123456789abcdef".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f7359b = new char[64];

    /* renamed from: c  reason: collision with root package name */
    private static volatile Handler f7360c;

    /* renamed from: com.bumptech.glide.g.k$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/k$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7361a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f7361a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7361a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7361a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7361a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f7361a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    private k() {
    }

    public static int a(float f) {
        return Float.floatToIntBits(f) + 527;
    }

    public static int a(int i, int i2, Bitmap.Config config) {
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        int i3 = AnonymousClass1.f7361a[config2.ordinal()];
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

    public static int a(Bitmap bitmap) {
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

    public static int a(Object obj, int i) {
        return (i * 31) + (obj == null ? 0 : obj.hashCode());
    }

    public static int a(boolean z, int i) {
        return (i * 31) + (z ? 1 : 0);
    }

    public static String a(byte[] bArr) {
        String str;
        char[] cArr = f7359b;
        synchronized (cArr) {
            for (int i = 0; i < bArr.length; i++) {
                int i2 = bArr[i] & 255;
                int i3 = i * 2;
                char[] cArr2 = f7358a;
                cArr[i3] = cArr2[i2 >>> 4];
                cArr[i3 + 1] = cArr2[i2 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }

    public static <T> List<T> a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static <T> Queue<T> a(int i) {
        return new ArrayDeque(i);
    }

    public static void a() {
        if (!c()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static void a(Runnable runnable) {
        e().post(runnable);
    }

    public static boolean a(int i, int i2) {
        return b(i) && b(i2);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int b(int i, int i2) {
        return (i2 * 31) + i;
    }

    public static void b() {
        if (!d()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void b(Runnable runnable) {
        e().removeCallbacks(runnable);
    }

    private static boolean b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    public static boolean b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj instanceof Model ? ((Model) obj).isEquivalentTo(obj2) : obj.equals(obj2);
    }

    public static boolean c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean d() {
        return !c();
    }

    private static Handler e() {
        if (f7360c == null) {
            synchronized (k.class) {
                try {
                    if (f7360c == null) {
                        f7360c = new Handler(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7360c;
    }
}
