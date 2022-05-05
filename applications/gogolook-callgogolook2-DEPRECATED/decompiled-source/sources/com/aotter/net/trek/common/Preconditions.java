package com.aotter.net.trek.common;

import android.os.Looper;
import com.aotter.net.trek.util.TrekLog;
import java.util.IllegalFormatException;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/Preconditions.class */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/Preconditions$NoThrow.class */
    public final class NoThrow {

        /* renamed from: a */
        public static volatile boolean f1502a = false;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m36367b(z, f1502a, "Illegal argument", "");
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m36369b(obj, f1502a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m36369b(obj, f1502a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m36369b(obj, f1502a, str, objArr);
        }

        public static boolean checkUiThread() {
            return Preconditions.m36368b(f1502a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m36368b(f1502a, str, "");
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m36368b(false, str, objArr);
        }

        public static void setStrictMode(boolean z) {
            f1502a = z;
        }
    }

    /* renamed from: a */
    public static String m36372a(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e) {
            TrekLog.m36317e("Trek preconditions had a format exception: " + e.getMessage());
            return valueOf;
        }
    }

    /* renamed from: b */
    public static boolean m36369b(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String a = m36372a(str, objArr);
        if (!z) {
            TrekLog.m36317e(a);
            return false;
        }
        throw new NullPointerException(a);
    }

    /* renamed from: b */
    public static boolean m36368b(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String a = m36372a(str, objArr);
        if (!z) {
            TrekLog.m36317e(a);
            return false;
        }
        throw new IllegalStateException(a);
    }

    /* renamed from: b */
    public static boolean m36367b(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a = m36372a(str, objArr);
        if (!z2) {
            TrekLog.m36317e(a);
            return false;
        }
        throw new IllegalArgumentException(a);
    }

    public static void checkArgument(boolean z) {
        m36367b(z, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m36367b(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj) {
        m36369b(obj, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object obj, String str) {
        m36369b(obj, true, str, "");
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m36369b(obj, true, str, objArr);
    }

    public static void checkUiThread() {
        m36368b(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String str) {
        m36368b(true, str, "");
    }

    public static void checkUiThread(String str, Object... objArr) {
        m36368b(true, str, objArr);
    }
}
