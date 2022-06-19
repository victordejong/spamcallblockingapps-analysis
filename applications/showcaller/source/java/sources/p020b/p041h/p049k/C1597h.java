package p020b.p041h.p049k;

import java.util.Locale;
import java.util.Objects;
/* renamed from: b.h.k.h */
/* loaded from: classes-dex2jar.jar:b/h/k/h.class */
public final class C1597h {
    /* renamed from: a */
    public static void m29663a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static int m29662b(int i, int i2, int i3, String str) {
        if (i >= i2) {
            if (i > i3) {
                throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            return i;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    /* renamed from: c */
    public static int m29661c(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static int m29660d(int i, int i2) {
        if ((i & i2) == i) {
            return i;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i) + ", but only 0x" + Integer.toHexString(i2) + " are allowed");
    }

    /* renamed from: e */
    public static <T> T m29659e(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: f */
    public static <T> T m29658f(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
