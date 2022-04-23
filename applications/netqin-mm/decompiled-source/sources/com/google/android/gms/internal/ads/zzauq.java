package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauq.class */
public abstract class zzauq extends zzgt implements zzaur {
    public zzauq() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    /* renamed from: a */
    public static zzaur m16329a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof zzaur ? (zzaur) queryLocalInterface : new zzaut(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo13838v(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 2:
                mo13844b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                mo13841i(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 4:
                mo13840k(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 5:
                mo13849J(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 6:
                mo13848N(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 7:
                mo13847a(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), (zzauv) zzgw.m12080a(parcel, zzauv.CREATOR));
                break;
            case 8:
                mo13837y(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 9:
                mo13842c(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                mo13850D(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 11:
                mo13839o(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                break;
            case 12:
                mo13843c((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
