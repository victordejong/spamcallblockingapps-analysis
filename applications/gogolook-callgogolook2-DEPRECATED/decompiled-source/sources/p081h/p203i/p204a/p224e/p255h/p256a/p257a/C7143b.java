package p081h.p203i.p204a.p224e.p255h.p256a.p257a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.h.a.a.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/h/a/a/b.class */
public final class C7143b implements Parcelable.Creator<UserAddress> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserAddress createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
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
                    str5 = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                    str6 = C7029a.m21242o(parcel, a);
                    break;
                case 8:
                    str7 = C7029a.m21242o(parcel, a);
                    break;
                case 9:
                    str8 = C7029a.m21242o(parcel, a);
                    break;
                case 10:
                    str9 = C7029a.m21242o(parcel, a);
                    break;
                case 11:
                    str10 = C7029a.m21242o(parcel, a);
                    break;
                case 12:
                    str11 = C7029a.m21242o(parcel, a);
                    break;
                case 13:
                    str12 = C7029a.m21242o(parcel, a);
                    break;
                case 14:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 15:
                    str13 = C7029a.m21242o(parcel, a);
                    break;
                case 16:
                    str14 = C7029a.m21242o(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new UserAddress(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, z, str13, str14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserAddress[] newArray(int i) {
        return new UserAddress[i];
    }
}
