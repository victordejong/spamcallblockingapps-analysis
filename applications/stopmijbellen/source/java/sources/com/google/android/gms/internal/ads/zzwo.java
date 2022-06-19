package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwo.class */
public final class zzwo implements zzxt {
    private final byte[] zza = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzxt
    public final /* synthetic */ int zze(zzdg zzdgVar, int i, boolean z) {
        return zzxr.zza(this, zzdgVar, i, true);
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final int zzf(zzdg zzdgVar, int i, boolean z, int i2) throws IOException {
        int zzg = zzdgVar.zzg(this.zza, 0, Math.min(4096, i));
        if (zzg == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void zzk(zzab zzabVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final /* synthetic */ void zzq(zzfd zzfdVar, int i) {
        zzxr.zzb(this, zzfdVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void zzr(zzfd zzfdVar, int i, int i2) {
        zzfdVar.zzG(i);
    }

    @Override // com.google.android.gms.internal.ads.zzxt
    public final void zzs(long j, int i, int i2, int i3, zzxs zzxsVar) {
    }
}
