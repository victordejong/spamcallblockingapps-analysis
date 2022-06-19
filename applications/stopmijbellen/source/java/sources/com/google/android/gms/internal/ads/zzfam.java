package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfam.class */
public final class zzfam implements zzfwm<Void> {
    public zzfam(zzfao zzfaoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zze.zza("Notification of cache hit failed.");
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* synthetic */ void zzb(@NullableDecl Void r3) {
        zze.zza("Notification of cache hit successful.");
    }
}
