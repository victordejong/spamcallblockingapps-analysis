package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/np0.class */
public abstract class np0 extends BinderC6649k2 implements op0 {
    public np0() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo12566C0((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle mo12564D3 = mo12564D3((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo12564D3);
                return true;
            case 3:
                mo12557g1(parcel.readString(), parcel.readString(), (Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                mo12558e2(parcel.readString(), parcel.readString(), AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map mo12562K4 = mo12562K4(parcel.readString(), parcel.readString(), C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(mo12562K4);
                return true;
            case 6:
                int mo12561O = mo12561O(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(mo12561O);
                return true;
            case 7:
                mo12560a0((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo12563J2(parcel.readString(), parcel.readString(), (Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List mo12559b4 = mo12559b4(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(mo12559b4);
                return true;
            case 10:
                String mo12556h = mo12556h();
                parcel2.writeNoException();
                parcel2.writeString(mo12556h);
                return true;
            case 11:
                String mo12555i = mo12555i();
                parcel2.writeNoException();
                parcel2.writeString(mo12555i);
                return true;
            case 12:
                long mo12554j = mo12554j();
                parcel2.writeNoException();
                parcel2.writeLong(mo12554j);
                return true;
            case 13:
                mo12550t0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                mo12567B0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                mo12565D2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String mo12551s = mo12551s();
                parcel2.writeNoException();
                parcel2.writeString(mo12551s);
                return true;
            case 17:
                String mo12552o = mo12552o();
                parcel2.writeNoException();
                parcel2.writeString(mo12552o);
                return true;
            case 18:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 19:
                mo12553j0((Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
