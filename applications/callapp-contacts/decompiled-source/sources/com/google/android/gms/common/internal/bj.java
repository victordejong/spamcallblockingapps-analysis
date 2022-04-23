package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bj.class */
public final class bj implements Parcelable.Creator<GetServiceRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getServiceRequest.zza);
        a.a(parcel, 2, getServiceRequest.zzb);
        a.a(parcel, 3, getServiceRequest.zzc);
        a.a(parcel, 4, getServiceRequest.zzd, false);
        a.a(parcel, 5, getServiceRequest.zze);
        a.a(parcel, 6, getServiceRequest.zzf, i);
        a.a(parcel, 7, getServiceRequest.zzg, false);
        a.a(parcel, 8, getServiceRequest.zzh, i, false);
        a.a(parcel, 10, getServiceRequest.zzi, i);
        a.a(parcel, 11, getServiceRequest.zzj, i);
        a.a(parcel, 12, getServiceRequest.zzk);
        a.a(parcel, 13, getServiceRequest.zzl);
        a.a(parcel, 14, getServiceRequest.zzm);
        a.a(parcel, 15, getServiceRequest.zza(), false);
        a.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
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
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 5:
                    iBinder = SafeParcelReader.n(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.b(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.o(parcel, readInt);
                    break;
                case '\b':
                    account = (Account) SafeParcelReader.a(parcel, readInt, Account.CREATOR);
                    break;
                case '\t':
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
                case '\n':
                    featureArr = (Feature[]) SafeParcelReader.b(parcel, readInt, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.b(parcel, readInt, Feature.CREATOR);
                    break;
                case '\f':
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\r':
                    i4 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 14:
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 15:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
