package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddu.class */
final class zzddu implements zzdgf, zzdfm {
    private final Context zza;
    private final zzfdn zzb;
    private final zzcbx zzc;

    public zzddu(Context context, zzfdn zzfdnVar, zzcbx zzcbxVar, byte[] bArr) {
        this.zza = context;
        this.zzb = zzfdnVar;
        this.zzc = zzcbxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbA(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbB(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzby(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        zzcby zzcbyVar = this.zzb.zzaa;
        if (zzcbyVar == null || !zzcbyVar.zza) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.zzb.zzaa.zzb.isEmpty()) {
            return;
        }
        arrayList.add(this.zzb.zzaa.zzb);
    }
}
