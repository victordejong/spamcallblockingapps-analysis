package p081h.p203i.p204a.p224e.p226b.p227e.p228d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.zzl;
import com.google.android.gms.auth.api.accounttransfer.zzo;
import com.google.android.gms.auth.api.accounttransfer.zzr;
import java.util.ArrayList;
import java.util.HashSet;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/d/a.class */
public final class C6719a implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
                hashSet.add(1);
            } else if (a2 == 2) {
                arrayList = C7029a.m21254c(parcel, a, zzr.CREATOR);
                hashSet.add(2);
            } else if (a2 == 3) {
                i2 = C7029a.m21231z(parcel, a);
                hashSet.add(3);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                zzoVar = (zzo) C7029a.m21260a(parcel, a, zzo.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == b) {
            return new zzl(hashSet, i, arrayList, i2, zzoVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(b);
        throw new C7029a.C7030a(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}
