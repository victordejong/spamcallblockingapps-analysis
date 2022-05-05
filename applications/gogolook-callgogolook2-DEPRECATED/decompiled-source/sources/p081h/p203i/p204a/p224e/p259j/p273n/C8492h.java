package p081h.p203i.p204a.p224e.p259j.p273n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.icing.zzn;
import com.google.android.gms.internal.icing.zzs;
import com.google.android.gms.internal.icing.zzv;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.n.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/n/h.class */
public final class C8492h implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        zzn[] zznVarArr = null;
        String str4 = null;
        zzv zzvVar = null;
        boolean z = false;
        int i = 1;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 11) {
                str4 = C7029a.m21242o(parcel, a);
            } else if (a2 != 12) {
                switch (a2) {
                    case 1:
                        str = C7029a.m21242o(parcel, a);
                        continue;
                    case 2:
                        str2 = C7029a.m21242o(parcel, a);
                        continue;
                    case 3:
                        z = C7029a.m21238s(parcel, a);
                        continue;
                    case 4:
                        i = C7029a.m21231z(parcel, a);
                        continue;
                    case 5:
                        z2 = C7029a.m21238s(parcel, a);
                        continue;
                    case 6:
                        str3 = C7029a.m21242o(parcel, a);
                        continue;
                    case 7:
                        zznVarArr = (zzn[]) C7029a.m21256b(parcel, a, zzn.CREATOR);
                        continue;
                    default:
                        C7029a.m21266F(parcel, a);
                        continue;
                }
            } else {
                zzvVar = (zzv) C7029a.m21260a(parcel, a, zzv.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzs(str, str2, z, i, z2, str3, zznVarArr, str4, zzvVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
