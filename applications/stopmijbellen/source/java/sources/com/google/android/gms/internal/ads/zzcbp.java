package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbp.class */
public final class zzcbp extends RemoteCreator<zzcbv> {
    public zzcbp() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ zzcbv getRemoteCreator(IBinder iBinder) {
        zzcbt zzcbtVar;
        if (iBinder == null) {
            zzcbtVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            zzcbtVar = queryLocalInterface instanceof zzcbv ? (zzcbv) queryLocalInterface : new zzcbt(iBinder);
        }
        return zzcbtVar;
    }

    public final zzcbs zza(Activity activity) {
        zzcbq zzcbqVar;
        try {
            IBinder zze = getRemoteCreatorInstance(activity).zze(ObjectWrapper.wrap(activity));
            if (zze == null) {
                zzcbqVar = null;
            } else {
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
                zzcbqVar = queryLocalInterface instanceof zzcbs ? (zzcbs) queryLocalInterface : new zzcbq(zze);
            }
            return zzcbqVar;
        } catch (RemoteException e) {
            zzciz.zzk("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzciz.zzk("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
