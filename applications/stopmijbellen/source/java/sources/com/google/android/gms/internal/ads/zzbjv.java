package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjv.class */
public final class zzbjv extends RemoteCreator<zzbic> {
    public zzbjv() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zzbic getRemoteCreator(IBinder iBinder) {
        zzbic zzbicVar;
        if (iBinder == null) {
            zzbicVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            zzbicVar = queryLocalInterface instanceof zzbic ? (zzbic) queryLocalInterface : new zzbic(iBinder);
        }
        return zzbicVar;
    }

    public final zzbib zza(Context context) {
        zzbhz zzbhzVar;
        try {
            IBinder zze = getRemoteCreatorInstance(context).zze(ObjectWrapper.wrap(context), 214106000);
            if (zze == null) {
                zzbhzVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                zzbhzVar = queryLocalInterface instanceof zzbib ? (zzbib) queryLocalInterface : new zzbhz(zze);
            }
            return zzbhzVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzciz.zzk("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
