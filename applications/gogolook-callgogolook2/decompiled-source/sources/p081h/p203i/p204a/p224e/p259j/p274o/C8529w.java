package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.location.LocationRequest;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.o.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/w.class */
public final class C8529w implements Parcelable.Creator<zzbd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbd createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        List<ClientIdentity> list = zzbd.f6860h;
        LocationRequest locationRequest = null;
        String str = null;
        String str2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 != 1) {
                switch (a2) {
                    case 5:
                        list = C7029a.m21254c(parcel, a, ClientIdentity.CREATOR);
                        continue;
                    case 6:
                        str = C7029a.m21242o(parcel, a);
                        continue;
                    case 7:
                        z = C7029a.m21238s(parcel, a);
                        continue;
                    case 8:
                        z2 = C7029a.m21238s(parcel, a);
                        continue;
                    case 9:
                        z3 = C7029a.m21238s(parcel, a);
                        continue;
                    case 10:
                        str2 = C7029a.m21242o(parcel, a);
                        continue;
                    default:
                        C7029a.m21266F(parcel, a);
                        continue;
                }
            } else {
                locationRequest = (LocationRequest) C7029a.m21260a(parcel, a, LocationRequest.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzbd(locationRequest, list, str, z, z2, z3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbd[] newArray(int i) {
        return new zzbd[i];
    }
}
