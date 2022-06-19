package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* renamed from: com.google.android.gms.internal.ads.ti */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ti.class */
final class C1959ti implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ Thread.UncaughtExceptionHandler f8600a;

    /* renamed from: b */
    final /* synthetic */ ui f8601b;

    C1959ti(ui uiVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f8601b = uiVar;
        this.f8600a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f8601b.e(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f8600a;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                C1894po.m6183c("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f8600a;
                if (uncaughtExceptionHandler2 == null) {
                    return;
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f8600a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
