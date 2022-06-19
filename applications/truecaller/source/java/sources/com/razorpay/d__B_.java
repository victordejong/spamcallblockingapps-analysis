package com.razorpay;

import android.content.Context;
import java.lang.Thread;
/* loaded from: classes3-dex2jar.jar:com/razorpay/d__B_.class */
public final class d__B_ implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public Context f9447a;

    /* renamed from: b */
    private Thread.UncaughtExceptionHandler f9448b;

    private d__B_(Context context, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f9448b = uncaughtExceptionHandler;
        this.f9447a = context;
    }

    /* renamed from: a */
    public static void m36086a() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler instanceof d__B_) {
            Thread.setDefaultUncaughtExceptionHandler(((d__B_) defaultUncaughtExceptionHandler).f9448b);
        }
    }

    /* renamed from: a */
    public static void m36085a(Context context) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof d__B_)) {
            Thread.setDefaultUncaughtExceptionHandler(new d__B_(context, defaultUncaughtExceptionHandler));
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, final Throwable th) {
        new Thread() { // from class: com.razorpay.o$_b$
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                AnalyticsUtil.reportUncaughtException(th);
                AnalyticsUtil.saveEventsToPreferences(d__B_.this.f9447a);
            }
        }.start();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9448b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
