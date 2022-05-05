package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/m.class */
public final class C8918m implements Parcelable.Creator<MarkerOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
                    break;
                case 3:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 4:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 5:
                    iBinder = C7029a.m21232y(parcel, a);
                    break;
                case 6:
                    f = C7029a.m21234w(parcel, a);
                    break;
                case 7:
                    f2 = C7029a.m21234w(parcel, a);
                    break;
                case 8:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 9:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 10:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 11:
                    f3 = C7029a.m21234w(parcel, a);
                    break;
                case 12:
                    f4 = C7029a.m21234w(parcel, a);
                    break;
                case 13:
                    f5 = C7029a.m21234w(parcel, a);
                    break;
                case 14:
                    f6 = C7029a.m21234w(parcel, a);
                    break;
                case 15:
                    f7 = C7029a.m21234w(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6, f7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions[] newArray(int i) {
        return new MarkerOptions[i];
    }
}
