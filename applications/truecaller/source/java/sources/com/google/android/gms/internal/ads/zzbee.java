package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbee.class */
public final class zzbee extends zzbeq<zzbfn> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbdl zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzbep zzd;

    public zzbee(zzbep zzbepVar, Context context, zzbdl zzbdlVar, String str) {
        this.zzd = zzbepVar;
        this.zza = context;
        this.zzb = zzbdlVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfn zza() {
        zzbep.zzi(this.zza, "search");
        return new zzbid();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbfn zzb() throws RemoteException {
        zzbdf zzbdfVar;
        zzbdfVar = this.zzd.zza;
        return zzbdfVar.zza(this.zza, this.zzb, this.zzc, null, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbfn zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzi(new ObjectWrapper(this.zza), this.zzb, this.zzc, 213806000);
    }
}
