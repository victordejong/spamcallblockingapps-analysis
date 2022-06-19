package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.signin.internal.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/x.class */
public final class C2444x implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        GoogleSignInOptions googleSignInOptions = null;
        String str = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                case 4:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 5:
                    googleSignInOptions = (GoogleSignInOptions) SafeParcelReader.m13965a(parcel, m13969a, GoogleSignInOptions.CREATOR);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
