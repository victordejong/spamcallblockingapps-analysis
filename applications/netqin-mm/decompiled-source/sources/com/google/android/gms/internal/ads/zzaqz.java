package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqz.class */
public final class zzaqz extends RemoteCreator<zzard> {
    public zzaqz() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* renamed from: a */
    public final zzaqy m16408a(Activity activity) {
        try {
            IBinder r = m17019a((Context) activity).mo16400r(ObjectWrapper.m17020a(activity));
            if (r == null) {
                return null;
            }
            IInterface queryLocalInterface = r.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof zzaqy ? (zzaqy) queryLocalInterface : new zzara(r);
        } catch (RemoteException e) {
            zzbbq.m15853c("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzbbq.m15853c("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zzard mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof zzard ? (zzard) queryLocalInterface : new zzarc(iBinder);
    }
}
