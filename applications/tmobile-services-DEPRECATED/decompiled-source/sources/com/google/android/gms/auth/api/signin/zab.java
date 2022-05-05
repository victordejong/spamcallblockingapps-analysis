package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zab.class */
public final class zab implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
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
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 3:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 4:
                    str3 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 5:
                    str4 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m14476n(parcel, B, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 8:
                    j = SafeParcelReader.m14496F(parcel, B);
                    break;
                case 9:
                    str6 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 10:
                    arrayList = SafeParcelReader.m14471s(parcel, B, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 12:
                    str8 = SafeParcelReader.m14475o(parcel, B);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
