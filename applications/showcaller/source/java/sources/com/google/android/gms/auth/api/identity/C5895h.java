package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.identity.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/h.class */
public final class C5895h implements Parcelable.Creator<SignInCredential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInCredential createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
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
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 4:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.m16959o(parcel, m16983C, Uri.CREATOR);
                    break;
                case 6:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new SignInCredential(str, str2, str3, str4, uri, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInCredential[] newArray(int i) {
        return new SignInCredential[i];
    }
}
