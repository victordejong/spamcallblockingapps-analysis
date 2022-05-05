package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/g.class */
public final class g implements Parcelable.Creator<SignInRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SignInRequest signInRequest, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, signInRequest.f4256a);
        b.a(parcel, 2, signInRequest.f4257b, i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInRequest createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    resolveAccountRequest = (ResolveAccountRequest) a.a(parcel, readInt, ResolveAccountRequest.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new SignInRequest(i, resolveAccountRequest);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInRequest[] newArray(int i) {
        return new SignInRequest[i];
    }
}
