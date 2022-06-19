package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jb0.class */
public abstract class jb0 extends BinderC6649k2 implements kb0 {
    public jb0() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    /* renamed from: E6 */
    public static kb0 m14140E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return queryLocalInterface instanceof kb0 ? (kb0) queryLocalInterface : new ib0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo13938a0((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                parcel2.writeNoException();
                return true;
            case 3:
                mo13936g();
                parcel2.writeNoException();
                return true;
            case 4:
                mo13935h();
                parcel2.writeNoException();
                return true;
            case 5:
                mo13934i();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR);
                mo13931m0(bundle);
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, bundle);
                return true;
            case 7:
                mo13932l();
                parcel2.writeNoException();
                return true;
            case 8:
                mo13933k();
                parcel2.writeNoException();
                return true;
            case 9:
                mo13930o();
                parcel2.writeNoException();
                return true;
            case 10:
                mo13939a();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zzg = zzg();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, zzg);
                return true;
            case 12:
                parcel.readInt();
                parcel.readInt();
                Intent intent = (Intent) C6686l2.m13744c(parcel, Intent.CREATOR);
                parcel2.writeNoException();
                return true;
            case 13:
                mo13941S(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                mo13937d();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
