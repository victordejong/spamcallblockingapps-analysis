package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zbk.class */
public final class zbk implements Parcelable.Creator<SignInCredential> {
    @Override // android.os.Parcelable.Creator
    public final SignInCredential createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 2:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.m38880i(parcel, readInt, Uri.CREATOR);
                    break;
                case 6:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SignInCredential(str, str2, str3, str4, uri, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SignInCredential[] newArray(int i) {
        return new SignInCredential[i];
    }
}
