package p081h.p203i.p204a.p224e.p259j.p273n;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.icing.zzg;
import com.google.android.gms.internal.icing.zzl;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/n/a.class */
public final class C8485a implements Parcelable.Creator<zzg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzg createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzl[] zzlVarArr = null;
        String str = null;
        Account account = null;
        boolean z = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                zzlVarArr = (zzl[]) C7029a.m21256b(parcel, a, zzl.CREATOR);
            } else if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 3) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                account = (Account) C7029a.m21260a(parcel, a, Account.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzg(zzlVarArr, str, z, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzg[] newArray(int i) {
        return new zzg[i];
    }
}
