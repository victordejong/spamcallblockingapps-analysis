package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcz.class */
public final class zzbcz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbcz> CREATOR = new zzbda();
    @SafeParcelable.Field
    public final int zza;
    @SafeParcelable.Field
    public final String zzb;
    @SafeParcelable.Field
    public final String zzc;
    @SafeParcelable.Field
    public zzbcz zzd;
    @SafeParcelable.Field
    public IBinder zze;

    @SafeParcelable.Constructor
    public zzbcz(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzbcz zzbczVar, @SafeParcelable.Param(id = 5) IBinder iBinder) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = zzbczVar;
        this.zze = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38846q(parcel, 3, this.zzc, false);
        SafeParcelWriter.m38847p(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.m38854i(parcel, 5, this.zze, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    public final AdError zza() {
        zzbcz zzbczVar = this.zzd;
        return new AdError(this.zza, this.zzb, this.zzc, zzbczVar == null ? null : new AdError(zzbczVar.zza, zzbczVar.zzb, zzbczVar.zzc));
    }

    public final LoadAdError zzb() {
        zzbcz zzbczVar = this.zzd;
        zzbgx zzbgxVar = null;
        AdError adError = zzbczVar == null ? null : new AdError(zzbczVar.zza, zzbczVar.zzb, zzbczVar.zzc);
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        IBinder iBinder = this.zze;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzbgxVar = queryLocalInterface instanceof zzbgz ? (zzbgz) queryLocalInterface : new zzbgx(iBinder);
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.zzb(zzbgxVar));
    }
}
