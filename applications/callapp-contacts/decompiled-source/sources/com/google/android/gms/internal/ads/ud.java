package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ud.class */
public final class ud extends RemoteCreator<tx> {
    public ud() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    public final ts a(Context context, mm mmVar) {
        try {
            IBinder a2 = a(context).a(d.a(context), mmVar);
            if (a2 == null) {
                return null;
            }
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return queryLocalInterface instanceof ts ? (ts) queryLocalInterface : new tu(a2);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            za.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ tx a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return queryLocalInterface instanceof tx ? (tx) queryLocalInterface : new tw(iBinder);
    }
}
