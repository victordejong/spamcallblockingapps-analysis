package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.j1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j1.class */
public final class C6140j1 implements Parcelable.Creator<GetServiceRequest> {
    /* renamed from: a */
    public static void m17052a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, getServiceRequest.f19456d);
        C6170a.m16937k(parcel, 2, getServiceRequest.f19457e);
        C6170a.m16937k(parcel, 3, getServiceRequest.f19458f);
        C6170a.m16930r(parcel, 4, getServiceRequest.f19459g, false);
        C6170a.m16938j(parcel, 5, getServiceRequest.f19460h, false);
        C6170a.m16927u(parcel, 6, getServiceRequest.f19461i, i, false);
        C6170a.m16943e(parcel, 7, getServiceRequest.f19462j, false);
        C6170a.m16931q(parcel, 8, getServiceRequest.f19463k, i, false);
        C6170a.m16927u(parcel, 10, getServiceRequest.f19464l, i, false);
        C6170a.m16927u(parcel, 11, getServiceRequest.f19465m, i, false);
        C6170a.m16945c(parcel, 12, getServiceRequest.f19466n);
        C6170a.m16937k(parcel, 13, getServiceRequest.f19467o);
        C6170a.m16945c(parcel, 14, getServiceRequest.f19468p);
        C6170a.m16930r(parcel, 15, getServiceRequest.m17155k0(), false);
        C6170a.m16946b(parcel, m16947a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 3:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 4:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m16955s(parcel, m16983C, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.m16959o(parcel, m16983C, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.m16955s(parcel, m16983C, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.m16955s(parcel, m16983C, Feature.CREATOR);
                    break;
                case 12:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 13:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 14:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 15:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
