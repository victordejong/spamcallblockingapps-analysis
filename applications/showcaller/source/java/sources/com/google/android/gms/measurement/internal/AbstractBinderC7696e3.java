package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.BinderC7564u;
import com.google.android.gms.internal.measurement.C7526r0;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.e3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/e3.class */
public abstract class AbstractBinderC7696e3 extends BinderC7564u implements AbstractC7708f3 {
    public AbstractBinderC7696e3() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC7564u
    /* renamed from: c0 */
    protected final boolean mo6466c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo6233n6((zzas) C7526r0.m6987c(parcel, zzas.CREATOR), (zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo6237h6((zzkl) C7526r0.m6987c(parcel, zzkl.CREATOR), (zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                mo6226x5((zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                mo6232p3((zzas) C7526r0.m6987c(parcel, zzas.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo6240Z3((zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzkl> mo6248A2 = mo6248A2((zzp) C7526r0.m6987c(parcel, zzp.CREATOR), C7526r0.m6989a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo6248A2);
                return true;
            case 9:
                byte[] mo6227u3 = mo6227u3((zzas) C7526r0.m6987c(parcel, zzas.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(mo6227u3);
                return true;
            case 10:
                mo6229r2(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String mo6230r1 = mo6230r1((zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(mo6230r1);
                return true;
            case 12:
                mo6231q2((zzaa) C7526r0.m6987c(parcel, zzaa.CREATOR), (zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo6235k3((zzaa) C7526r0.m6987c(parcel, zzaa.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzkl> mo6245I2 = mo6245I2(parcel.readString(), parcel.readString(), C7526r0.m6989a(parcel), (zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo6245I2);
                return true;
            case 15:
                List<zzkl> mo6228r6 = mo6228r6(parcel.readString(), parcel.readString(), parcel.readString(), C7526r0.m6989a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo6228r6);
                return true;
            case 16:
                List<zzaa> mo6243M0 = mo6243M0(parcel.readString(), parcel.readString(), (zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(mo6243M0);
                return true;
            case 17:
                List<zzaa> mo6242M2 = mo6242M2(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(mo6242M2);
                return true;
            case 18:
                mo6241V2((zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                mo6236i3((Bundle) C7526r0.m6987c(parcel, Bundle.CREATOR), (zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                mo6239a1((zzp) C7526r0.m6987c(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
