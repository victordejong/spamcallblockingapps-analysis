package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejf.class */
final class zzejf extends zzeiz {
    @Override // com.google.android.gms.internal.ads.zzeiz
    public final void zza(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }

    @Override // com.google.android.gms.internal.ads.zzeiz
    public final void zza(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}
