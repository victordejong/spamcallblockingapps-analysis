package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegh.class */
final class zzegh extends TimeoutException {
    public /* synthetic */ zzegh(String str, b02 b02Var) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        synchronized (this) {
            setStackTrace(new StackTraceElement[0]);
        }
        return this;
    }
}
