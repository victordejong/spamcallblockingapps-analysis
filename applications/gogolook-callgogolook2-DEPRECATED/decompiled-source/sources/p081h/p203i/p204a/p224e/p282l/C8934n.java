package p081h.p203i.p204a.p224e.p282l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/n.class */
public final class C8934n implements Parcelable.Creator<StreetViewPanoramaOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        StreetViewPanoramaCamera streetViewPanoramaCamera = null;
        String str = null;
        LatLng latLng = null;
        Integer num = null;
        StreetViewSource streetViewSource = null;
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        byte b5 = 0;
        byte b6 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    streetViewPanoramaCamera = (StreetViewPanoramaCamera) C7029a.m21260a(parcel, a, StreetViewPanoramaCamera.CREATOR);
                    break;
                case 3:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 4:
                    latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
                    break;
                case 5:
                    num = C7029a.m21271A(parcel, a);
                    break;
                case 6:
                    b2 = C7029a.m21237t(parcel, a);
                    break;
                case 7:
                    b3 = C7029a.m21237t(parcel, a);
                    break;
                case 8:
                    b4 = C7029a.m21237t(parcel, a);
                    break;
                case 9:
                    b5 = C7029a.m21237t(parcel, a);
                    break;
                case 10:
                    b6 = C7029a.m21237t(parcel, a);
                    break;
                case 11:
                    streetViewSource = (StreetViewSource) C7029a.m21260a(parcel, a, StreetViewSource.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new StreetViewPanoramaOptions(streetViewPanoramaCamera, str, latLng, num, b2, b3, b4, b5, b6, streetViewSource);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOptions[] newArray(int i) {
        return new StreetViewPanoramaOptions[i];
    }
}
