package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* renamed from: com.google.android.gms.internal.ads.oz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oz.class */
public final class C3399oz implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final /* synthetic */ Thread.UncaughtExceptionHandler f17070a;

    /* renamed from: b */
    private final /* synthetic */ C3398oy f17071b;

    public C3399oz(C3398oy c3398oy, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f17071b = c3398oy;
        this.f17070a = uncaughtExceptionHandler;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f17071b.m7349a(thread, th);
            if (this.f17070a == null) {
                return;
            }
            this.f17070a.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                C3645yb.m6749c("AdMob exception reporter failed reporting the exception.");
                if (this.f17070a == null) {
                    return;
                }
                this.f17070a.uncaughtException(thread, th);
            } catch (Throwable th3) {
                if (this.f17070a != null) {
                    this.f17070a.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
