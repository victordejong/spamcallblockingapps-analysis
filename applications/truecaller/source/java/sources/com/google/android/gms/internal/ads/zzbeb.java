package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.p071h5.OnH5AdsEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeb.class */
public final class zzbeb extends zzbeq<zzbqp> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ zzbvg zzb;
    public final /* synthetic */ OnH5AdsEventListener zzc;

    public zzbeb(zzbep zzbepVar, Context context, zzbvg zzbvgVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = context;
        this.zzb = zzbvgVar;
        this.zzc = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final /* bridge */ /* synthetic */ zzbqp zza() {
        return new zzbqw();
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbqp zzb() throws RemoteException {
        zzbqp zzbqpVar;
        try {
            zzbqpVar = ((zzbqs) zzcgx.zza(this.zza, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl", zzbea.zza)).zze(new ObjectWrapper(this.zza), this.zzb, 213806000, new zzbqj(this.zzc));
        } catch (RemoteException | zzcgw | NullPointerException e) {
            zzbqpVar = null;
        }
        return zzbqpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeq
    public final zzbqp zzc(zzbfx zzbfxVar) throws RemoteException {
        return zzbfxVar.zzo(new ObjectWrapper(this.zza), this.zzb, 213806000, new zzbqj(this.zzc));
    }
}
