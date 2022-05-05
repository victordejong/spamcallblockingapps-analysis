package com.mopub.common;

import android.os.Looper;
import com.mopub.common.logging.MoPubLog;
import java.util.IllegalFormatException;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/Preconditions.class */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/Preconditions$NoThrow.class */
    public static final class NoThrow {

        /* renamed from: a */
        public static volatile boolean f8131a = false;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m30761c(z, f8131a, "Illegal argument", "");
        }

        public static boolean checkArgument(boolean z, String str) {
            return Preconditions.m30761c(z, f8131a, str, "");
        }

        public static boolean checkArgument(boolean z, String str, Object... objArr) {
            return Preconditions.m30761c(z, f8131a, str, objArr);
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m30764b(obj, f8131a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m30764b(obj, f8131a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m30764b(obj, f8131a, str, objArr);
        }

        public static boolean checkState(boolean z) {
            return Preconditions.m30760d(z, f8131a, "Illegal state.", "");
        }

        public static boolean checkState(boolean z, String str) {
            return Preconditions.m30760d(z, f8131a, str, "");
        }

        public static boolean checkState(boolean z, String str, Object... objArr) {
            return Preconditions.m30760d(z, f8131a, str, objArr);
        }

        public static boolean checkUiThread() {
            return Preconditions.m30763b(f8131a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m30763b(f8131a, str, "");
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m30763b(false, str, objArr);
        }

        public static void setStrictMode(boolean z) {
            f8131a = z;
        }
    }

    /* renamed from: a */
    public static String m30767a(String str, Object... objArr) {
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
    public static boolean m30764b(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String a = m30767a(str, objArr);
        if (!z) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new NullPointerException(a);
    }

    /* renamed from: b */
    public static boolean m30763b(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String a = m30767a(str, objArr);
        if (!z) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new IllegalStateException(a);
    }

    /* renamed from: c */
    public static boolean m30761c(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a = m30767a(str, objArr);
        if (!z2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new IllegalArgumentException(a);
    }

    public static void checkArgument(boolean z) {
        m30761c(z, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean z, String str) {
        m30761c(z, true, str, "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m30761c(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj) {
        m30764b(obj, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object obj, String str) {
        m30764b(obj, true, str, "");
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m30764b(obj, true, str, objArr);
    }

    public static void checkState(boolean z) {
        m30760d(z, true, "Illegal state.", "");
    }

    public static void checkState(boolean z, String str) {
        m30760d(z, true, str, "");
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        m30760d(z, true, str, objArr);
    }

    public static void checkUiThread() {
        m30763b(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String str) {
        m30763b(true, str, "");
    }

    public static void checkUiThread(String str, Object... objArr) {
        m30763b(true, str, objArr);
    }

    /* renamed from: d */
    public static boolean m30760d(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a = m30767a(str, objArr);
        if (!z2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new IllegalStateException(a);
    }
}
