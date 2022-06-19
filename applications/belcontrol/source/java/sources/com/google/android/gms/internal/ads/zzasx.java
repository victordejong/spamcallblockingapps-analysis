package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasx.class */
public final class zzasx implements Thread.UncaughtExceptionHandler {
    private final /* synthetic */ zzass zzdtz;
    private final /* synthetic */ Thread.UncaughtExceptionHandler zzdub;

    public zzasx(zzass zzassVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzdtz = zzassVar;
        this.zzdub = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.zzdtz.zza(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zzdub;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                zzazk.zzev("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zzdub;
                if (uncaughtExceptionHandler2 == null) {
                    return;
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.zzdub;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
