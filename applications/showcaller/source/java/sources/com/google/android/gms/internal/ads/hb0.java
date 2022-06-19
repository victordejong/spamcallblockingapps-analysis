package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hb0.class */
public final class hb0 extends RemoteCreator<nb0> {
    public hb0() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ nb0 mo10567a(IBinder iBinder) {
        lb0 lb0Var;
        if (iBinder == null) {
            lb0Var = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
            lb0Var = queryLocalInterface instanceof nb0 ? (nb0) queryLocalInterface : new lb0(iBinder);
        }
        return lb0Var;
    }

    /* renamed from: c */
    public final kb0 m14718c(Activity activity) {
        ib0 ib0Var;
        try {
            IBinder mo12955E = m16747b(activity).mo12955E(BinderC6255b.m16744m2(activity));
            if (mo12955E == null) {
                ib0Var = null;
            } else {
                IInterface queryLocalInterface = mo12955E.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
                ib0Var = queryLocalInterface instanceof kb0 ? (kb0) queryLocalInterface : new ib0(mo12955E);
            }
            return ib0Var;
        } catch (RemoteException e) {
            ei0.m15463g("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            ei0.m15463g("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
