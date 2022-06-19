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
@SafeParcelable.Class(creator = "AdErrorParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbew.class */
public final class zzbew extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbew> CREATOR = new zzbex();
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final String zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final String zzc;
    @SafeParcelable.Field(m4805id = 4)
    public zzbew zzd;
    @SafeParcelable.Field(m4805id = 5, type = "android.os.IBinder")
    public IBinder zze;

    @SafeParcelable.Constructor
    public zzbew(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) String str2, @SafeParcelable.Param(m4804id = 4) zzbew zzbewVar, @SafeParcelable.Param(m4804id = 5) IBinder iBinder) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = zzbewVar;
        this.zze = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.writeIBinder(parcel, 5, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final AdError zza() {
        zzbew zzbewVar = this.zzd;
        return new AdError(this.zza, this.zzb, this.zzc, zzbewVar == null ? null : new AdError(zzbewVar.zza, zzbewVar.zzb, zzbewVar.zzc));
    }

    public final LoadAdError zzb() {
        zzbew zzbewVar = this.zzd;
        zzbiu zzbiuVar = null;
        AdError adError = zzbewVar == null ? null : new AdError(zzbewVar.zza, zzbewVar.zzb, zzbewVar.zzc);
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        IBinder iBinder = this.zze;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzbiuVar = queryLocalInterface instanceof zzbiw ? (zzbiw) queryLocalInterface : new zzbiu(iBinder);
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.zza(zzbiuVar));
    }
}
