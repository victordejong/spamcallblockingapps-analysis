package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hc0.class */
public final class hc0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ Thread.UncaughtExceptionHandler f23847a;

    /* renamed from: b */
    final /* synthetic */ ic0 f23848b;

    public hc0(ic0 ic0Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f23848b = ic0Var;
        this.f23847a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f23848b.m14451e(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f23847a;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                ei0.m15467c("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f23847a;
                if (uncaughtExceptionHandler2 == null) {
                    return;
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f23847a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
