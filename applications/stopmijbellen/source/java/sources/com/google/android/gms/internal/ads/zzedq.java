package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbc;
import com.google.android.gms.ads.internal.util.zzbd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedq.class */
public final class zzedq extends zzcdl {
    public final /* synthetic */ zzedr zza;

    public zzedq(zzedr zzedrVar) {
        this.zza = zzedrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zze(zzbd zzbdVar) {
        this.zza.zza.zze(new zzbc(zzbdVar.zza, zzbdVar.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzcdm
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zza.zzd(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
