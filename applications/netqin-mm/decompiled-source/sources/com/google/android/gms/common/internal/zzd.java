package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzd.class */
public final class zzd implements Parcelable.Creator<GetServiceRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 3:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 4:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m17261b(parcel, a, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m17256f(parcel, a);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.m17264a(parcel, a, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.m17261b(parcel, a, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.m17261b(parcel, a, Feature.CREATOR);
                    break;
                case 12:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 13:
                    i4 = SafeParcelReader.m17275A(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
