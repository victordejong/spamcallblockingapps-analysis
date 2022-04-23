package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbit.class */
public abstract class zzbit extends zzgt implements zzbiq {
    public zzbit() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo15442f((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle h = mo15439h((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, h);
                return true;
            case 3:
                mo15444b(parcel.readString(), parcel.readString(), (Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                mo15448a(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map a = mo15447a(parcel.readString(), parcel.readString(), zzgw.m12082a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(a);
                return true;
            case 6:
                int f = mo15441f(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(f);
                return true;
            case 7:
                mo15438i((Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List b = mo15445b(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case 10:
                String U0 = mo15449U0();
                parcel2.writeNoException();
                parcel2.writeString(U0);
                return true;
            case 11:
                String z1 = mo15435z1();
                parcel2.writeNoException();
                parcel2.writeString(z1);
                return true;
            case 12:
                long d1 = mo15443d1();
                parcel2.writeNoException();
                parcel2.writeLong(d1);
                return true;
            case 13:
                mo15436z(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                mo15451B(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                mo15446b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String f1 = mo15440f1();
                parcel2.writeNoException();
                parcel2.writeString(f1);
                return true;
            case 17:
                String E1 = mo15450E1();
                parcel2.writeNoException();
                parcel2.writeString(E1);
                return true;
            case 18:
                String y1 = mo15437y1();
                parcel2.writeNoException();
                parcel2.writeString(y1);
                return true;
            default:
                return false;
        }
    }
}
