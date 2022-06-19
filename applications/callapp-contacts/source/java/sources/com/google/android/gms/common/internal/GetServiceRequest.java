package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC12036i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/GetServiceRequest.class */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new C12011bj();
    final int zza;
    final int zzb;
    int zzc;
    String zzd;
    IBinder zze;
    Scope[] zzf;
    Bundle zzg;
    Account zzh;
    Feature[] zzi;
    Feature[] zzj;
    boolean zzk;
    int zzl;
    boolean zzm;
    private final String zzn;

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4, boolean z2, String str2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        if ("com.google.android.gms".equals(str)) {
            this.zzd = "com.google.android.gms";
        } else {
            this.zzd = str;
        }
        if (i < 2) {
            this.zzh = iBinder != null ? BinderC11969a.m19229a(AbstractC12036i.AbstractBinderC12037a.m19174a(iBinder)) : null;
        } else {
            this.zze = iBinder;
            this.zzh = account;
        }
        this.zzf = scopeArr;
        this.zzg = bundle;
        this.zzi = featureArr;
        this.zzj = featureArr2;
        this.zzk = z;
        this.zzl = i4;
        this.zzm = z2;
        this.zzn = str2;
    }

    public GetServiceRequest(int i, String str) {
        this.zza = 6;
        this.zzc = C11941c.f39428b;
        this.zzb = i;
        this.zzk = true;
        this.zzn = str;
    }

    public Bundle getExtraArgs() {
        return this.zzg;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C12011bj.m19206a(this, parcel, i);
    }

    public final String zza() {
        return this.zzn;
    }
}
