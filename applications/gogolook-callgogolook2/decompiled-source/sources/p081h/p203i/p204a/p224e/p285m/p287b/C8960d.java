package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzad;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.m.b.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/d.class */
public final class C8960d implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        zzaa zzaaVar = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 3) {
                zzaaVar = (zzaa) C7029a.m21260a(parcel, a, zzaa.CREATOR);
            } else if (a2 == 4) {
                str2 = C7029a.m21242o(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                j = C7029a.m21270B(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzad(str, zzaaVar, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad[] newArray(int i) {
        return new zzad[i];
    }
}
