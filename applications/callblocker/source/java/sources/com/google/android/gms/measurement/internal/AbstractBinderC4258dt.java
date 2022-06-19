package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.BinderC3803as;
import com.google.android.gms.internal.measurement.C4146u;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.dt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dt.class */
public abstract class AbstractBinderC4258dt extends BinderC3803as implements AbstractC4255dq {
    public AbstractBinderC4258dt() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.BinderC3803as
    /* renamed from: a */
    protected final boolean mo4706a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo4459a((C4450r) C4146u.m4944a(parcel, C4450r.CREATOR), (C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo4464a((C4423jv) C4146u.m4944a(parcel, C4423jv.CREATOR), (C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
            case 8:
            default:
                z = false;
                break;
            case 4:
                mo4463a((C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo4457a((C4450r) C4146u.m4944a(parcel, C4450r.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo4450b((C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                List<C4423jv> a = mo4462a((C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR), C4146u.m4946a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a);
                z = true;
                break;
            case 9:
                byte[] a2 = mo4458a((C4450r) C4146u.m4944a(parcel, C4450r.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(a2);
                z = true;
                break;
            case 10:
                mo4466a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                String c = mo4447c((C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(c);
                z = true;
                break;
            case 12:
                mo4460a((C4442kn) C4146u.m4944a(parcel, C4442kn.CREATOR), (C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                mo4461a((C4442kn) C4146u.m4944a(parcel, C4442kn.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                List<C4423jv> a3 = mo4452a(parcel.readString(), parcel.readString(), C4146u.m4946a(parcel), (C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a3);
                z = true;
                break;
            case 15:
                List<C4423jv> a4 = mo4453a(parcel.readString(), parcel.readString(), parcel.readString(), C4146u.m4946a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                z = true;
                break;
            case 16:
                List<C4442kn> a5 = mo4455a(parcel.readString(), parcel.readString(), (C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a5);
                z = true;
                break;
            case 17:
                List<C4442kn> a6 = mo4454a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(a6);
                z = true;
                break;
            case 18:
                mo4446d((C4430kb) C4146u.m4944a(parcel, C4430kb.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
