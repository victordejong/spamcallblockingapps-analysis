package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhx.class */
public final class zzbhx extends RemoteCreator<zzbgf> {
    public zzbhx() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zzbgf getRemoteCreator(IBinder iBinder) {
        zzbgf zzbgfVar;
        if (iBinder == null) {
            zzbgfVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            zzbgfVar = queryLocalInterface instanceof zzbgf ? (zzbgf) queryLocalInterface : new zzbgf(iBinder);
        }
        return zzbgfVar;
    }

    public final zzbge zza(Context context) {
        zzbgc zzbgcVar;
        try {
            IBinder zze = getRemoteCreatorInstance(context).zze(new ObjectWrapper(context), 213806000);
            if (zze == null) {
                zzbgcVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                zzbgcVar = queryLocalInterface instanceof zzbge ? (zzbge) queryLocalInterface : new zzbgc(zze);
            }
            return zzbgcVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzcgt.zzj("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
