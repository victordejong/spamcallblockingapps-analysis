package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: androidx.media2.exoplayer.external.util.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/a.class */
public final class C1993a {
    private C1993a() {
    }

    /* renamed from: a */
    public static int m41691a(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static <T> T m41690a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: a */
    public static String m41689a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m41688a(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static void m41687a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: b */
    public static void m41686b(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: b */
    public static void m41685b(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
