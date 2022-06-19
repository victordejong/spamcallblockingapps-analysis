package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.C1592a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d0.class */
public final class C1574d0 implements Parcelable.Creator<GetServiceRequest> {
    /* renamed from: a */
    static void m8367a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int m8302a = C1592a.m8302a(parcel);
        C1592a.m8292k(parcel, 1, getServiceRequest.b);
        C1592a.m8292k(parcel, 2, getServiceRequest.c);
        C1592a.m8292k(parcel, 3, getServiceRequest.d);
        C1592a.m8286q(parcel, 4, getServiceRequest.e, false);
        C1592a.m8293j(parcel, 5, getServiceRequest.f, false);
        C1592a.m8283t(parcel, 6, getServiceRequest.g, i, false);
        C1592a.m8298e(parcel, 7, getServiceRequest.h, false);
        C1592a.m8287p(parcel, 8, getServiceRequest.i, i, false);
        C1592a.m8283t(parcel, 10, getServiceRequest.j, i, false);
        C1592a.m8283t(parcel, 11, getServiceRequest.k, i, false);
        C1592a.m8300c(parcel, 12, getServiceRequest.l);
        C1592a.m8292k(parcel, 13, getServiceRequest.m);
        C1592a.m8300c(parcel, 14, getServiceRequest.n);
        C1592a.m8286q(parcel, 15, getServiceRequest.a(), false);
        C1592a.m8301b(parcel, m8302a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
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
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 2:
                    i2 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 3:
                    i3 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 4:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m8311r(parcel, m8312q);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m8320i(parcel, m8312q, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.m8324e(parcel, m8312q, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.m8320i(parcel, m8312q, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.m8320i(parcel, m8312q, Feature.CREATOR);
                    break;
                case 12:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 13:
                    i4 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 14:
                    z2 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 15:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
