package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PointOfInterest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/o.class */
public final class C8920o implements Parcelable.Creator<PointOfInterest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PointOfInterest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 == 3) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                str2 = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new PointOfInterest(latLng, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PointOfInterest[] newArray(int i) {
        return new PointOfInterest[i];
    }
}
