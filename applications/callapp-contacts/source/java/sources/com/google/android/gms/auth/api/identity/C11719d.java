package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.identity.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/d.class */
public final class C11719d implements Parcelable.Creator<BeginSignInRequest.GoogleIdTokenRequestOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest.GoogleIdTokenRequestOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        ArrayList<String> arrayList = null;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new BeginSignInRequest.GoogleIdTokenRequestOptions(z, str, str2, z2, str3, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest.GoogleIdTokenRequestOptions[] newArray(int i) {
        return new BeginSignInRequest.GoogleIdTokenRequestOptions[i];
    }
}
