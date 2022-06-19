package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzz.class */
public final class zzzz extends RemoteCreator<zzyh> {
    public zzzz() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzyh getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof zzyh ? (zzyh) queryLocalInterface : new zzyk(iBinder);
    }

    public final zzyg zzh(Context context) {
        try {
            IBinder zzb = getRemoteCreatorInstance(context).zzb(ObjectWrapper.wrap(context), 204204000);
            if (zzb == null) {
                return null;
            }
            IInterface queryLocalInterface = zzb.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof zzyg ? (zzyg) queryLocalInterface : new zzyi(zzb);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzazk.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
