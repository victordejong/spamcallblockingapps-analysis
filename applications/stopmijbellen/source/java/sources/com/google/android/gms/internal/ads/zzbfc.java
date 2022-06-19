package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfc.class */
public final class zzbfc extends RemoteCreator<zzbhl> {
    private zzccv zza;

    @VisibleForTesting
    public zzbfc() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zzbhl getRemoteCreator(IBinder iBinder) {
        zzbhl zzbhlVar;
        if (iBinder == null) {
            zzbhlVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            zzbhlVar = queryLocalInterface instanceof zzbhl ? (zzbhl) queryLocalInterface : new zzbhl(iBinder);
        }
        return zzbhlVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.google.android.gms.internal.ads.zzbhi] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.zzbhk] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.internal.ads.zzbhk] */
    public final zzbhk zza(Context context, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) {
        zzbhi zzbhiVar;
        zzblj.zzc(context);
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhh)).booleanValue()) {
            try {
                IBinder zze = getRemoteCreatorInstance(context).zze(ObjectWrapper.wrap(context), zzbfiVar, str, zzbxhVar, 214106000, i);
                if (zze == null) {
                    zzbhiVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    zzbhiVar = queryLocalInterface instanceof zzbhk ? (zzbhk) queryLocalInterface : new zzbhi(zze);
                }
                return zzbhiVar;
            } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
                zzciz.zzf("Could not create remote AdManager.", e);
                return null;
            }
        }
        try {
            IBinder zze2 = ((zzbhl) zzcjd.zzb(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", zzbfb.zza)).zze(ObjectWrapper.wrap(context), zzbfiVar, str, zzbxhVar, 214106000, i);
            if (zze2 == null) {
                context = null;
            } else {
                IInterface queryLocalInterface2 = zze2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                context = queryLocalInterface2 instanceof zzbhk ? (zzbhk) queryLocalInterface2 : new zzbhi(zze2);
            }
        } catch (RemoteException | zzcjc | NullPointerException e2) {
            zzccv zza = zzcct.zza(context);
            this.zza = zza;
            zza.zzd(e2, "AdManagerCreator.newAdManagerByDynamiteLoader");
            zzciz.zzl("#007 Could not call remote method.", e2);
            context = null;
        }
        return context;
    }
}
