package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.rl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rl.class */
public abstract class AbstractBinderC3466rl extends dkl implements AbstractC3467rm {
    public AbstractBinderC3466rl() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.rm] */
    /* renamed from: a */
    public static AbstractC3467rm m7247a(IBinder iBinder) {
        C3470rp c3470rp;
        if (iBinder == null) {
            c3470rp = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
            c3470rp = queryLocalInterface instanceof AbstractC3467rm ? (AbstractC3467rm) queryLocalInterface : new C3470rp(iBinder);
        }
        return c3470rp;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7230a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7229a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7227b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7225c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7224d(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7223e(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo7228a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (C3472rr) dkk.m9323a(parcel, C3472rr.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7222f(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7226b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7221g(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7220h(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                mo7231a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
