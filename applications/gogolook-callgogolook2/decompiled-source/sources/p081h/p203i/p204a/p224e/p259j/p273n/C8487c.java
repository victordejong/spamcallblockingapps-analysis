package p081h.p203i.p204a.p224e.p259j.p273n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.icing.zzl;
import com.google.android.gms.internal.icing.zzs;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.n.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/n/c.class */
public final class C8487c implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        zzs zzsVar = null;
        byte[] bArr = null;
        int i = -1;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 3) {
                zzsVar = (zzs) C7029a.m21260a(parcel, a, zzs.CREATOR);
            } else if (a2 == 4) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                bArr = C7029a.m21250g(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzl(str, zzsVar, i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}
