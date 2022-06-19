package com.mopub.common;

import android.os.Looper;
import com.mopub.common.logging.MoPubLog;
import java.util.IllegalFormatException;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/Preconditions.class */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/Preconditions$NoThrow.class */
    public static final class NoThrow {

        /* renamed from: a */
        private static volatile boolean f58787a = false;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m6719c(z, f58787a, "Illegal argument", "");
        }

        public static boolean checkArgument(boolean z, String str) {
            return Preconditions.m6719c(z, f58787a, str, "");
        }

        public static boolean checkArgument(boolean z, String str, Object... objArr) {
            return Preconditions.m6719c(z, f58787a, str, objArr);
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m6722b(obj, f58787a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m6722b(obj, f58787a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m6722b(obj, f58787a, str, objArr);
        }

        public static boolean checkState(boolean z) {
            return Preconditions.m6718d(z, f58787a, "Illegal state.", "");
        }

        public static boolean checkState(boolean z, String str) {
            return Preconditions.m6718d(z, f58787a, str, "");
        }

        public static boolean checkState(boolean z, String str, Object... objArr) {
            return Preconditions.m6718d(z, f58787a, str, objArr);
        }

        public static boolean checkUiThread() {
            return Preconditions.m6721b(f58787a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m6721b(f58787a, str, "");
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m6721b(false, str, objArr);
        }

        public static void setStrictMode(boolean z) {
            f58787a = z;
        }
    }

    private Preconditions() {
    }

    /* renamed from: a */
    private static String m6725a(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "MoPub preconditions had a format exception: " + e.getMessage());
            return valueOf;
        }
    }

    /* renamed from: b */
    public static boolean m6722b(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String m6725a = m6725a(str, objArr);
        if (z) {
            throw new NullPointerException(m6725a);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m6725a);
        return false;
    }

    /* renamed from: b */
    public static boolean m6721b(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String m6725a = m6725a(str, objArr);
        if (z) {
            throw new IllegalStateException(m6725a);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m6725a);
        return false;
    }

    /* renamed from: c */
    public static boolean m6719c(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m6725a = m6725a(str, objArr);
        if (z2) {
            throw new IllegalArgumentException(m6725a);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m6725a);
        return false;
    }

    public static void checkArgument(boolean z) {
        m6719c(z, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean z, String str) {
        m6719c(z, true, str, "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m6719c(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj) {
        m6722b(obj, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object obj, String str) {
        m6722b(obj, true, str, "");
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m6722b(obj, true, str, objArr);
    }

    public static void checkState(boolean z) {
        m6718d(z, true, "Illegal state.", "");
    }

    public static void checkState(boolean z, String str) {
        m6718d(z, true, str, "");
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        m6718d(z, true, str, objArr);
    }

    public static void checkUiThread() {
        m6721b(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String str) {
        m6721b(true, str, "");
    }

    public static void checkUiThread(String str, Object... objArr) {
        m6721b(true, str, objArr);
    }

    /* renamed from: d */
    public static boolean m6718d(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m6725a = m6725a(str, objArr);
        if (z2) {
            throw new IllegalStateException(m6725a);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m6725a);
        return false;
    }
}
