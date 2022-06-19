package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.tv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tv.class */
public abstract class AbstractBinderC12945tv extends dvd implements AbstractC12942ts {
    public AbstractBinderC12945tv() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    /* renamed from: a */
    public static AbstractC12942ts m14130a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof AbstractC12942ts ? (AbstractC12942ts) queryLocalInterface : new C12944tu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12952ub c12952ub;
        elb elbVar;
        C12943tt c12943tt;
        if (i == 1) {
            mo14146a((zzavt) dvc.m15675a(parcel, zzavt.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            mo14151a();
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12952ub = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                c12952ub = queryLocalInterface instanceof AbstractC12949tz ? (AbstractC12949tz) queryLocalInterface : new C12952ub(readStrongBinder);
            }
            mo14147a(c12952ub);
            parcel2.writeNoException();
            return true;
        } else if (i == 34) {
            mo14144a(dvc.m15677a(parcel));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 5:
                    boolean c = mo14140c();
                    parcel2.writeNoException();
                    dvc.m15673a(parcel2, c);
                    return true;
                case 6:
                    mo14137d();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    mo14135e();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    mo14134f();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    mo14142b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    mo14139c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    mo14136d(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    String g = mo14133g();
                    parcel2.writeNoException();
                    parcel2.writeString(g);
                    return true;
                case 13:
                    mo14145a(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        elbVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                        elbVar = queryLocalInterface2 instanceof ekz ? (ekz) queryLocalInterface2 : new elb(readStrongBinder2);
                    }
                    mo14149a(elbVar);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Bundle b = mo14143b();
                    parcel2.writeNoException();
                    dvc.m15671b(parcel2, b);
                    return true;
                case 16:
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 == null) {
                        c12943tt = null;
                    } else {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                        c12943tt = queryLocalInterface3 instanceof AbstractC12940tq ? (AbstractC12940tq) queryLocalInterface3 : new C12943tt(readStrongBinder3);
                    }
                    mo14148a(c12943tt);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    mo14138c(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    mo14150a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    mo14141b(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    boolean h = mo14132h();
                    parcel2.writeNoException();
                    dvc.m15673a(parcel2, h);
                    return true;
                case 21:
                    emj i3 = mo14131i();
                    parcel2.writeNoException();
                    dvc.m15676a(parcel2, i3);
                    return true;
                default:
                    return false;
            }
        }
    }
}
