package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public final class i implements Parcelable.Creator<ValidateAccountRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ValidateAccountRequest validateAccountRequest, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, validateAccountRequest.f3994a);
        b.b(parcel, 2, validateAccountRequest.f3995b);
        b.a(parcel, 3, validateAccountRequest.c);
        b.a(parcel, 4, validateAccountRequest.d, i);
        b.a(parcel, 5, validateAccountRequest.e);
        b.a(parcel, 6, validateAccountRequest.f);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ValidateAccountRequest createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        String str = null;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = a.d(parcel, readInt);
                    break;
                case 2:
                    i = a.d(parcel, readInt);
                    break;
                case 3:
                    iBinder = a.l(parcel, readInt);
                    break;
                case 4:
                    scopeArr = (Scope[]) a.b(parcel, readInt, Scope.CREATOR);
                    break;
                case 5:
                    bundle = a.m(parcel, readInt);
                    break;
                case 6:
                    str = a.k(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new ValidateAccountRequest(i2, i, iBinder, scopeArr, bundle, str);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ValidateAccountRequest[] newArray(int i) {
        return new ValidateAccountRequest[i];
    }
}
