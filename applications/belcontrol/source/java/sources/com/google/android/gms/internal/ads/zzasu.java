package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasu.class */
public final class zzasu implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ Thread.UncaughtExceptionHandler zzdty;
    private final /* synthetic */ zzass zzdtz;

    public zzasu(zzass zzassVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzdtz = zzassVar;
        this.zzdty = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.zzdtz.zza(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zzdty;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                zzazk.zzev("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zzdty;
                if (uncaughtExceptionHandler2 == null) {
                    return;
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.zzdty;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
