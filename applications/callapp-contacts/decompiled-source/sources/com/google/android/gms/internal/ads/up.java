package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/up.class */
public abstract class up extends dvd implements uq {
    public up() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static uq a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof uq ? (uq) queryLocalInterface : new us(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        emc emcVar = null;
        uz uzVar = null;
        ur urVar = null;
        uy uyVar = null;
        uy uyVar2 = null;
        switch (i) {
            case 1:
                zzvq zzvqVar = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    uyVar = queryLocalInterface instanceof uy ? (uy) queryLocalInterface : new va(readStrongBinder);
                }
                a(zzvqVar, uyVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    urVar = queryLocalInterface2 instanceof ur ? (ur) queryLocalInterface2 : new ut(readStrongBinder2);
                }
                a(urVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean b2 = b();
                parcel2.writeNoException();
                dvc.a(parcel2, b2);
                return true;
            case 4:
                String c2 = c();
                parcel2.writeNoException();
                parcel2.writeString(c2);
                return true;
            case 5:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    uzVar = queryLocalInterface3 instanceof uz ? (uz) queryLocalInterface3 : new vc(readStrongBinder3);
                }
                a(uzVar);
                parcel2.writeNoException();
                return true;
            case 7:
                a((zzaww) dvc.a(parcel, zzaww.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
                    emcVar = queryLocalInterface4 instanceof emc ? (emc) queryLocalInterface4 : new eme(readStrongBinder4);
                }
                a(emcVar);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle a2 = a();
                parcel2.writeNoException();
                dvc.b(parcel2, a2);
                return true;
            case 10:
                a(b.a.a(parcel.readStrongBinder()), dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                ul d2 = d();
                parcel2.writeNoException();
                dvc.a(parcel2, d2);
                return true;
            case 12:
                emj e = e();
                parcel2.writeNoException();
                dvc.a(parcel2, e);
                return true;
            case 13:
                a(emh.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzvq zzvqVar2 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    uyVar2 = queryLocalInterface5 instanceof uy ? (uy) queryLocalInterface5 : new va(readStrongBinder5);
                }
                b(zzvqVar2, uyVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                a(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
