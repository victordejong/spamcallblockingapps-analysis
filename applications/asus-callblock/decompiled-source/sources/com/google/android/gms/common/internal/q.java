package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public final class q implements Parcelable.Creator<GetServiceRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, getServiceRequest.f3986a);
        b.b(parcel, 2, getServiceRequest.f3987b);
        b.b(parcel, 3, getServiceRequest.c);
        b.a(parcel, 4, getServiceRequest.d);
        b.a(parcel, 5, getServiceRequest.e);
        b.a(parcel, 6, getServiceRequest.f, i);
        b.a(parcel, 7, getServiceRequest.g);
        b.a(parcel, 8, getServiceRequest.h, i);
        b.a(parcel, 9, getServiceRequest.i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        long j = 0;
        Account account = null;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
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
                    str = a.k(parcel, readInt);
                    break;
                case 5:
                    iBinder = a.l(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) a.b(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = a.m(parcel, readInt);
                    break;
                case 8:
                    account = (Account) a.a(parcel, readInt, Account.CREATOR);
                    break;
                case 9:
                    j = a.f(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new GetServiceRequest(i3, i2, i, str, iBinder, scopeArr, bundle, account, j);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
