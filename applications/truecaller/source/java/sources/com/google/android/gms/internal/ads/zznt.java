package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznt.class */
public final class zznt implements zzox {
    private final byte[] zza = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzs(zzafv zzafvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final int zzt(zzah zzahVar, int i, boolean z, int i2) throws IOException {
        int zzg = zzahVar.zzg(this.zza, 0, Math.min(4096, i));
        if (zzg == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzu(zzamf zzamfVar, int i, int i2) {
        zzamfVar.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzv(long j, int i, int i2, int i3, zzow zzowVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final int zzx(zzah zzahVar, int i, boolean z) throws IOException {
        return zzov.zza(this, zzahVar, i, true);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzy(zzamf zzamfVar, int i) {
        zzov.zzb(this, zzamfVar, i);
    }
}
