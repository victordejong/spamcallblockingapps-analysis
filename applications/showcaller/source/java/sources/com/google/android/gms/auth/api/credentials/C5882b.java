package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.credentials.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/credentials/b.class */
public final class C5882b implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 2:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    uri = (Uri) SafeParcelReader.m16959o(parcel, m16983C, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = SafeParcelReader.m16954t(parcel, m16983C, IdToken.CREATOR);
                    break;
                case 5:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                case 8:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 9:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 10:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new Credential(str, str2, uri, arrayList, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential[] newArray(int i) {
        return new Credential[i];
    }
}
