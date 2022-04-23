package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/h.class */
public final class h implements Parcelable.Creator<SignInCredential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInCredential createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 2:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 3:
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 4:
                    str4 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 5:
                    uri = (Uri) SafeParcelReader.a(parcel, readInt, Uri.CREATOR);
                    break;
                case 6:
                    str5 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 7:
                    str6 = SafeParcelReader.m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new SignInCredential(str, str2, str3, str4, uri, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInCredential[] newArray(int i) {
        return new SignInCredential[i];
    }
}
