package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zznb;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.q6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q6.class */
public final class C7373q6 implements Parcelable.Creator<zznb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zznb createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 15) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zznb(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zznb[] newArray(int i) {
        return new zznb[i];
    }
}
