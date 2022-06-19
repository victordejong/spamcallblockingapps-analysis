package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afj.class */
public abstract class afj extends dvd implements afl {
    public afj() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo14509a((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle b = mo14501b((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.m15671b(parcel2, b);
                return true;
            case 3:
                mo14505a(parcel.readString(), parcel.readString(), (Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                mo14504a(parcel.readString(), parcel.readString(), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map a = mo14503a(parcel.readString(), parcel.readString(), dvc.m15677a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(a);
                return true;
            case 6:
                int a2 = mo14507a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a2);
                return true;
            case 7:
                mo14497c((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo14499b(parcel.readString(), parcel.readString(), (Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List a3 = mo14506a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(a3);
                return true;
            case 10:
                String a4 = mo14510a();
                parcel2.writeNoException();
                parcel2.writeString(a4);
                return true;
            case 11:
                String b2 = mo14502b();
                parcel2.writeNoException();
                parcel2.writeString(b2);
                return true;
            case 12:
                long c = mo14498c();
                parcel2.writeNoException();
                parcel2.writeLong(c);
                return true;
            case 13:
                mo14500b(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                mo14496c(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                mo14508a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String d = mo14495d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                return true;
            case 17:
                String e = mo14493e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 18:
                String f = mo14492f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 19:
                mo14494d((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
