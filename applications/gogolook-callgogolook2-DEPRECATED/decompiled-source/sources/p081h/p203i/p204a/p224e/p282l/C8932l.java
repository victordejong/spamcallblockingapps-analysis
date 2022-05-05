package p081h.p203i.p204a.p224e.p282l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/l.class */
public final class C8932l implements Parcelable.Creator<GoogleMapOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        CameraPosition cameraPosition = null;
        Float f = null;
        Float f2 = null;
        LatLngBounds latLngBounds = null;
        byte b2 = -1;
        byte b3 = -1;
        int i = 0;
        byte b4 = -1;
        byte b5 = -1;
        byte b6 = -1;
        byte b7 = -1;
        byte b8 = -1;
        byte b9 = -1;
        byte b10 = -1;
        byte b11 = -1;
        byte b12 = -1;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    b2 = C7029a.m21237t(parcel, a);
                    break;
                case 3:
                    b3 = C7029a.m21237t(parcel, a);
                    break;
                case 4:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) C7029a.m21260a(parcel, a, CameraPosition.CREATOR);
                    break;
                case 6:
                    b4 = C7029a.m21237t(parcel, a);
                    break;
                case 7:
                    b5 = C7029a.m21237t(parcel, a);
                    break;
                case 8:
                    b6 = C7029a.m21237t(parcel, a);
                    break;
                case 9:
                    b7 = C7029a.m21237t(parcel, a);
                    break;
                case 10:
                    b8 = C7029a.m21237t(parcel, a);
                    break;
                case 11:
                    b9 = C7029a.m21237t(parcel, a);
                    break;
                case 12:
                    b10 = C7029a.m21237t(parcel, a);
                    break;
                case 13:
                default:
                    C7029a.m21266F(parcel, a);
                    break;
                case 14:
                    b11 = C7029a.m21237t(parcel, a);
                    break;
                case 15:
                    b12 = C7029a.m21237t(parcel, a);
                    break;
                case 16:
                    f = C7029a.m21233x(parcel, a);
                    break;
                case 17:
                    f2 = C7029a.m21233x(parcel, a);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) C7029a.m21260a(parcel, a, LatLngBounds.CREATOR);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new GoogleMapOptions(b2, b3, i, cameraPosition, b4, b5, b6, b7, b8, b9, b10, b11, b12, f, f2, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}
