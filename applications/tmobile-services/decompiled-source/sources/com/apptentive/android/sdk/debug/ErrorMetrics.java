package com.apptentive.android.sdk.debug;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.util.ObjectUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/ErrorMetrics.class */
public class ErrorMetrics {
    private static final Object[] EMPTY_DATA = new Object[0];
    private static final List<OnErrorListener> listeners = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/ErrorMetrics$OnErrorListener.class */
    public interface OnErrorListener {
        void onError(Throwable th, Thread thread, Map<String, Object> map);
    }

    public static void logException(Throwable th) {
        logException(th, EMPTY_DATA);
    }

    public static void logException(Throwable th, Map<String, Object> map) {
        for (OnErrorListener onErrorListener : listeners) {
            notifyListener(onErrorListener, th, map);
        }
    }

    public static void logException(Throwable th, Object... objArr) {
        logException(th, ObjectUtils.toMap(objArr));
    }

    private static void notifyListener(OnErrorListener onErrorListener, Throwable th, Map<String, Object> map) {
        try {
            onErrorListener.onError(th, Thread.currentThread(), map);
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while notifying listener " + onErrorListener, new Object[0]);
        }
    }
}
