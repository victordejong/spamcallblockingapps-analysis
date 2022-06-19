package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* renamed from: com.google.android.gms.internal.ads.sd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sd.class */
public final class C12900sd implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final /* synthetic */ Thread.UncaughtExceptionHandler f49788a;

    /* renamed from: b */
    private final /* synthetic */ C12898sb f49789b;

    public C12900sd(C12898sb c12898sb, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f49789b = c12898sb;
        this.f49788a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f49789b.m14198a(th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f49788a;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                C13088za.zzex("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f49788a;
                if (uncaughtExceptionHandler2 == null) {
                    return;
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f49788a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
