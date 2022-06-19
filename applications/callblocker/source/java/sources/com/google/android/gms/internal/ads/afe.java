package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afe.class */
public abstract class afe extends dkl implements afb {
    public afe() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7693a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                Bundle b = mo7685b((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dkk.m9319b(parcel2, b);
                z = true;
                break;
            case 3:
                mo7689a(parcel.readString(), parcel.readString(), (Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7688a(parcel.readString(), parcel.readString(), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                Map a = mo7687a(parcel.readString(), parcel.readString(), dkk.m9325a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(a);
                z = true;
                break;
            case 6:
                int a2 = mo7691a(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a2);
                z = true;
                break;
            case 7:
                mo7681c((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7683b(parcel.readString(), parcel.readString(), (Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                List a3 = mo7690a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(a3);
                z = true;
                break;
            case 10:
                String a4 = mo7694a();
                parcel2.writeNoException();
                parcel2.writeString(a4);
                z = true;
                break;
            case 11:
                String b2 = mo7686b();
                parcel2.writeNoException();
                parcel2.writeString(b2);
                z = true;
                break;
            case 12:
                long c = mo7682c();
                parcel2.writeNoException();
                parcel2.writeLong(c);
                z = true;
                break;
            case 13:
                mo7684b(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                mo7680c(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                mo7692a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 16:
                String d = mo7679d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                z = true;
                break;
            case 17:
                String e = mo7678e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                z = true;
                break;
            case 18:
                String f = mo7677f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
