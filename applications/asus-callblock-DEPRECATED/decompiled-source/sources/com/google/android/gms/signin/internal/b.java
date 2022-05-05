package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/b.class */
public final class b implements Parcelable.Creator<CheckServerAuthResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CheckServerAuthResult checkServerAuthResult, Parcel parcel) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, checkServerAuthResult.f4252a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, checkServerAuthResult.f4253b);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, checkServerAuthResult.c);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CheckServerAuthResult createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        ArrayList arrayList = null;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    z = a.c(parcel, readInt);
                    break;
                case 3:
                    arrayList = a.c(parcel, readInt, Scope.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new CheckServerAuthResult(i, z, arrayList);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CheckServerAuthResult[] newArray(int i) {
        return new CheckServerAuthResult[i];
    }
}
