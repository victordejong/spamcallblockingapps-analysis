package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/a.class */
public final class a implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, googleSignInAccount.f3907b);
        b.a(parcel, 2, googleSignInAccount.c);
        b.a(parcel, 3, googleSignInAccount.d);
        b.a(parcel, 4, googleSignInAccount.e);
        b.a(parcel, 5, googleSignInAccount.f);
        b.a(parcel, 6, googleSignInAccount.g, i);
        b.a(parcel, 7, googleSignInAccount.h);
        b.a(parcel, 8, googleSignInAccount.i);
        b.a(parcel, 9, googleSignInAccount.j);
        b.a(parcel, 10, googleSignInAccount.k);
        b.a(parcel, 11, googleSignInAccount.l);
        b.a(parcel, 12, googleSignInAccount.m);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        long j = 0;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 6:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, readInt, Uri.CREATOR);
                    break;
                case 7:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.a.f(parcel, readInt);
                    break;
                case 9:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 10:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, readInt, Scope.CREATOR);
                    break;
                case 11:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 12:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
