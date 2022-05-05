package p081h.p203i.p204a.p224e.p280k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationSettingsStates;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/r.class */
public final class C8845r implements Parcelable.Creator<LocationSettingsResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                status = (Status) C7029a.m21260a(parcel, a, Status.CREATOR);
            } else if (a2 != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                locationSettingsStates = (LocationSettingsStates) C7029a.m21260a(parcel, a, LocationSettingsStates.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
