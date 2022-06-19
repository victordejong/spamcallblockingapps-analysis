package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.kt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kt.class */
public abstract class AbstractBinderC6676kt extends BinderC6649k2 implements AbstractC6713lt {
    public AbstractBinderC6676kt() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C7046ut c7046ut;
        switch (i) {
            case 1:
                mo11312a();
                parcel2.writeNoException();
                return true;
            case 2:
                mo11314U1(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                mo11317O(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                mo11301y0(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                mo11316O1(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo11313X1(parcel.readString(), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float mo11310h = mo11310h();
                parcel2.writeNoException();
                parcel2.writeFloat(mo11310h);
                return true;
            case 8:
                boolean mo11309i = mo11309i();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo11309i);
                return true;
            case 9:
                String mo11308j = mo11308j();
                parcel2.writeNoException();
                parcel2.writeString(mo11308j);
                return true;
            case 10:
                mo11303t0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo11306k1(r70.m11673E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                mo11315Q0(c40.m16122E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzbrl> mo11307k = mo11307k();
                parcel2.writeNoException();
                parcel2.writeTypedList(mo11307k);
                return true;
            case 14:
                mo11304p2((zzbim) C6686l2.m13744c(parcel, zzbim.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                mo11305o();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c7046ut = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    c7046ut = queryLocalInterface instanceof AbstractC7120wt ? (AbstractC7120wt) queryLocalInterface : new C7046ut(readStrongBinder);
                }
                mo11302u5(c7046ut);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
