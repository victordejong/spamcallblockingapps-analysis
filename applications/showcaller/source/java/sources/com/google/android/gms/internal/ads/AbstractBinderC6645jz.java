package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.jz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jz.class */
public abstract class AbstractBinderC6645jz extends BinderC6649k2 implements AbstractC6682kz {
    public AbstractBinderC6645jz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    /* renamed from: E6 */
    public static AbstractC6682kz m14012E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof AbstractC6682kz ? (AbstractC6682kz) queryLocalInterface : new C6608iz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C6347bz c6347bz;
        switch (i) {
            case 1:
                mo12926o2(parcel.readString(), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                AbstractC6253a mo12923y = mo12923y(parcel.readString());
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo12923y);
                return true;
            case 3:
                mo12930Y(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                mo12929a();
                parcel2.writeNoException();
                return true;
            case 5:
                AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                parcel.readInt();
                parcel2.writeNoException();
                return true;
            case 6:
                mo12931M(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo12934A6(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6347bz = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    c6347bz = queryLocalInterface instanceof AbstractC6421dz ? (AbstractC6421dz) queryLocalInterface : new C6347bz(readStrongBinder);
                }
                mo12928d4(c6347bz);
                parcel2.writeNoException();
                return true;
            case 9:
                mo12932J5(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
