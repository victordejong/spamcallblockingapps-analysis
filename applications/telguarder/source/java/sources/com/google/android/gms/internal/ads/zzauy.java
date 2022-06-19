package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauy.class */
public final class zzauy extends RemoteCreator<zzaus> {
    public zzauy() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzaus getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return queryLocalInterface instanceof zzaus ? (zzaus) queryLocalInterface : new zzauv(iBinder);
    }

    public final zzaur zzc(Context context, zzane zzaneVar) {
        try {
            IBinder zzd = getRemoteCreatorInstance(context).zzd(ObjectWrapper.wrap(context), zzaneVar, 204204000);
            if (zzd == null) {
                return null;
            }
            IInterface queryLocalInterface = zzd.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return queryLocalInterface instanceof zzaur ? (zzaur) queryLocalInterface : new zzaut(zzd);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzazk.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }
}
