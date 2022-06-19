package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.dynamic.RemoteCreator;
/* renamed from: com.google.android.gms.internal.ads.rf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rf.class */
public final class C3460rf extends RemoteCreator<AbstractC3453qz> {
    public C3460rf() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC3452qy m7265a(Context context, AbstractC3280ko abstractC3280ko) {
        C3455ra c3455ra;
        try {
            IBinder mo7267a = m13797a(context).mo7267a(BinderC2734b.m13794a(context), abstractC3280ko, 201004000);
            if (mo7267a == null) {
                c3455ra = null;
            } else {
                IInterface queryLocalInterface = mo7267a.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
                c3455ra = queryLocalInterface instanceof AbstractC3452qy ? (AbstractC3452qy) queryLocalInterface : new C3455ra(mo7267a);
            }
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            C3645yb.m6746d("Could not get remote RewardedVideoAd.", e);
            c3455ra = null;
        }
        return c3455ra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.qz] */
    @Override // com.google.android.gms.dynamic.RemoteCreator
    /* renamed from: a */
    protected final /* synthetic */ AbstractC3453qz mo7264a(IBinder iBinder) {
        C3457rc c3457rc;
        if (iBinder == null) {
            c3457rc = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
            c3457rc = queryLocalInterface instanceof AbstractC3453qz ? (AbstractC3453qz) queryLocalInterface : new C3457rc(iBinder);
        }
        return c3457rc;
    }
}
