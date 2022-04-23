package p081h.p203i.p204a.p224e.p226b.p227e.p232h;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.h.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/d.class */
public final class C6762d implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 4:
                    str3 = C7029a.m21242o(parcel, a);
                    break;
                case 5:
                    str4 = C7029a.m21242o(parcel, a);
                    break;
                case 6:
                    uri = (Uri) C7029a.m21260a(parcel, a, Uri.CREATOR);
                    break;
                case 7:
                    str5 = C7029a.m21242o(parcel, a);
                    break;
                case 8:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 9:
                    str6 = C7029a.m21242o(parcel, a);
                    break;
                case 10:
                    arrayList = C7029a.m21254c(parcel, a, Scope.CREATOR);
                    break;
                case 11:
                    str7 = C7029a.m21242o(parcel, a);
                    break;
                case 12:
                    str8 = C7029a.m21242o(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
