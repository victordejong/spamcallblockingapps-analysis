package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauk.class */
public final class zzauk extends RemoteCreator<zzaue> {
    public zzauk() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    /* renamed from: a */
    public final zzaud m16338a(Context context, zzanb zzanbVar) {
        try {
            IBinder d = m17019a(context).mo16340d(ObjectWrapper.m17020a(context), zzanbVar, 202510000);
            if (d == null) {
                return null;
            }
            IInterface queryLocalInterface = d.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return queryLocalInterface instanceof zzaud ? (zzaud) queryLocalInterface : new zzauf(d);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzbbq.m15853c("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ zzaue mo10986a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return queryLocalInterface instanceof zzaue ? (zzaue) queryLocalInterface : new zzauh(iBinder);
    }
}
