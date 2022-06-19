package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbb;
import com.google.android.gms.ads.internal.util.zzbc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzz.class */
public final class zzdzz extends zzcbe {
    public final /* synthetic */ zzeaa zza;

    public zzdzz(zzeaa zzeaaVar) {
        this.zza = zzeaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbf
    public final void zze(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zza.zzc(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // com.google.android.gms.internal.ads.zzcbf
    public final void zzf(zzbc zzbcVar) {
        this.zza.zza.zzd(new zzbb(zzbcVar.zza, zzbcVar.zzb));
    }
}
