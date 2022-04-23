package p131c.p161d.p170b.p188c.p203g1;

import android.text.TextUtils;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: c.d.b.c.g1.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/e.class */
public final class C2877e {
    /* renamed from: a */
    public static int m28738a(int i, int i2, int i3) {
        if (i >= i2 && i < i3) {
            return i;
        }
        throw new IndexOutOfBoundsException();
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m28737a(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m28736a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static String m28735a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m28734a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m28733a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: b */
    public static <T> T m28732b(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public static void m28731b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public static void m28730b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
