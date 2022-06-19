package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqh.class */
public final class zzbqh extends RemoteCreator<zzbop> {
    @VisibleForTesting
    public zzbqh() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zzbop getRemoteCreator(IBinder iBinder) {
        zzbon zzbonVar;
        if (iBinder == null) {
            zzbonVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
            zzbonVar = queryLocalInterface instanceof zzbop ? (zzbop) queryLocalInterface : new zzbon(iBinder);
        }
        return zzbonVar;
    }

    public final zzbom zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        zzbok zzbokVar;
        try {
            IBinder zze = getRemoteCreatorInstance(context).zze(ObjectWrapper.wrap(context), ObjectWrapper.wrap(frameLayout), ObjectWrapper.wrap(frameLayout2), 214106000);
            if (zze == null) {
                zzbokVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
                zzbokVar = queryLocalInterface instanceof zzbom ? (zzbom) queryLocalInterface : new zzbok(zze);
            }
            return zzbokVar;
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzciz.zzk("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
