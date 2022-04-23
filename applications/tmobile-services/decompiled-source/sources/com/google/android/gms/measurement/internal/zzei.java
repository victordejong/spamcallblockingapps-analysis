package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzc;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzei.class */
public abstract class zzei extends zzc implements zzej {
    public zzei() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    protected final boolean mo11592a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo11323t0((zzar) zzb.m13404a(parcel, zzar.CREATOR), (zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo11344D0((zzkr) zzb.m13404a(parcel, zzkr.CREATOR), (zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                mo11329h0((zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                mo11342K0((zzar) zzb.m13404a(parcel, zzar.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo11325q0((zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkr> d0 = mo11331d0((zzn) zzb.m13404a(parcel, zzn.CREATOR), zzb.m13400e(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(d0);
                return true;
            case 9:
                byte[] s0 = mo11324s0((zzar) zzb.m13404a(parcel, zzar.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(s0);
                return true;
            case 10:
                mo11340R(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String I = mo11343I((zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(I);
                return true;
            case 12:
                mo11328i((zzw) zzb.m13404a(parcel, zzw.CREATOR), (zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo11326m0((zzw) zzb.m13404a(parcel, zzw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzkr> c0 = mo11332c0(parcel.readString(), parcel.readString(), zzb.m13400e(parcel), (zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(c0);
                return true;
            case 15:
                List<zzkr> C = mo11345C(parcel.readString(), parcel.readString(), parcel.readString(), zzb.m13400e(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(C);
                return true;
            case 16:
                List<zzw> V = mo11335V(parcel.readString(), parcel.readString(), (zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(V);
                return true;
            case 17:
                List<zzw> U = mo11336U(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(U);
                return true;
            case 18:
                mo11337T((zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                mo11346B0((Bundle) zzb.m13404a(parcel, Bundle.CREATOR), (zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                mo11327m((zzn) zzb.m13404a(parcel, zzn.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
