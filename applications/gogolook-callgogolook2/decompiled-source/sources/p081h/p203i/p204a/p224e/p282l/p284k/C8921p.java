package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import com.google.android.gms.maps.model.PolygonOptions;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/p.class */
public final class C8921p implements Parcelable.Creator<PolygonOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    arrayList2 = C7029a.m21254c(parcel, a, LatLng.CREATOR);
                    break;
                case 3:
                    C7029a.m21259a(parcel, a, arrayList, C8921p.class.getClassLoader());
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
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 11:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 12:
                    arrayList3 = C7029a.m21254c(parcel, a, PatternItem.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new PolygonOptions(arrayList2, arrayList, f, i, i2, f2, z, z2, z3, i3, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions[] newArray(int i) {
        return new PolygonOptions[i];
    }
}
