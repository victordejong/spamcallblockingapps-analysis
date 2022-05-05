package p081h.p203i.p204a.p224e.p226b.p227e.p232h;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.h.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/f.class */
public final class C6764f implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    arrayList = C7029a.m21254c(parcel, a, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) C7029a.m21260a(parcel, a, Account.CREATOR);
                    break;
                case 4:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 5:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 6:
                    z3 = C7029a.m21238s(parcel, a);
                    break;
                case 7:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 8:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 9:
                    arrayList2 = C7029a.m21254c(parcel, a, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new GoogleSignInOptions(i, arrayList, account, z, z2, z3, str, str2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
