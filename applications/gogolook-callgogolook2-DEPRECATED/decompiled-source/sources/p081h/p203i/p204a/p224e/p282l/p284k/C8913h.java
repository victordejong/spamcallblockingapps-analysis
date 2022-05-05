package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/h.class */
public final class C8913h implements Parcelable.Creator<CircleOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        LatLng latLng = null;
        ArrayList arrayList = null;
        double d = 0.0d;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    latLng = (LatLng) C7029a.m21260a(parcel, a, LatLng.CREATOR);
                    break;
                case 3:
                    d = C7029a.m21236u(parcel, a);
                    break;
                case 4:
                    f = C7029a.m21234w(parcel, a);
                    break;
                case 5:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 6:
                    i2 = C7029a.m21231z(parcel, a);
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
                    arrayList = C7029a.m21254c(parcel, a, PatternItem.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new CircleOptions(latLng, d, f, i, i2, f2, z, z2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}
