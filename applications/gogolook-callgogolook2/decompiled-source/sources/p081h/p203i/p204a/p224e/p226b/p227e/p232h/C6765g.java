package p081h.p203i.p204a.p224e.p226b.p227e.p232h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.h.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/g.class */
public final class C6765g implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 4) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 7) {
                googleSignInAccount = (GoogleSignInAccount) C7029a.m21260a(parcel, a, GoogleSignInAccount.CREATOR);
            } else if (a2 != 8) {
                C7029a.m21266F(parcel, a);
            } else {
                str2 = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
