package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.as;
import com.google.android.gms.internal.measurement.v;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/de.class */
public abstract class de extends v implements df {
    public de() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.v
    public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 1:
                a((zzas) as.a(parcel, zzas.CREATOR), (zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                a((zzkl) as.a(parcel, zzkl.CREATOR), (zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                a((zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zzas zzasVar = (zzas) as.a(parcel, zzas.CREATOR);
                String readString = parcel.readString();
                parcel.readString();
                a(zzasVar, readString);
                parcel2.writeNoException();
                return true;
            case 6:
                b((zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkl> a2 = a((zzp) as.a(parcel, zzp.CREATOR), as.a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a2);
                return true;
            case 9:
                byte[] b2 = b((zzas) as.a(parcel, zzas.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(b2);
                return true;
            case 10:
                a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String c2 = c((zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(c2);
                return true;
            case 12:
                a((zzaa) as.a(parcel, zzaa.CREATOR), (zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                a((zzaa) as.a(parcel, zzaa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzkl> a3 = a(parcel.readString(), parcel.readString(), as.a(parcel), (zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a3);
                return true;
            case 15:
                List<zzkl> a4 = a(parcel.readString(), parcel.readString(), parcel.readString(), as.a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                return true;
            case 16:
                List<zzaa> a5 = a(parcel.readString(), parcel.readString(), (zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a5);
                return true;
            case 17:
                List<zzaa> a6 = a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(a6);
                return true;
            case 18:
                d((zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                a((Bundle) as.a(parcel, Bundle.CREATOR), (zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                e((zzp) as.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
