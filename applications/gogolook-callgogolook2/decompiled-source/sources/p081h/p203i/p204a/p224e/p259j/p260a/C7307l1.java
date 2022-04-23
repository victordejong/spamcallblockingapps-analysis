package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzajk;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.l1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/l1.class */
public final class C7307l1 implements Parcelable.Creator<zzajk> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajk createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzajk(str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajk[] newArray(int i) {
        return new zzajk[i];
    }
}
