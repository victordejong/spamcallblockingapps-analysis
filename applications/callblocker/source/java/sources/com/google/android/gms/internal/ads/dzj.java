package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.p119b.C2266j;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzj.class */
public abstract class dzj extends dkl implements dzg {
    public dzj() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        eab eabVar;
        dzc dzcVar;
        boolean z;
        switch (i) {
            case 1:
                dzf a = mo7987a();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    dzcVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    dzcVar = queryLocalInterface instanceof dza ? (dza) queryLocalInterface : new dzc(readStrongBinder);
                }
                mo7980a(dzcVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7984a(AbstractBinderC2932cy.m10408a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7983a(AbstractBinderC2948cz.m10314a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7975a(parcel.readString(), AbstractBinderC2963df.m9852a(parcel.readStrongBinder()), AbstractBinderC2962de.m10010a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7985a((C2835bl) dkk.m9323a(parcel, C2835bl.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    eabVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    eabVar = queryLocalInterface2 instanceof eac ? (eac) queryLocalInterface2 : new eab(readStrongBinder2);
                }
                mo7979a(eabVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7982a(AbstractBinderC3004dm.m9178a(parcel.readStrongBinder()), (dyd) dkk.m9323a(parcel, dyd.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7986a((C2266j) dkk.m9323a(parcel, C2266j.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7981a(AbstractBinderC3006dn.m9073a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
            case 12:
            default:
                z = false;
                break;
            case 13:
                mo7977a((C3171gn) dkk.m9323a(parcel, C3171gn.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                mo7976a(AbstractBinderC3182gy.m7804a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
