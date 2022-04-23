package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* renamed from: com.google.android.gms.internal.ads.si */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/si.class */
final class C1943si implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ Thread.UncaughtExceptionHandler f8445a;

    /* renamed from: b */
    final /* synthetic */ ui f8446b;

    C1943si(ui uiVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f8446b = uiVar;
        this.f8445a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f8446b.e(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f8445a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            try {
                C1894po.m6183c("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f8445a;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f8445a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
