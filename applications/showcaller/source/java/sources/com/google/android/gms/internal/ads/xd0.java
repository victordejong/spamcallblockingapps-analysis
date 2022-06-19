package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xd0.class */
public abstract class xd0 extends BinderC6649k2 implements yd0 {
    public xd0() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    /* renamed from: E6 */
    public static yd0 m9261E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof yd0 ? (yd0) queryLocalInterface : new wd0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo8855E(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 2:
                mo8847u0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                mo8854M(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 4:
                mo8850g2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 5:
                mo8852V(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 6:
                mo8851X(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 7:
                mo8848m1(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), (zzccl) C6686l2.m13744c(parcel, zzccl.CREATOR));
                break;
            case 8:
                mo8849i6(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 9:
                mo8845u2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                mo8853S(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 11:
                mo8846u1(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                break;
            case 12:
                Bundle bundle = (Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
