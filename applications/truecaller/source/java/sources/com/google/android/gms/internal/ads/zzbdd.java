package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdd.class */
public final class zzbdd extends RemoteCreator<zzbfk> {
    public zzbdd() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zzbfk getRemoteCreator(IBinder iBinder) {
        zzbfk zzbfkVar;
        if (iBinder == null) {
            zzbfkVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            zzbfkVar = queryLocalInterface instanceof zzbfk ? (zzbfk) queryLocalInterface : new zzbfk(iBinder);
        }
        return zzbfkVar;
    }

    public final zzbfj zza(Context context, String str, zzbvg zzbvgVar) {
        zzbfh zzbfhVar;
        try {
            IBinder zze = getRemoteCreatorInstance(context).zze(new ObjectWrapper(context), str, zzbvgVar, 213806000);
            if (zze == null) {
                zzbfhVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                zzbfhVar = queryLocalInterface instanceof zzbfj ? (zzbfj) queryLocalInterface : new zzbfh(zze);
            }
            return zzbfhVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzcgt.zzj("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
