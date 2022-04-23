package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/firebase/auth/a.class */
public final class a implements Parcelable.Creator<UserProfileChangeRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(UserProfileChangeRequest userProfileChangeRequest, Parcel parcel) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, userProfileChangeRequest.f4433a);
        b.a(parcel, 2, userProfileChangeRequest.f4434b);
        b.a(parcel, 3, userProfileChangeRequest.c);
        b.a(parcel, 4, userProfileChangeRequest.d);
        b.a(parcel, 5, userProfileChangeRequest.e);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserProfileChangeRequest createFromParcel(Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        boolean z = false;
        boolean z2 = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.a.d(parcel, readInt);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.a.k(parcel, readInt);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, readInt);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.a.c(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new UserProfileChangeRequest(i, str2, str, z2, z);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserProfileChangeRequest[] newArray(int i) {
        return new UserProfileChangeRequest[i];
    }
}
