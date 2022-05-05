package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p276q.BinderC8597f1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8606g1;
/* renamed from: h.i.a.e.m.b.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/g.class */
public abstract class AbstractBinderC8979g extends BinderC8597f1 implements AbstractC8973f {
    public AbstractBinderC8979g() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.BinderC8597f1
    /* renamed from: a */
    public final boolean mo16605a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo16147a((zzad) C8606g1.m17663a(parcel, zzad.CREATOR), (zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mo16144a((zzfh) C8606g1.m17663a(parcel, zzfh.CREATOR), (zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                mo16129c((zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                mo16145a((zzad) C8606g1.m17663a(parcel, zzad.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo16128d((zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                List<zzfh> a = mo16142a((zzh) C8606g1.m17663a(parcel, zzh.CREATOR), C8606g1.m17665a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a);
                return true;
            case 9:
                byte[] a2 = mo16146a((zzad) C8606g1.m17663a(parcel, zzad.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(a2);
                return true;
            case 10:
                mo16148a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String a3 = mo16143a((zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(a3);
                return true;
            case 12:
                mo16140a((zzl) C8606g1.m17663a(parcel, zzl.CREATOR), (zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                mo16141a((zzl) C8606g1.m17663a(parcel, zzl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                List<zzfh> a4 = mo16134a(parcel.readString(), parcel.readString(), C8606g1.m17665a(parcel), (zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a4);
                return true;
            case 15:
                List<zzfh> a5 = mo16135a(parcel.readString(), parcel.readString(), parcel.readString(), C8606g1.m17665a(parcel));
                parcel2.writeNoException();
                parcel2.writeTypedList(a5);
                return true;
            case 16:
                List<zzl> a6 = mo16137a(parcel.readString(), parcel.readString(), (zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(a6);
                return true;
            case 17:
                List<zzl> a7 = mo16136a(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(a7);
                return true;
            case 18:
                mo16131b((zzh) C8606g1.m17663a(parcel, zzh.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
