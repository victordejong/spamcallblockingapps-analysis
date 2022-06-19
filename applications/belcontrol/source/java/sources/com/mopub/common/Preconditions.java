package com.mopub.common;

import android.os.Looper;
import com.mopub.common.logging.MoPubLog;
import java.util.IllegalFormatException;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/Preconditions.class */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/Preconditions$NoThrow.class */
    public static final class NoThrow {

        /* renamed from: a */
        public static volatile boolean f4290a = false;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m3924e(z, f4290a, "Illegal argument", "");
        }

        public static boolean checkArgument(boolean z, String str) {
            return Preconditions.m3924e(z, f4290a, str, "");
        }

        public static boolean checkArgument(boolean z, String str, Object... objArr) {
            return Preconditions.m3924e(z, f4290a, str, objArr);
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m3923f(obj, f4290a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m3923f(obj, f4290a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m3923f(obj, f4290a, str, objArr);
        }

        public static boolean checkState(boolean z) {
            return Preconditions.m3922g(z, f4290a, "Illegal state.", "");
        }

        public static boolean checkState(boolean z, String str) {
            return Preconditions.m3922g(z, f4290a, str, "");
        }

        public static boolean checkState(boolean z, String str, Object... objArr) {
            return Preconditions.m3922g(z, f4290a, str, objArr);
        }

        public static boolean checkUiThread() {
            return Preconditions.m3921h(f4290a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m3921h(f4290a, str, "");
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m3921h(false, str, objArr);
        }

        public static void setStrictMode(boolean z) {
            f4290a = z;
        }
    }

    private Preconditions() {
    }

    public static void checkArgument(boolean z) {
        m3924e(z, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean z, String str) {
        m3924e(z, true, str, "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m3924e(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj) {
        m3923f(obj, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object obj, String str) {
        m3923f(obj, true, str, "");
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m3923f(obj, true, str, objArr);
    }

    public static void checkState(boolean z) {
        m3922g(z, true, "Illegal state.", "");
    }

    public static void checkState(boolean z, String str) {
        m3922g(z, true, str, "");
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        m3922g(z, true, str, objArr);
    }

    public static void checkUiThread() {
        m3921h(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String str) {
        m3921h(true, str, "");
    }

    public static void checkUiThread(String str, Object... objArr) {
        m3921h(true, str, objArr);
    }

    /* renamed from: e */
    public static boolean m3924e(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m3920i = m3920i(str, objArr);
        if (z2) {
            throw new IllegalArgumentException(m3920i);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m3920i);
        return false;
    }

    /* renamed from: f */
    public static boolean m3923f(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String m3920i = m3920i(str, objArr);
        if (z) {
            throw new NullPointerException(m3920i);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m3920i);
        return false;
    }

    /* renamed from: g */
    public static boolean m3922g(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m3920i = m3920i(str, objArr);
        if (z2) {
            throw new IllegalStateException(m3920i);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m3920i);
        return false;
    }

    /* renamed from: h */
    public static boolean m3921h(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String m3920i = m3920i(str, objArr);
        if (z) {
            throw new IllegalStateException(m3920i);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m3920i);
        return false;
    }

    /* renamed from: i */
    public static String m3920i(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "MoPub preconditions had a format exception: " + e.getMessage());
            return valueOf;
        }
    }
}
