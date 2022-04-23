package p081h.p203i.p204a.p224e.p259j.p264e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.auth.zzaf;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.e.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/d.class */
public final class C7516d implements Parcelable.Creator<zzaf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaf createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                bArr = C7029a.m21250g(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzaf(i, str, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaf[] newArray(int i) {
        return new zzaf[i];
    }
}
