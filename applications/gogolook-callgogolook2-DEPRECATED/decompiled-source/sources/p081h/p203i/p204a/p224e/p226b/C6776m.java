package p081h.p203i.p204a.p224e.p226b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.TokenData;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/m.class */
public final class C6776m implements Parcelable.Creator<TokenData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        Long l = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
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
                    l = C7029a.m21269C(parcel, a);
                    break;
                case 4:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 5:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 6:
                    arrayList = C7029a.m21240q(parcel, a);
                    break;
                case 7:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new TokenData(i, str, l, z, z2, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}
