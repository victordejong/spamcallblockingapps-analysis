package androidx.media2.exoplayer.external.util;

import android.text.TextUtils;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/a.class */
public final class a {
    private a() {
    }

    public static int a(int i, int i2) {
        if (i >= 0 && i < i2) {
            return i;
        }
        throw new IndexOutOfBoundsException();
    }

    @EnsuresNonNull({"#1"})
    public static <T> T a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @EnsuresNonNull({"#1"})
    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    public static void a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
