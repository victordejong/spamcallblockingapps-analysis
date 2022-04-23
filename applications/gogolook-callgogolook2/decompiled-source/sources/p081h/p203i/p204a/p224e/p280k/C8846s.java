package p081h.p203i.p204a.p224e.p280k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationSettingsStates;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/s.class */
public final class C8846s implements Parcelable.Creator<LocationSettingsStates> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 2:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 3:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 4:
                    z4 = C7029a.m21238s(parcel, a);
                    break;
                case 5:
                    z5 = C7029a.m21238s(parcel, a);
                    break;
                case 6:
                    z6 = C7029a.m21238s(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new LocationSettingsStates(z, z2, z3, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates[] newArray(int i) {
        return new LocationSettingsStates[i];
    }
}
