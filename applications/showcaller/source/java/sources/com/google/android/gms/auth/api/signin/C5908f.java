package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/f.class */
public final class C5908f implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
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
        char c = 0;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 4:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m16959o(parcel, m16983C, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 9:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 10:
                    arrayList = SafeParcelReader.m16954t(parcel, m16983C, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 12:
                    str8 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, c, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
