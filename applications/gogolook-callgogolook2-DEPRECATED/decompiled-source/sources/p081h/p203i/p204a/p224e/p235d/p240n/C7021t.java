package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import p081h.p203i.p204a.p224e.p235d.p249s.C7094w;
/* renamed from: h.i.a.e.d.n.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/t.class */
public final class C7021t {
    /* renamed from: a */
    public static int m21293a(int i) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @NonNull
    /* renamed from: a */
    public static <T> T m21290a(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null reference");
    }

    @NonNull
    /* renamed from: a */
    public static <T> T m21289a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static String m21287a(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: a */
    public static void m21294a() {
        m21279c("Must not be called on the main application thread");
    }

    /* renamed from: a */
    public static void m21292a(Handler handler) {
        String name = Looper.myLooper() != null ? Looper.myLooper().getThread().getName() : "null current looper";
        String name2 = handler.getLooper().getThread().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name2).length() + 36 + String.valueOf(name).length());
        sb.append("Must be called on ");
        sb.append(name2);
        sb.append(" thread, but got ");
        sb.append(name);
        sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        m21291a(handler, sb.toString());
    }

    /* renamed from: a */
    public static void m21291a(Handler handler, String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: a */
    public static void m21288a(String str) {
        if (!C7094w.m21097a()) {
            throw new IllegalStateException(str);
        }
    }

    /* renamed from: a */
    public static void m21286a(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m21285a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* renamed from: a */
    public static void m21284a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: b */
    public static String m21283b(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    /* renamed from: b */
    public static void m21282b(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: b */
    public static void m21281b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* renamed from: b */
    public static void m21280b(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    /* renamed from: c */
    public static void m21279c(String str) {
        if (C7094w.m21097a()) {
            throw new IllegalStateException(str);
        }
    }
}
