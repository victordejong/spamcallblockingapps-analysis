package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/g.class */
public final class C11737g implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
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
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m19143a(parcel, readInt, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\b':
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\t':
                    str6 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\n':
                    arrayList = SafeParcelReader.m19138c(parcel, readInt, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\f':
                    str8 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, c, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
