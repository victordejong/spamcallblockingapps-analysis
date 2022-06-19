package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.up */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/up.class */
public abstract class AbstractBinderC12966up extends dvd implements AbstractC12967uq {
    public AbstractBinderC12966up() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    /* renamed from: a */
    public static AbstractC12967uq m14104a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof AbstractC12967uq ? (AbstractC12967uq) queryLocalInterface : new C12969us(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12978va c12978va;
        C12970ut c12970ut;
        C12980vc c12980vc;
        eme emeVar;
        C12978va c12978va2;
        switch (i) {
            case 1:
                zzvq zzvqVar = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12978va = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    c12978va = queryLocalInterface instanceof AbstractC12975uy ? (AbstractC12975uy) queryLocalInterface : new C12978va(readStrongBinder);
                }
                mo14095a(zzvqVar, c12978va);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c12970ut = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    c12970ut = queryLocalInterface2 instanceof AbstractC12968ur ? (AbstractC12968ur) queryLocalInterface2 : new C12970ut(readStrongBinder2);
                }
                mo14098a(c12970ut);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean b = mo14093b();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, b);
                return true;
            case 4:
                String c = mo14091c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case 5:
                mo14102a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c12980vc = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    c12980vc = queryLocalInterface3 instanceof AbstractC12976uz ? (AbstractC12976uz) queryLocalInterface3 : new C12980vc(readStrongBinder3);
                }
                mo14097a(c12980vc);
                parcel2.writeNoException();
                return true;
            case 7:
                mo14096a((zzaww) dvc.m15675a(parcel, zzaww.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    emeVar = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
                    emeVar = queryLocalInterface4 instanceof emc ? (emc) queryLocalInterface4 : new eme(readStrongBinder4);
                }
                mo14100a(emeVar);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle a = mo14103a();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, a);
                return true;
            case 10:
                mo14101a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                AbstractC12962ul d = mo14090d();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, d);
                return true;
            case 12:
                emj e = mo14089e();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, e);
                return true;
            case 13:
                mo14099a(emh.m14785a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzvq zzvqVar2 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c12978va2 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    c12978va2 = queryLocalInterface5 instanceof AbstractC12975uy ? (AbstractC12975uy) queryLocalInterface5 : new C12978va(readStrongBinder5);
                }
                mo14092b(zzvqVar2, c12978va2);
                parcel2.writeNoException();
                return true;
            case 15:
                mo14094a(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
