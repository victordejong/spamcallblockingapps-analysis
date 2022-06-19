package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xg0.class */
public abstract class xg0 extends BinderC6649k2 implements yg0 {
    public xg0() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    /* renamed from: E6 */
    public static yg0 m9183E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof yg0 ? (yg0) queryLocalInterface : new wg0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        tg0 tg0Var;
        switch (i) {
            case 1:
                AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzcfr zzcfrVar = (zzcfr) C6686l2.m13744c(parcel, zzcfr.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    tg0Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    tg0Var = queryLocalInterface instanceof vg0 ? (vg0) queryLocalInterface : new tg0(readStrongBinder);
                }
                mo8828w6(m16746D0, zzcfrVar, tg0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                zzf(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, null);
                return true;
            case 4:
                AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, null);
                return true;
            case 5:
                mo8831S4(parcel.createTypedArrayList(Uri.CREATOR), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), ac0.m16648E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo8832C2(parcel.createTypedArrayList(Uri.CREATOR), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), ac0.m16648E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo8830T4((zzcam) C6686l2.m13744c(parcel, zzcam.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo8829X(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
