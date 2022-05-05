package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzme;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.v5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v5.class */
public final class C7432v5 implements Parcelable.Creator<zzme> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzme createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzme(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzme[] newArray(int i) {
        return new zzme[i];
    }
}
