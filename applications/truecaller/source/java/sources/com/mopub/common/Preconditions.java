package com.mopub.common;

import android.os.Looper;
import com.mopub.common.logging.MoPubLog;
import java.util.IllegalFormatException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/Preconditions.class */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/Preconditions$NoThrow.class */
    public static final class NoThrow {

        /* renamed from: a */
        public static volatile boolean f8543a = false;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m36303a(z, f8543a, "Illegal argument", "");
        }

        public static boolean checkArgument(boolean z, String str) {
            return Preconditions.m36303a(z, f8543a, str, "");
        }

        public static boolean checkArgument(boolean z, String str, Object... objArr) {
            return Preconditions.m36303a(z, f8543a, str, objArr);
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m36302b(obj, f8543a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m36302b(obj, f8543a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m36302b(obj, f8543a, str, objArr);
        }

        public static boolean checkState(boolean z) {
            return Preconditions.m36301c(z, f8543a, "Illegal state.", "");
        }

        public static boolean checkState(boolean z, String str) {
            return Preconditions.m36301c(z, f8543a, str, "");
        }

        public static boolean checkState(boolean z, String str, Object... objArr) {
            return Preconditions.m36301c(z, f8543a, str, objArr);
        }

        public static boolean checkUiThread() {
            return Preconditions.m36300d(f8543a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m36300d(f8543a, str, "");
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m36300d(false, str, objArr);
        }

        public static void setStrictMode(boolean z) {
            f8543a = z;
        }
    }

    private Preconditions() {
    }

    /* renamed from: a */
    public static boolean m36303a(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m36299e = m36299e(str, objArr);
        if (z2) {
            throw new IllegalArgumentException(m36299e);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m36299e);
        return false;
    }

    /* renamed from: b */
    public static boolean m36302b(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String m36299e = m36299e(str, objArr);
        if (z) {
            throw new NullPointerException(m36299e);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m36299e);
        return false;
    }

    /* renamed from: c */
    public static boolean m36301c(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m36299e = m36299e(str, objArr);
        if (z2) {
            throw new IllegalStateException(m36299e);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m36299e);
        return false;
    }

    public static void checkArgument(boolean z) {
        m36303a(z, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean z, String str) {
        m36303a(z, true, str, "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m36303a(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj) {
        m36302b(obj, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object obj, String str) {
        m36302b(obj, true, str, "");
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m36302b(obj, true, str, objArr);
    }

    public static void checkState(boolean z) {
        m36301c(z, true, "Illegal state.", "");
    }

    public static void checkState(boolean z, String str) {
        m36301c(z, true, str, "");
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        m36301c(z, true, str, objArr);
    }

    public static void checkUiThread() {
        m36300d(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String str) {
        m36300d(true, str, "");
    }

    public static void checkUiThread(String str, Object... objArr) {
        m36300d(true, str, objArr);
    }

    /* renamed from: d */
    public static boolean m36300d(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String m36299e = m36299e(str, objArr);
        if (z) {
            throw new IllegalStateException(m36299e);
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, m36299e);
        return false;
    }

    /* renamed from: e */
    public static String m36299e(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder m8728C = C22128a.m8728C("MoPub preconditions had a format exception: ");
            m8728C.append(e.getMessage());
            MoPubLog.log(sdkLogEvent, m8728C.toString());
            return valueOf;
        }
    }
}
