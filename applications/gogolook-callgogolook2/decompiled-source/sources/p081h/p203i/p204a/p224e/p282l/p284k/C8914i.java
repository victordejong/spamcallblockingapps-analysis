package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/i.class */
public final class C8914i implements Parcelable.Creator<GroundOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        IBinder iBinder = null;
        LatLng latLng = null;
        LatLngBounds latLngBounds = null;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean z = false;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    iBinder = C7029a.m21232y(parcel, a);
                    break;
                case 3:
                    latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
                    break;
                case 4:
                    f = C7029a.m21234w(parcel, a);
                    break;
                case 5:
                    f2 = C7029a.m21234w(parcel, a);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) C7029a.m21260a(parcel, a, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = C7029a.m21234w(parcel, a);
                    break;
                case 8:
                    f4 = C7029a.m21234w(parcel, a);
                    break;
                case 9:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 10:
                    f5 = C7029a.m21234w(parcel, a);
                    break;
                case 11:
                    f6 = C7029a.m21234w(parcel, a);
                    break;
                case 12:
                    f7 = C7029a.m21234w(parcel, a);
                    break;
                case 13:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}
