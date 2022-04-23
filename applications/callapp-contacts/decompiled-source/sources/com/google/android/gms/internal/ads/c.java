package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/c.class */
public final class c extends RemoteCreator<els> {
    public c() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ els a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof els ? (els) queryLocalInterface : new elr(iBinder);
    }

    public final eln b(Context context) {
        try {
            IBinder a2 = a(context).a(d.a(context));
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof eln ? (eln) queryLocalInterface : new elp(a2);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            za.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
