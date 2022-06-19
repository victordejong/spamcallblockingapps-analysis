package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/zba.class */
public final class zba implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final Credential createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
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
                    uri = (Uri) SafeParcelReader.m38880i(parcel, readInt, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = SafeParcelReader.m38875n(parcel, readInt, IdToken.CREATOR);
                    break;
                case 5:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                case '\b':
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case '\t':
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Credential(str, str2, uri, arrayList, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Credential[] newArray(int i) {
        return new Credential[i];
    }
}
