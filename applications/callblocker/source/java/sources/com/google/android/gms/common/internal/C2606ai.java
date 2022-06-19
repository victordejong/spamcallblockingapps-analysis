package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.ai */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ai.class */
public final class C2606ai implements Parcelable.Creator<C2641g> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2641g createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        C2587d[] c2587dArr = null;
        C2587d[] c2587dArr2 = null;
        boolean z = false;
        int i4 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m13962b(parcel, m13969a, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.m13965a(parcel, m13969a, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 10:
                    c2587dArr = (C2587d[]) SafeParcelReader.m13962b(parcel, m13969a, C2587d.CREATOR);
                    break;
                case 11:
                    c2587dArr2 = (C2587d[]) SafeParcelReader.m13962b(parcel, m13969a, C2587d.CREATOR);
                    break;
                case 12:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 13:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2641g(i, i2, i3, str, iBinder, scopeArr, bundle, account, c2587dArr, c2587dArr2, z, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2641g[] newArray(int i) {
        return new C2641g[i];
    }
}
