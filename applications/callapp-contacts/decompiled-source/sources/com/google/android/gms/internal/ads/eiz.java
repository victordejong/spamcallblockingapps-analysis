package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiz.class */
public final class eiz extends RemoteCreator<ekx> {
    public eiz() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public final ekw a(Context context, zzvt zzvtVar, String str, mm mmVar, int i) {
        try {
            IBinder a2 = a(context).a(d.a(context), zzvtVar, str, mmVar, i);
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(a2);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            za.zzb("Could not create remote AdManager.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ ekx a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof ekx ? (ekx) queryLocalInterface : new ela(iBinder);
    }
}
