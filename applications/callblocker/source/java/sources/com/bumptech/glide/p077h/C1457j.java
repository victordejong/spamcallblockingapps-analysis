package com.bumptech.glide.p077h;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import com.bumptech.glide.load.p081b.AbstractC1542l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.h.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/j.class */
public final class C1457j {

    /* renamed from: a */
    private static final char[] f4769a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    private static final char[] f4770b = new char[64];

    /* renamed from: com.bumptech.glide.h.j$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/j$1.class */
    public static /* synthetic */ class C14581 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4771a = new int[Bitmap.Config.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:24:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:22:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0051 -> B:18:0x0014). Please submit an issue!!! */
        static {
            try {
                f4771a[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4771a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4771a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4771a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4771a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: a */
    public static int m16983a(float f) {
        return m16982a(f, 17);
    }

    /* renamed from: a */
    public static int m16982a(float f, int i) {
        return m16968b(Float.floatToIntBits(f), i);
    }

    /* renamed from: a */
    public static int m16979a(int i, int i2, Bitmap.Config config) {
        return i * i2 * m16978a(config);
    }

    /* renamed from: a */
    private static int m16978a(Bitmap.Config config) {
        int i;
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        switch (C14581.f4771a[config2.ordinal()]) {
            case 1:
                i = 1;
                break;
            case 2:
            case 3:
                i = 2;
                break;
            case 4:
                i = 8;
                break;
            default:
                i = 4;
                break;
        }
        return i;
    }

    @TargetApi(19)
    /* renamed from: a */
    public static int m16977a(Bitmap bitmap) {
        int allocationByteCount;
        if (bitmap.isRecycled()) {
            throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
        }
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                allocationByteCount = bitmap.getAllocationByteCount();
            } catch (NullPointerException e) {
            }
            return allocationByteCount;
        }
        allocationByteCount = bitmap.getHeight() * bitmap.getRowBytes();
        return allocationByteCount;
    }

    /* renamed from: a */
    public static int m16976a(Object obj, int i) {
        return m16968b(obj == null ? 0 : obj.hashCode(), i);
    }

    /* renamed from: a */
    public static int m16973a(boolean z, int i) {
        return m16968b(z ? 1 : 0, i);
    }

    /* renamed from: a */
    public static String m16972a(byte[] bArr) {
        String m16971a;
        synchronized (f4770b) {
            m16971a = m16971a(bArr, f4770b);
        }
        return m16971a;
    }

    /* renamed from: a */
    private static String m16971a(byte[] bArr, char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            cArr[i * 2] = f4769a[i2 >>> 4];
            cArr[(i * 2) + 1] = f4769a[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static <T> List<T> m16974a(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <T> Queue<T> m16981a(int i) {
        return new ArrayDeque(i);
    }

    /* renamed from: a */
    public static void m16984a() {
        if (!m16970b()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    /* renamed from: a */
    public static boolean m16980a(int i, int i2) {
        return m16969b(i) && m16969b(i2);
    }

    /* renamed from: a */
    public static boolean m16975a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: b */
    public static int m16968b(int i, int i2) {
        return (i2 * 31) + i;
    }

    /* renamed from: b */
    public static boolean m16970b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: b */
    private static boolean m16969b(int i) {
        return i > 0 || i == Integer.MIN_VALUE;
    }

    /* renamed from: b */
    public static boolean m16967b(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj instanceof AbstractC1542l ? ((AbstractC1542l) obj).m16849a(obj2) : obj.equals(obj2);
    }

    /* renamed from: c */
    public static boolean m16966c() {
        return !m16970b();
    }
}
