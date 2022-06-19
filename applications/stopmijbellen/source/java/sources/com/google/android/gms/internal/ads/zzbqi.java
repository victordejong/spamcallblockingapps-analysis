package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqi.class */
public final class zzbqi extends RemoteCreator<zzbov> {
    @VisibleForTesting
    public zzbqi() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zzbov getRemoteCreator(IBinder iBinder) {
        zzbot zzbotVar;
        if (iBinder == null) {
            zzbotVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
            zzbotVar = queryLocalInterface instanceof zzbov ? (zzbov) queryLocalInterface : new zzbot(iBinder);
        }
        return zzbotVar;
    }

    public final zzbos zza(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        zzboq zzboqVar;
        try {
            IBinder zze = getRemoteCreatorInstance(view.getContext()).zze(ObjectWrapper.wrap(view), ObjectWrapper.wrap(hashMap), ObjectWrapper.wrap(hashMap2));
            if (zze == null) {
                zzboqVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
                zzboqVar = queryLocalInterface instanceof zzbos ? (zzbos) queryLocalInterface : new zzboq(zze);
            }
            return zzboqVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzciz.zzk("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
