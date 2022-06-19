package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbog.class */
public final class zzbog extends RemoteCreator<zzbmo> {
    @VisibleForTesting
    public zzbog() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zzbmo getRemoteCreator(IBinder iBinder) {
        zzbmm zzbmmVar;
        if (iBinder == null) {
            zzbmmVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            zzbmmVar = queryLocalInterface instanceof zzbmo ? (zzbmo) queryLocalInterface : new zzbmm(iBinder);
        }
        return zzbmmVar;
    }

    public final zzbml zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        zzbmj zzbmjVar;
        try {
            IBinder zze = getRemoteCreatorInstance(context).zze(new ObjectWrapper(context), new ObjectWrapper(frameLayout), new ObjectWrapper(frameLayout2), 213806000);
            if (zze == null) {
                zzbmjVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
                zzbmjVar = queryLocalInterface instanceof zzbml ? (zzbml) queryLocalInterface : new zzbmj(zze);
            }
            return zzbmjVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzcgt.zzj("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
