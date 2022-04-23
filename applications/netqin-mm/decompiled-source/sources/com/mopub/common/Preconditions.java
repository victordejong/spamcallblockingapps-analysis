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
        public static volatile boolean f33773a = false;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m4609c(z, f33773a, "Illegal argument", "");
        }

        public static boolean checkArgument(boolean z, String str) {
            return Preconditions.m4609c(z, f33773a, str, "");
        }

        public static boolean checkArgument(boolean z, String str, Object... objArr) {
            return Preconditions.m4609c(z, f33773a, str, objArr);
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m4612b(obj, f33773a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m4612b(obj, f33773a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m4612b(obj, f33773a, str, objArr);
        }

        public static boolean checkState(boolean z) {
            return Preconditions.m4608d(z, f33773a, "Illegal state.", "");
        }

        public static boolean checkState(boolean z, String str) {
            return Preconditions.m4608d(z, f33773a, str, "");
        }

        public static boolean checkState(boolean z, String str, Object... objArr) {
            return Preconditions.m4608d(z, f33773a, str, objArr);
        }

        public static boolean checkUiThread() {
            return Preconditions.m4611b(f33773a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m4611b(f33773a, str, "");
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m4611b(false, str, objArr);
        }

        public static void setStrictMode(boolean z) {
            f33773a = z;
        }
    }

    /* renamed from: a */
    public static String m4615a(String str, Object... objArr) {
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
    public static boolean m4612b(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String a = m4615a(str, objArr);
        if (!z) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new NullPointerException(a);
    }

    /* renamed from: b */
    public static boolean m4611b(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String a = m4615a(str, objArr);
        if (!z) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new IllegalStateException(a);
    }

    /* renamed from: c */
    public static boolean m4609c(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a = m4615a(str, objArr);
        if (!z2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new IllegalArgumentException(a);
    }

    public static void checkArgument(boolean z) {
        m4609c(z, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean z, String str) {
        m4609c(z, true, str, "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m4609c(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj) {
        m4612b(obj, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object obj, String str) {
        m4612b(obj, true, str, "");
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m4612b(obj, true, str, objArr);
    }

    public static void checkState(boolean z) {
        m4608d(z, true, "Illegal state.", "");
    }

    public static void checkState(boolean z, String str) {
        m4608d(z, true, str, "");
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        m4608d(z, true, str, objArr);
    }

    public static void checkUiThread() {
        m4611b(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String str) {
        m4611b(true, str, "");
    }

    public static void checkUiThread(String str, Object... objArr) {
        m4611b(true, str, objArr);
    }

    /* renamed from: d */
    public static boolean m4608d(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a = m4615a(str, objArr);
        if (!z2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, a);
            return false;
        }
        throw new IllegalStateException(a);
    }
}
