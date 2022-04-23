package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zznf;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.s6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s6.class */
public final class C7397s6 implements Parcelable.Creator<zznf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zznf createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 == 3) {
                z2 = C7029a.m21238s(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                z3 = C7029a.m21238s(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zznf(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zznf[] newArray(int i) {
        return new zznf[i];
    }
}
