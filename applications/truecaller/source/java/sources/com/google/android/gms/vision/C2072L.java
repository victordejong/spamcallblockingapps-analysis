package com.google.android.gms.vision;

import android.util.Log;
import androidx.annotation.Keep;
@Keep
/* renamed from: com.google.android.gms.vision.L */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/L.class */
public class C2072L {
    public static final String TAG = "Vision";

    /* renamed from: d */
    public static int m38491d(String str, Object... objArr) {
        if (Log.isLoggable(TAG, 3)) {
            return Log.d(TAG, String.format(str, objArr));
        }
        return 0;
    }

    /* renamed from: d */
    public static int m38490d(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable(TAG, 3)) {
            return Log.d(TAG, String.format(str, objArr), th);
        }
        return 0;
    }

    /* renamed from: e */
    public static int m38489e(String str, Object... objArr) {
        if (Log.isLoggable(TAG, 6)) {
            return Log.e(TAG, String.format(str, objArr));
        }
        return 0;
    }

    /* renamed from: e */
    public static int m38488e(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable(TAG, 6)) {
            if (Log.isLoggable(TAG, 3)) {
                return Log.e(TAG, String.format(str, objArr), th);
            }
            String format = String.format(str, objArr);
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + String.valueOf(format).length() + 2);
            sb.append(format);
            sb.append(": ");
            sb.append(valueOf);
            return Log.e(TAG, sb.toString());
        }
        return 0;
    }

    /* renamed from: i */
    public static int m38487i(String str, Object... objArr) {
        if (Log.isLoggable(TAG, 4)) {
            return Log.i(TAG, String.format(str, objArr));
        }
        return 0;
    }

    /* renamed from: v */
    public static int m38486v(String str, Object... objArr) {
        if (Log.isLoggable(TAG, 2)) {
            return Log.v(TAG, String.format(str, objArr));
        }
        return 0;
    }

    /* renamed from: w */
    public static int m38485w(String str, Object... objArr) {
        if (Log.isLoggable(TAG, 5)) {
            return Log.w(TAG, String.format(str, objArr));
        }
        return 0;
    }

    /* renamed from: w */
    public static int m38484w(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable(TAG, 5)) {
            if (Log.isLoggable(TAG, 3)) {
                return Log.w(TAG, String.format(str, objArr), th);
            }
            String format = String.format(str, objArr);
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + String.valueOf(format).length() + 2);
            sb.append(format);
            sb.append(": ");
            sb.append(valueOf);
            return Log.w(TAG, sb.toString());
        }
        return 0;
    }
}
