package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/f.class */
public final class C8911f implements Parcelable.Creator<CameraPosition> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        float f = 0.0f;
        LatLng latLng = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
            } else if (a2 == 3) {
                f = C7029a.m21234w(parcel, a);
            } else if (a2 == 4) {
                f2 = C7029a.m21234w(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                f3 = C7029a.m21234w(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new CameraPosition(latLng, f, f2, f3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition[] newArray(int i) {
        return new CameraPosition[i];
    }
}
