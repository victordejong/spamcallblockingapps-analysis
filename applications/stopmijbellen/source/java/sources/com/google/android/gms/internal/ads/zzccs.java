package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccs.class */
public final class zzccs implements Thread.UncaughtExceptionHandler {
    public final /* synthetic */ Thread.UncaughtExceptionHandler zza;
    public final /* synthetic */ zzcct zzb;

    public zzccs(zzcct zzcctVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zzb = zzcctVar;
        this.zza = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.zzb.zzc(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zza;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Throwable th2) {
            try {
                zzciz.zzg("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zza;
                if (uncaughtExceptionHandler2 == null) {
                    return;
                }
                uncaughtExceptionHandler2.uncaughtException(thread, th);
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.zza;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
