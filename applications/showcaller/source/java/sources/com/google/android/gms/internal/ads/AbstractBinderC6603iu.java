package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.iu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iu.class */
public abstract class AbstractBinderC6603iu extends BinderC6649k2 implements AbstractC6640ju {
    public AbstractBinderC6603iu() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    /* renamed from: E6 */
    public static AbstractC6640ju m14272E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof AbstractC6640ju ? (AbstractC6640ju) queryLocalInterface : new C6565hu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C6677ku c6677ku;
        switch (i) {
            case 1:
                mo11355a();
                parcel2.writeNoException();
                return true;
            case 2:
                mo11353d();
                parcel2.writeNoException();
                return true;
            case 3:
                mo11354b0(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                boolean mo11352f = mo11352f();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo11352f);
                return true;
            case 5:
                int zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeInt(zzi);
                return true;
            case 6:
                float mo11351g = mo11351g();
                parcel2.writeNoException();
                parcel2.writeFloat(mo11351g);
                return true;
            case 7:
                float mo11349h = mo11349h();
                parcel2.writeNoException();
                parcel2.writeFloat(mo11349h);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6677ku = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    c6677ku = queryLocalInterface instanceof AbstractC6751mu ? (AbstractC6751mu) queryLocalInterface : new C6677ku(readStrongBinder);
                }
                mo11350g3(c6677ku);
                parcel2.writeNoException();
                return true;
            case 9:
                float mo11348j = mo11348j();
                parcel2.writeNoException();
                parcel2.writeFloat(mo11348j);
                return true;
            case 10:
                boolean mo11345m = mo11345m();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo11345m);
                return true;
            case 11:
                AbstractC6751mu mo11344n = mo11344n();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo11344n);
                return true;
            case 12:
                boolean mo11346l = mo11346l();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo11346l);
                return true;
            case 13:
                mo11347k();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
