package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfa.class */
public final class zzbfa extends RemoteCreator<zzbhh> {
    public zzbfa() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zzbhh getRemoteCreator(IBinder iBinder) {
        zzbhh zzbhhVar;
        if (iBinder == null) {
            zzbhhVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            zzbhhVar = queryLocalInterface instanceof zzbhh ? (zzbhh) queryLocalInterface : new zzbhh(iBinder);
        }
        return zzbhhVar;
    }

    public final zzbhg zza(Context context, String str, zzbxh zzbxhVar) {
        zzbhe zzbheVar;
        try {
            IBinder zze = getRemoteCreatorInstance(context).zze(ObjectWrapper.wrap(context), str, zzbxhVar, 214106000);
            if (zze == null) {
                zzbheVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                zzbheVar = queryLocalInterface instanceof zzbhg ? (zzbhg) queryLocalInterface : new zzbhe(zze);
            }
            return zzbheVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzciz.zzk("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
