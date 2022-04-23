package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ui.class */
public abstract class ui extends dvd implements uf {
    public ui() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static uf a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof uf ? (uf) queryLocalInterface : new uh(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                a(b.a.a(parcel.readStrongBinder()));
                break;
            case 2:
                a(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                b(b.a.a(parcel.readStrongBinder()));
                break;
            case 4:
                c(b.a.a(parcel.readStrongBinder()));
                break;
            case 5:
                d(b.a.a(parcel.readStrongBinder()));
                break;
            case 6:
                e(b.a.a(parcel.readStrongBinder()));
                break;
            case 7:
                a(b.a.a(parcel.readStrongBinder()), (zzavy) dvc.a(parcel, zzavy.CREATOR));
                break;
            case 8:
                f(b.a.a(parcel.readStrongBinder()));
                break;
            case 9:
                b(b.a.a(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                g(b.a.a(parcel.readStrongBinder()));
                break;
            case 11:
                h(b.a.a(parcel.readStrongBinder()));
                break;
            case 12:
                a((Bundle) dvc.a(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
