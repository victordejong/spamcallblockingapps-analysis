package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qd0.class */
public abstract class qd0 extends BinderC6649k2 implements rd0 {
    public qd0() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        sd0 sd0Var;
        pd0 pd0Var;
        if (i == 1) {
            mo11603U5((zzccg) C6686l2.m13744c(parcel, zzccg.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            mo11599c();
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                sd0Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                sd0Var = queryLocalInterface instanceof ud0 ? (ud0) queryLocalInterface : new sd0(readStrongBinder);
            }
            mo11595l5(sd0Var);
            parcel2.writeNoException();
            return true;
        } else if (i == 34) {
            mo11606J4(C6686l2.m13746a(parcel));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 5:
                    boolean mo11600a = mo11600a();
                    parcel2.writeNoException();
                    C6686l2.m13745b(parcel2, mo11600a);
                    return true;
                case 6:
                    mo11598d();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    zzg();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    mo11597f();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    mo11602V(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    mo11601X(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    mo11590z0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    String mo11596i = mo11596i();
                    parcel2.writeNoException();
                    parcel2.writeString(mo11596i);
                    return true;
                case 13:
                    mo11605N(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    mo11604S0(AbstractBinderC7119ws.m9477E6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Bundle mo11593n = mo11593n();
                    parcel2.writeNoException();
                    C6686l2.m13742e(parcel2, mo11593n);
                    return true;
                case 16:
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        pd0Var = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                        pd0Var = queryLocalInterface2 instanceof pd0 ? (pd0) queryLocalInterface2 : new pd0(readStrongBinder2);
                    }
                    mo11591r3(pd0Var);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.readString();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    mo11594m3(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    mo11607G0(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    boolean mo11592o = mo11592o();
                    parcel2.writeNoException();
                    C6686l2.m13745b(parcel2, mo11592o);
                    return true;
                case 21:
                    AbstractC6491fu zzt = zzt();
                    parcel2.writeNoException();
                    C6686l2.m13741f(parcel2, zzt);
                    return true;
                default:
                    return false;
            }
        }
    }
}
