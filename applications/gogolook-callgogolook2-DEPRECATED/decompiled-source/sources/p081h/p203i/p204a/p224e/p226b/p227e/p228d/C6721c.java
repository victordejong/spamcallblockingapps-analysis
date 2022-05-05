package p081h.p203i.p204a.p224e.p226b.p227e.p228d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.zzr;
import com.google.android.gms.auth.api.accounttransfer.zzt;
import java.util.HashSet;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/d/c.class */
public final class C6721c implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        zzt zztVar = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
                hashSet.add(1);
            } else if (a2 == 2) {
                zztVar = (zzt) C7029a.m21260a(parcel, a, zzt.CREATOR);
                hashSet.add(2);
            } else if (a2 == 3) {
                str = C7029a.m21242o(parcel, a);
                hashSet.add(3);
            } else if (a2 == 4) {
                str2 = C7029a.m21242o(parcel, a);
                hashSet.add(4);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                str3 = C7029a.m21242o(parcel, a);
                hashSet.add(5);
            }
        }
        if (parcel.dataPosition() == b) {
            return new zzr(hashSet, i, zztVar, str, str2, str3);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(b);
        throw new C7029a.C7030a(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}
