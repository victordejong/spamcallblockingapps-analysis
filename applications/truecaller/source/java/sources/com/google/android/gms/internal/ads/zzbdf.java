package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdf.class */
public final class zzbdf extends RemoteCreator<zzbfo> {
    private zzcat zza;

    @VisibleForTesting
    public zzbdf() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zzbfo getRemoteCreator(IBinder iBinder) {
        zzbfo zzbfoVar;
        if (iBinder == null) {
            zzbfoVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            zzbfoVar = queryLocalInterface instanceof zzbfo ? (zzbfo) queryLocalInterface : new zzbfo(iBinder);
        }
        return zzbfoVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.google.android.gms.internal.ads.zzbfl] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.zzbfn] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.internal.ads.zzbfn] */
    public final zzbfn zza(Context context, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) {
        zzbfl zzbflVar;
        zzbjl.zza(context);
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgW)).booleanValue()) {
            try {
                IBinder zze = getRemoteCreatorInstance(context).zze(new ObjectWrapper(context), zzbdlVar, str, zzbvgVar, 213806000, i);
                if (zze == null) {
                    zzbflVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zzbflVar = queryLocalInterface instanceof zzbfn ? (zzbfn) queryLocalInterface : new zzbfl(zze);
                }
                return zzbflVar;
            } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
                zzcgt.zze("Could not create remote AdManager.", e);
                return null;
            }
        }
        try {
            IBinder zze2 = ((zzbfo) zzcgx.zza(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", zzbde.zza)).zze(new ObjectWrapper(context), zzbdlVar, str, zzbvgVar, 213806000, i);
            if (zze2 == null) {
                context = null;
            } else {
                IInterface queryLocalInterface2 = zze2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                context = queryLocalInterface2 instanceof zzbfn ? (zzbfn) queryLocalInterface2 : new zzbfl(zze2);
            }
        } catch (RemoteException | zzcgw | NullPointerException e2) {
            zzcat zza = zzcar.zza(context);
            this.zza = zza;
            zza.zzd(e2, "AdManagerCreator.newAdManagerByDynamiteLoader");
            zzcgt.zzl("#007 Could not call remote method.", e2);
            context = null;
        }
        return context;
    }
}
