package p081h.p203i.p204a.p224e.p259j.p266g;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.clearcut.zzr;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.g.x5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/x5.class */
public final class C7726x5 implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        boolean z = true;
        boolean z2 = false;
        int i3 = 0;
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
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 6:
                    str3 = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 8:
                    str4 = C7029a.m21242o(parcel, a);
                    break;
                case 9:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 10:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzr(str, i, i2, str2, str3, z, str4, z2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}
