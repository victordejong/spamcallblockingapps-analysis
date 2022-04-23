package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauj.class */
public abstract class zzauj extends zzgt implements zzaug {
    public zzauj() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    /* renamed from: a */
    public static zzaug m16339a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        return queryLocalInterface instanceof zzaug ? (zzaug) queryLocalInterface : new zzaui(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzatw zzatwVar;
        switch (i) {
            case 1:
                mo16330q0();
                break;
            case 2:
                mo16331o0();
                break;
            case 3:
                mo16336H();
                break;
            case 4:
                mo16332n0();
                break;
            case 5:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzatwVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                    zzatwVar = queryLocalInterface instanceof zzatw ? (zzatw) queryLocalInterface : new zzaty(readStrongBinder);
                }
                mo16335a(zzatwVar);
                break;
            case 6:
                mo16333g0();
                break;
            case 7:
                mo16334c(parcel.readInt());
                break;
            case 8:
                onRewardedVideoCompleted();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
