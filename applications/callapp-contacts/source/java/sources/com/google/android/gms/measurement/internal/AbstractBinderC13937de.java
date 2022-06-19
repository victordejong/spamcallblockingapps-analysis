package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.BinderC13719v;
import com.google.android.gms.internal.measurement.C13371as;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.de */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/de.class */
public abstract class AbstractBinderC13937de extends BinderC13719v implements AbstractC13938df {
    public AbstractBinderC13937de() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC13719v
    /* renamed from: a */
    public final boolean mo12113a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        switch (i) {
            case 1:
                mo11902a((zzas) C13371as.m13248a(parcel, zzas.CREATOR), (zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo11900a((zzkl) C13371as.m13248a(parcel, zzkl.CREATOR), (zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                mo11899a((zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                zzas zzasVar = (zzas) C13371as.m13248a(parcel, zzas.CREATOR);
                String readString = parcel.readString();
                parcel.readString();
                mo11901a(zzasVar, readString);
                parcel2.writeNoException();
                return true;
            case 6:
                mo11889b((zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkl> a = mo11898a((zzp) C13371as.m13248a(parcel, zzp.CREATOR), C13371as.m13250a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a);
                return true;
            case 9:
                byte[] b = mo11890b((zzas) C13371as.m13248a(parcel, zzas.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(b);
                return true;
            case 10:
                mo11907a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String c = mo11888c((zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case 12:
                mo11903a((zzaa) C13371as.m13248a(parcel, zzaa.CREATOR), (zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo11904a((zzaa) C13371as.m13248a(parcel, zzaa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzkl> a2 = mo11892a(parcel.readString(), parcel.readString(), C13371as.m13250a(parcel), (zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a2);
                return true;
            case 15:
                List<zzkl> a3 = mo11893a(parcel.readString(), parcel.readString(), parcel.readString(), C13371as.m13250a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a3);
                return true;
            case 16:
                List<zzaa> a4 = mo11895a(parcel.readString(), parcel.readString(), (zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                return true;
            case 17:
                List<zzaa> a5 = mo11894a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(a5);
                return true;
            case 18:
                mo11887d((zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                mo11906a((Bundle) C13371as.m13248a(parcel, Bundle.CREATOR), (zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                mo11886e((zzp) C13371as.m13248a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
