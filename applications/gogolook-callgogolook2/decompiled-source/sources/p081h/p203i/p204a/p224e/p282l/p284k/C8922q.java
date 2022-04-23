package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import com.google.android.gms.maps.model.PolylineOptions;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/q.class */
public final class C8922q implements Parcelable.Creator<PolylineOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList arrayList = null;
        Cap cap = null;
        Cap cap2 = null;
        ArrayList arrayList2 = null;
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    arrayList = C7029a.m21254c(parcel, a, LatLng.CREATOR);
                    break;
                case 3:
                    f = C7029a.m21234w(parcel, a);
                    break;
                case 4:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 5:
                    f2 = C7029a.m21234w(parcel, a);
                    break;
                case 6:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 7:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 8:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 9:
                    cap = (Cap) C7029a.m21260a(parcel, a, Cap.CREATOR);
                    break;
                case 10:
                    cap2 = (Cap) C7029a.m21260a(parcel, a, Cap.CREATOR);
                    break;
                case 11:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 12:
                    arrayList2 = C7029a.m21254c(parcel, a, PatternItem.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new PolylineOptions(arrayList, f, i, f2, z, z2, z3, cap, cap2, i2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions[] newArray(int i) {
        return new PolylineOptions[i];
    }
}
