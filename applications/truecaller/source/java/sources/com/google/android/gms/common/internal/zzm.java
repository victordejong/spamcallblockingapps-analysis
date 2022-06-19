package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzm.class */
public final class zzm implements Parcelable.Creator<GetServiceRequest> {
    /* renamed from: a */
    public static void m38819a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = getServiceRequest.f5961a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = getServiceRequest.f5962b;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        int i4 = getServiceRequest.f5963c;
        parcel.writeInt(262147);
        parcel.writeInt(i4);
        SafeParcelWriter.m38846q(parcel, 4, getServiceRequest.f5964d, false);
        SafeParcelWriter.m38854i(parcel, 5, getServiceRequest.f5965e, false);
        SafeParcelWriter.m38843t(parcel, 6, getServiceRequest.f5966f, i, false);
        SafeParcelWriter.m38860c(parcel, 7, getServiceRequest.f5967g, false);
        SafeParcelWriter.m38847p(parcel, 8, getServiceRequest.f5968h, i, false);
        SafeParcelWriter.m38843t(parcel, 10, getServiceRequest.f5969i, i, false);
        SafeParcelWriter.m38843t(parcel, 11, getServiceRequest.f5970j, i, false);
        boolean z = getServiceRequest.f5971k;
        parcel.writeInt(262156);
        parcel.writeInt(z ? 1 : 0);
        int i5 = getServiceRequest.f5972l;
        parcel.writeInt(262157);
        parcel.writeInt(i5);
        boolean z2 = getServiceRequest.f5973m;
        parcel.writeInt(262158);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 15, getServiceRequest.f5974n, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // android.os.Parcelable.Creator
    public final GetServiceRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m38876m(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case '\b':
                    account = (Account) SafeParcelReader.m38880i(parcel, readInt, Account.CREATOR);
                    break;
                case '\t':
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case '\n':
                    featureArr = (Feature[]) SafeParcelReader.m38876m(parcel, readInt, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.m38876m(parcel, readInt, Feature.CREATOR);
                    break;
                case '\f':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\r':
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 14:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 15:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
