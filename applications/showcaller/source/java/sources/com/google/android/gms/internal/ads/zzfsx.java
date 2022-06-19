package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsx.class */
final class zzfsx extends TimeoutException {
    public /* synthetic */ zzfsx(String str, b13 b13Var) {
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
