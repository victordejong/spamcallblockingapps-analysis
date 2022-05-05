package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zznf;
import com.google.android.gms.internal.ads.zzpy;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.o7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o7.class */
public final class C7349o7 implements Parcelable.Creator<zzpy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzpy createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zznf zznfVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 3:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 4:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 5:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 6:
                    zznfVar = (zznf) C7029a.m21260a(parcel, a, zznf.CREATOR);
                    break;
                case 7:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzpy(i, z, i2, z2, i3, zznfVar, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzpy[] newArray(int i) {
        return new zzpy[i];
    }
}
