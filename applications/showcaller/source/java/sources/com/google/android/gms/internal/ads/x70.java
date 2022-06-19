package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x70.class */
public abstract class x70 extends BinderC6649k2 implements y70 {
    public x70() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    /* renamed from: E6 */
    public static y70 m9333E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof y70 ? (y70) queryLocalInterface : new w70(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo8919a();
                break;
            case 2:
                mo8917d();
                break;
            case 3:
                mo8920Z(parcel.readInt());
                break;
            case 4:
                mo8916f();
                break;
            case 5:
                zzi();
                break;
            case 6:
                mo8914g();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (!(queryLocalInterface instanceof c80)) {
                        new c80(readStrongBinder);
                        break;
                    } else {
                        c80 c80Var = (c80) queryLocalInterface;
                        break;
                    }
                }
                break;
            case 8:
                mo8913h();
                break;
            case 9:
                mo8903z5(parcel.readString(), parcel.readString());
                break;
            case 10:
                AbstractBinderC7200yz.m8647E6(parcel.readStrongBinder());
                parcel.readString();
                break;
            case 11:
                mo8910m();
                break;
            case 12:
                parcel.readString();
                break;
            case 13:
                mo8908n();
                break;
            case 14:
                mo8909m4((zzccl) C6686l2.m13744c(parcel, zzccl.CREATOR));
                break;
            case 15:
                mo8911k();
                break;
            case 16:
                mo8915f1(be0.m16395E6(parcel.readStrongBinder()));
                break;
            case 17:
                mo8907o0(parcel.readInt());
                break;
            case 18:
                zzt();
                break;
            case 19:
                Bundle bundle = (Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR);
                break;
            case 20:
                zzu();
                break;
            case 21:
                mo8906q0(parcel.readString());
                break;
            case 22:
                mo8904u6(parcel.readInt(), parcel.readString());
                break;
            case 23:
                mo8912i5((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
                break;
            case 24:
                mo8905r4((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
