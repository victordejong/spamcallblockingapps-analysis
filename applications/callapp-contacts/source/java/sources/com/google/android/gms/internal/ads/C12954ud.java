package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.ud */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ud.class */
public final class C12954ud extends RemoteCreator<AbstractC12947tx> {
    public C12954ud() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC12942ts m14120a(Context context, AbstractC12746mm abstractC12746mm) {
        try {
            IBinder mo14129a = m18996a(context).mo14129a(BinderC12129d.m18979a(context), abstractC12746mm);
            if (mo14129a == null) {
                return null;
            }
            IInterface queryLocalInterface = mo14129a.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return queryLocalInterface instanceof AbstractC12942ts ? (AbstractC12942ts) queryLocalInterface : new C12944tu(mo14129a);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C13088za.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    public final /* synthetic */ AbstractC12947tx mo14119a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return queryLocalInterface instanceof AbstractC12947tx ? (AbstractC12947tx) queryLocalInterface : new C12946tw(iBinder);
    }
}
