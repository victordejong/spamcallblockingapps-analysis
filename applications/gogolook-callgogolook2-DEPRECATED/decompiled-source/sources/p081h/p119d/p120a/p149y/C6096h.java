package p081h.p119d.p120a.p149y;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* renamed from: h.d.a.y.h */
/* loaded from: classes-dex2jar.jar:h/d/a/y/h.class */
public final class C6096h {

    /* renamed from: a */
    public static final char[] f15154a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    public static final char[] f15155b = new char[64];

    /* renamed from: h.d.a.y.h$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/y/h$a.class */
    public static /* synthetic */ class C6097a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f15156a = new int[Bitmap.Config.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f15156a[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15156a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15156a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f15156a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static int m23862a(int i, int i2, Bitmap.Config config) {
        return i * i2 * m23861a(config);
    }

    /* renamed from: a */
    public static int m23861a(Bitmap.Config config) {
        int i;
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        int i2 = C6097a.f15156a[config2.ordinal()];
        if (i2 != 1) {
            i = 2;
            if (i2 != 2) {
                i = 2;
                if (i2 != 3) {
                    i = 4;
                }
            }
        } else {
            i = 1;
        }
        return i;
    }

    @TargetApi(19)
    /* renamed from: a */
    public static int m23860a(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
        }
        return bitmap.getHeight() * bitmap.getRowBytes();
    }

    /* renamed from: a */
    public static String m23858a(byte[] bArr) {
        String a;
        synchronized (f15155b) {
            a = m23857a(bArr, f15155b);
        }
        return a;
    }

    /* renamed from: a */
    public static String m23857a(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f15154a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static <T> List<T> m23859a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            arrayList.add(t);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <T> Queue<T> m23864a(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: a */
    public static void m23865a() {
        if (!m23854c()) {
            throw new IllegalArgumentException("YOu must call this method on a background thread");
        }
    }

    /* renamed from: a */
    public static boolean m23863a(int i, int i2) {
        return m23855b(i) && m23855b(i2);
    }

    /* renamed from: b */
    public static void m23856b() {
        if (!m23853d()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    /* renamed from: b */
    public static boolean m23855b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: c */
    public static boolean m23854c() {
        return !m23853d();
    }

    /* renamed from: d */
    public static boolean m23853d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
