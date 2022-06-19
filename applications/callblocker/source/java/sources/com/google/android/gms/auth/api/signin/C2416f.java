package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/f.class */
public final class C2416f implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        char c = 0;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m13965a(parcel, m13969a, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 9:
                    str6 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 10:
                    arrayList = SafeParcelReader.m13960c(parcel, m13969a, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 12:
                    str8 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, c, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
