package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/zzx.class */
public final class zzx implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 2) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId != 5) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                googleSignInOptions = (GoogleSignInOptions) SafeParcelReader.createParcelable(parcel, readHeader, GoogleSignInOptions.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new SignInConfiguration(str, googleSignInOptions);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
