package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.bj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bj.class */
public final class C12011bj implements Parcelable.Creator<GetServiceRequest> {
    /* renamed from: a */
    public static void m19206a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, getServiceRequest.zza);
        C12050a.m19112a(parcel, 2, getServiceRequest.zzb);
        C12050a.m19112a(parcel, 3, getServiceRequest.zzc);
        C12050a.m19104a(parcel, 4, getServiceRequest.zzd, false);
        C12050a.m19109a(parcel, 5, getServiceRequest.zze);
        C12050a.m19098a(parcel, 6, getServiceRequest.zzf, i);
        C12050a.m19110a(parcel, 7, getServiceRequest.zzg, false);
        C12050a.m19107a(parcel, 8, getServiceRequest.zzh, i, false);
        C12050a.m19098a(parcel, 10, getServiceRequest.zzi, i);
        C12050a.m19098a(parcel, 11, getServiceRequest.zzj, i);
        C12050a.m19101a(parcel, 12, getServiceRequest.zzk);
        C12050a.m19112a(parcel, 13, getServiceRequest.zzl);
        C12050a.m19101a(parcel, 14, getServiceRequest.zzm);
        C12050a.m19104a(parcel, 15, getServiceRequest.zza(), false);
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
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
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.m19140b(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '\b':
                    account = (Account) SafeParcelReader.m19143a(parcel, readInt, Account.CREATOR);
                    break;
                case '\t':
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
                case '\n':
                    featureArr = (Feature[]) SafeParcelReader.m19140b(parcel, readInt, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.m19140b(parcel, readInt, Feature.CREATOR);
                    break;
                case '\f':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\r':
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 14:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 15:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
