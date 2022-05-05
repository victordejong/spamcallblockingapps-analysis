package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzti;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.w9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w9.class */
public final class C7448w9 implements Parcelable.Creator<zzti> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzti createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 1) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzti(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzti[] newArray(int i) {
        return new zzti[i];
    }
}
