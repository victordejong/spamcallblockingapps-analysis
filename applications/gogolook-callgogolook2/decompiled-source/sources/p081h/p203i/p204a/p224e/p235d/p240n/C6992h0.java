package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.n.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/h0.class */
public final class C6992h0 implements Parcelable.Creator<ResolveAccountRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Account account = null;
        int i = 0;
        GoogleSignInAccount googleSignInAccount = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                account = (Account) C7029a.m21260a(parcel, a, Account.CREATOR);
            } else if (a2 == 3) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                googleSignInAccount = (GoogleSignInAccount) C7029a.m21260a(parcel, a, GoogleSignInAccount.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new ResolveAccountRequest(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
