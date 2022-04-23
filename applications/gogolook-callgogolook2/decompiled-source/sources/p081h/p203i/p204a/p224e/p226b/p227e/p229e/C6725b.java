package p081h.p203i.p204a.p224e.p226b.p227e.p229e;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.IdToken;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.e.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/e/b.class */
public final class C6725b implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 2:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    uri = (Uri) C7029a.m21260a(parcel, a, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = C7029a.m21254c(parcel, a, IdToken.CREATOR);
                    break;
                case 5:
                    str3 = C7029a.m21242o(parcel, a);
                    break;
                case 6:
                    str4 = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                case 8:
                default:
                    C7029a.m21266F(parcel, a);
                    break;
                case 9:
                    str5 = C7029a.m21242o(parcel, a);
                    break;
                case 10:
                    str6 = C7029a.m21242o(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new Credential(str, str2, uri, arrayList, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential[] newArray(int i) {
        return new Credential[i];
    }
}
