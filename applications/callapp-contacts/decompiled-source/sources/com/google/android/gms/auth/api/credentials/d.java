package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/d.class */
public final class d implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
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
                    uri = (Uri) SafeParcelReader.a(parcel, readInt, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = SafeParcelReader.c(parcel, readInt, IdToken.CREATOR);
                    break;
                case 5:
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 6:
                    str4 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 7:
                case '\b':
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
                case '\t':
                    str5 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\n':
                    str6 = SafeParcelReader.m(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new Credential(str, str2, uri, arrayList, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential[] newArray(int i) {
        return new Credential[i];
    }
}
