package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* renamed from: com.google.android.gms.internal.ads.os */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/os.class */
public abstract class AbstractBinderC6823os extends BinderC6649k2 implements AbstractC6860ps {
    public AbstractBinderC6823os() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C6414ds c6414ds;
        C6453et c6453et;
        switch (i) {
            case 1:
                AbstractC6749ms mo12164a = mo12164a();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo12164a);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6414ds = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    c6414ds = queryLocalInterface instanceof AbstractC6526gs ? (AbstractC6526gs) queryLocalInterface : new C6414ds(readStrongBinder);
                }
                mo12165T5(c6414ds);
                parcel2.writeNoException();
                return true;
            case 3:
                mo12161w1(c00.m16170E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo12170B4(f00.m15329E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                mo12172A5(parcel.readString(), l00.m13751E6(parcel.readStrongBinder()), i00.m14518E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo12171B1((zzblv) C6686l2.m13744c(parcel, zzblv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c6453et = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    c6453et = queryLocalInterface2 instanceof C6453et ? (C6453et) queryLocalInterface2 : new C6453et(readStrongBinder2);
                }
                mo12160x6(c6453et);
                parcel2.writeNoException();
                return true;
            case 8:
                mo12166P5(p00.m12465E6(parcel.readStrongBinder()), (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                mo12163o3((PublisherAdViewOptions) C6686l2.m13744c(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                mo12168H3(s00.m11186E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                mo12169G4((zzbrx) C6686l2.m13744c(parcel, zzbrx.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo12167M5(p40.m12380E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo12162v2((AdManagerAdViewOptions) C6686l2.m13744c(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
