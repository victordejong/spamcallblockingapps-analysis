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
        int J = SafeParcelReader.m14492J(parcel);
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
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    i2 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 3:
                    i3 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 4:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m14499C(parcel, B);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m14472r(parcel, B, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m14484f(parcel, B);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.m14476n(parcel, B, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.m14472r(parcel, B, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.m14472r(parcel, B, Feature.CREATOR);
                    break;
                case 12:
                    z = SafeParcelReader.m14468v(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
