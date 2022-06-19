package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzn.class */
public final class zzbzn extends RemoteCreator<zzbzt> {
    public zzbzn() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* bridge */ /* synthetic */ zzbzt getRemoteCreator(IBinder iBinder) {
        zzbzr zzbzrVar;
        if (iBinder == null) {
            zzbzrVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            zzbzrVar = queryLocalInterface instanceof zzbzt ? (zzbzt) queryLocalInterface : new zzbzr(iBinder);
        }
        return zzbzrVar;
    }

    public final zzbzq zza(Activity activity) {
        zzbzo zzbzoVar;
        try {
            IBinder zze = getRemoteCreatorInstance(activity).zze(new ObjectWrapper(activity));
            if (zze == null) {
                zzbzoVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
                zzbzoVar = queryLocalInterface instanceof zzbzq ? (zzbzq) queryLocalInterface : new zzbzo(zze);
            }
            return zzbzoVar;
        } catch (RemoteException e) {
            zzcgt.zzj("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzcgt.zzj("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
