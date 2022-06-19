package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboh.class */
public final class zzboh extends RemoteCreator<zzbmu> {
    @VisibleForTesting
    public zzboh() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zzbmu getRemoteCreator(IBinder iBinder) {
        zzbms zzbmsVar;
        if (iBinder == null) {
            zzbmsVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
            zzbmsVar = queryLocalInterface instanceof zzbmu ? (zzbmu) queryLocalInterface : new zzbms(iBinder);
        }
        return zzbmsVar;
    }

    public final zzbmr zza(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        zzbmp zzbmpVar;
        try {
            IBinder zze = getRemoteCreatorInstance(view.getContext()).zze(new ObjectWrapper(view), new ObjectWrapper(hashMap), new ObjectWrapper(hashMap2));
            if (zze == null) {
                zzbmpVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
                zzbmpVar = queryLocalInterface instanceof zzbmr ? (zzbmr) queryLocalInterface : new zzbmp(zze);
            }
            return zzbmpVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzcgt.zzj("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
