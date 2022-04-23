package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tv.class */
public abstract class tv extends dvd implements ts {
    public tv() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static ts a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof ts ? (ts) queryLocalInterface : new tu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a((zzavt) dvc.a(parcel, zzavt.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            ekz ekzVar = null;
            tz tzVar = null;
            tq tqVar = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    tzVar = queryLocalInterface instanceof tz ? (tz) queryLocalInterface : new ub(readStrongBinder);
                }
                a(tzVar);
                parcel2.writeNoException();
                return true;
            } else if (i != 34) {
                switch (i) {
                    case 5:
                        boolean c2 = c();
                        parcel2.writeNoException();
                        dvc.a(parcel2, c2);
                        return true;
                    case 6:
                        d();
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        e();
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        f();
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        b(b.a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        c(b.a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        d(b.a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        String g = g();
                        parcel2.writeNoException();
                        parcel2.writeString(g);
                        return true;
                    case 13:
                        a(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                            ekzVar = queryLocalInterface2 instanceof ekz ? (ekz) queryLocalInterface2 : new elb(readStrongBinder2);
                        }
                        a(ekzVar);
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        Bundle b2 = b();
                        parcel2.writeNoException();
                        dvc.b(parcel2, b2);
                        return true;
                    case 16:
                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                        if (readStrongBinder3 != null) {
                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            tqVar = queryLocalInterface3 instanceof tq ? (tq) queryLocalInterface3 : new tt(readStrongBinder3);
                        }
                        a(tqVar);
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        c(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        a(b.a.a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        b(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 20:
                        boolean h = h();
                        parcel2.writeNoException();
                        dvc.a(parcel2, h);
                        return true;
                    case 21:
                        emj i3 = i();
                        parcel2.writeNoException();
                        dvc.a(parcel2, i3);
                        return true;
                    default:
                        return false;
                }
            } else {
                a(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            }
        } else {
            a();
            parcel2.writeNoException();
            return true;
        }
    }
}
