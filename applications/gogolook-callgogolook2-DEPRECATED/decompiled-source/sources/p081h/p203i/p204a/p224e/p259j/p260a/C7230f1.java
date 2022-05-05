package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaio;
import com.google.android.gms.internal.ads.zzjk;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.f1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/f1.class */
public final class C7230f1 implements Parcelable.Creator<zzaio> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaio createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzjk zzjkVar = null;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                zzjkVar = (zzjk) C7029a.m21260a(parcel, a, zzjk.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzaio(zzjkVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaio[] newArray(int i) {
        return new zzaio[i];
    }
}
