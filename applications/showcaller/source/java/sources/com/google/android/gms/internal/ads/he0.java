package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/he0.class */
public abstract class he0 extends BinderC6649k2 implements ie0 {
    public he0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        ae0 ae0Var;
        switch (i) {
            case 1:
                mo9607a();
                break;
            case 2:
                mo9606d();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ae0Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    ae0Var = queryLocalInterface instanceof ce0 ? (ce0) queryLocalInterface : new ae0(readStrongBinder);
                }
                mo9602y2(ae0Var);
                break;
            case 4:
                mo9605d0(parcel.readInt());
                break;
            case 5:
                mo9608G3((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
                break;
            case 6:
                mo9604g();
                break;
            case 7:
                mo9603h();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
