package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mr.class */
public abstract class mr extends dvd implements ms {
    public mr() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static ms a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof ms ? (ms) queryLocalInterface : new mu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        my myVar = null;
        ul ulVar = null;
        switch (i) {
            case 1:
                a();
                break;
            case 2:
                b();
                break;
            case 3:
                a(parcel.readInt());
                break;
            case 4:
                c();
                break;
            case 5:
                d();
                break;
            case 6:
                e();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    myVar = queryLocalInterface instanceof my ? (my) queryLocalInterface : new mx(readStrongBinder);
                }
                a(myVar);
                break;
            case 8:
                f();
                break;
            case 9:
                a(parcel.readString(), parcel.readString());
                break;
            case 10:
                a(er.a(parcel.readStrongBinder()), parcel.readString());
                break;
            case 11:
                g();
                break;
            case 12:
                a(parcel.readString());
                break;
            case 13:
                h();
                break;
            case 14:
                a((zzavy) dvc.a(parcel, zzavy.CREATOR));
                break;
            case 15:
                i();
                break;
            case 16:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    ulVar = queryLocalInterface2 instanceof ul ? (ul) queryLocalInterface2 : new un(readStrongBinder2);
                }
                a(ulVar);
                break;
            case 17:
                b(parcel.readInt());
                break;
            case 18:
                j();
                break;
            case 19:
                a((Bundle) dvc.a(parcel, Bundle.CREATOR));
                break;
            case 20:
                k();
                break;
            case 21:
                b(parcel.readString());
                break;
            case 22:
                a(parcel.readInt(), parcel.readString());
                break;
            case 23:
                a((zzvh) dvc.a(parcel, zzvh.CREATOR));
                break;
            case 24:
                b((zzvh) dvc.a(parcel, zzvh.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
