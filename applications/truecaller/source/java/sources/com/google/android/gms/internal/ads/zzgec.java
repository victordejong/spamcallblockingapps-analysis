package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgec.class */
public final class zzgec extends zzgdx {
    @Override // com.google.android.gms.internal.ads.zzgdx
    public final void zza(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdx
    public final void zzb(Throwable th) {
        th.printStackTrace();
    }

    @Override // com.google.android.gms.internal.ads.zzgdx
    public final void zzc(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }
}
