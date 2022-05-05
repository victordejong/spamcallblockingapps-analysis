package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e.class */
public final class e implements Parcelable.Creator<SignInButtonConfig> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SignInButtonConfig signInButtonConfig, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, signInButtonConfig.f3992a);
        b.b(parcel, 2, signInButtonConfig.f3993b);
        b.b(parcel, 3, signInButtonConfig.c);
        b.a(parcel, 4, signInButtonConfig.d, i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInButtonConfig createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        Scope[] scopeArr = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i3 = a.d(parcel, readInt);
                    break;
                case 2:
                    i2 = a.d(parcel, readInt);
                    break;
                case 3:
                    i = a.d(parcel, readInt);
                    break;
                case 4:
                    scopeArr = (Scope[]) a.b(parcel, readInt, Scope.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new SignInButtonConfig(i3, i2, i, scopeArr);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInButtonConfig[] newArray(int i) {
        return new SignInButtonConfig[i];
    }
}
