package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.i3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i3.class */
public final class C7271i3 implements Parcelable.Creator<zzjo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjo createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        zzjo[] zzjoVarArr = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 4:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 5:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 6:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 7:
                    i4 = C7029a.m21231z(parcel, a);
                    break;
                case 8:
                    zzjoVarArr = (zzjo[]) C7029a.m21256b(parcel, a, zzjo.CREATOR);
                    break;
                case 9:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 10:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 11:
                    z4 = C7029a.m21238s(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzjo(str, i, i2, z, i3, i4, zzjoVarArr, z2, z3, z4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjo[] newArray(int i) {
        return new zzjo[i];
    }
}
