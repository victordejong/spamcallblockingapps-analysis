package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.mr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mr.class */
public abstract class AbstractBinderC12751mr extends dvd implements AbstractC12752ms {
    public AbstractBinderC12751mr() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    /* renamed from: a */
    public static AbstractC12752ms m14483a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface : new C12754mu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12757mx c12757mx;
        C12964un c12964un;
        switch (i) {
            case 1:
                mo14435a();
                break;
            case 2:
                mo14424b();
                break;
            case 3:
                mo14434a(parcel.readInt());
                break;
            case 4:
                mo14420c();
                break;
            case 5:
                mo14419d();
                break;
            case 6:
                mo14418e();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12757mx = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    c12757mx = queryLocalInterface instanceof AbstractC12758my ? (AbstractC12758my) queryLocalInterface : new C12757mx(readStrongBinder);
                }
                mo14430a(c12757mx);
                break;
            case 8:
                mo14417f();
                break;
            case 9:
                mo14425a(parcel.readString(), parcel.readString());
                break;
            case 10:
                mo14431a(AbstractBinderC12535er.m14696a(parcel.readStrongBinder()), parcel.readString());
                break;
            case 11:
                mo14416g();
                break;
            case 12:
                mo14426a(parcel.readString());
                break;
            case 13:
                mo14415h();
                break;
            case 14:
                mo14428a((zzavy) dvc.m15675a(parcel, zzavy.CREATOR));
                break;
            case 15:
                mo14414i();
                break;
            case 16:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c12964un = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    c12964un = queryLocalInterface2 instanceof AbstractC12962ul ? (AbstractC12962ul) queryLocalInterface2 : new C12964un(readStrongBinder2);
                }
                mo14429a(c12964un);
                break;
            case 17:
                mo14423b(parcel.readInt());
                break;
            case 18:
                mo14413j();
                break;
            case 19:
                mo14432a((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                break;
            case 20:
                mo14412k();
                break;
            case 21:
                mo14421b(parcel.readString());
                break;
            case 22:
                mo14433a(parcel.readInt(), parcel.readString());
                break;
            case 23:
                mo14427a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
                break;
            case 24:
                mo14422b((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
