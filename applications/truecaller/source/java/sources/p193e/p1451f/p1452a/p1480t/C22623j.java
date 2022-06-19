package p193e.p1451f.p1452a.p1480t;

import android.graphics.Bitmap;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: e.f.a.t.j */
/* loaded from: classes-dex2jar.jar:e/f/a/t/j.class */
public final class C22623j {

    /* renamed from: a */
    public static final char[] f62648a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    public static final char[] f62649b = new char[64];

    /* renamed from: e.f.a.t.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/t/j$a.class */
    public static /* synthetic */ class C22624a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f62650a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f62650a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f62650a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f62650a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f62650a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f62650a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: a */
    public static void m8023a() {
        if (m8015i()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on the main thread");
    }

    /* renamed from: b */
    public static boolean m8022b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: c */
    public static int m8021c(int i, int i2, Bitmap.Config config) {
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        int i3 = C22624a.f62650a[config2.ordinal()];
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

    /* renamed from: d */
    public static int m8020d(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    /* renamed from: e */
    public static <T> List<T> m8019e(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static int m8018f(float f, int i) {
        return (i * 31) + Float.floatToIntBits(f);
    }

    /* renamed from: g */
    public static int m8017g(Object obj, int i) {
        return (i * 31) + (obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: h */
    public static boolean m8016h() {
        return !m8015i();
    }

    /* renamed from: i */
    public static boolean m8015i() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: j */
    public static boolean m8014j(int i, int i2) {
        boolean z = false;
        if (i > 0 || i == Integer.MIN_VALUE) {
            z = false;
            if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                z = true;
            }
        }
        return z;
    }
}
