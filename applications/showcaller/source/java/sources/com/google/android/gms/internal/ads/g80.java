package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g80.class */
public abstract class g80 extends BinderC6649k2 implements h80 {
    public g80() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    /* renamed from: E6 */
    public static h80 m14974E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        return queryLocalInterface instanceof h80 ? (h80) queryLocalInterface : new f80(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                String mo14743a = mo14743a();
                parcel2.writeNoException();
                parcel2.writeString(mo14743a);
                return true;
            case 3:
                List mo14742d = mo14742d();
                parcel2.writeNoException();
                parcel2.writeList(mo14742d);
                return true;
            case 4:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 5:
                AbstractC6533gz mo14741f = mo14741f();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo14741f);
                return true;
            case 6:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 7:
                String mo14740g = mo14740g();
                parcel2.writeNoException();
                parcel2.writeString(mo14740g);
                return true;
            case 8:
                double mo14738h = mo14738h();
                parcel2.writeNoException();
                parcel2.writeDouble(mo14738h);
                return true;
            case 9:
                String mo14737i = mo14737i();
                parcel2.writeNoException();
                parcel2.writeString(mo14737i);
                return true;
            case 10:
                String mo14736j = mo14736j();
                parcel2.writeNoException();
                parcel2.writeString(mo14736j);
                return true;
            case 11:
                AbstractC6640ju mo14732m = mo14732m();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo14732m);
                return true;
            case 12:
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, null);
                return true;
            case 13:
                AbstractC6253a mo14733l = mo14733l();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo14733l);
                return true;
            case 14:
                AbstractC6253a mo14735k = mo14735k();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo14735k);
                return true;
            case 15:
                AbstractC6253a mo14728s = mo14728s();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo14728s);
                return true;
            case 16:
                Bundle mo14730o = mo14730o();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo14730o);
                return true;
            case 17:
                boolean zzt = zzt();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, zzt);
                return true;
            case 18:
                boolean zzu = zzu();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, zzu);
                return true;
            case 19:
                mo14726w();
                parcel2.writeNoException();
                return true;
            case 20:
                mo14739g0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                mo14725y1(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                mo14734k2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                float mo14729q = mo14729q();
                parcel2.writeNoException();
                parcel2.writeFloat(mo14729q);
                return true;
            case 24:
                float mo14727u = mo14727u();
                parcel2.writeNoException();
                parcel2.writeFloat(mo14727u);
                return true;
            case 25:
                float mo14744K = mo14744K();
                parcel2.writeNoException();
                parcel2.writeFloat(mo14744K);
                return true;
            default:
                return false;
        }
    }
}
