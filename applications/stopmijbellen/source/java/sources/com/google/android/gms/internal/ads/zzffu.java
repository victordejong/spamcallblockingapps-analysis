package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "PoolConfigurationCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffu.class */
public final class zzffu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzffu> CREATOR = new zzffv();
    @Nullable
    public final Context zza;
    public final zzffr zzb;
    @SafeParcelable.Field(m4805id = 2)
    public final int zzc;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzd;
    @SafeParcelable.Field(m4805id = 4)
    public final int zze;
    @SafeParcelable.Field(m4805id = 5)
    public final String zzf;
    public final int zzg;
    private final zzffr[] zzh;
    @SafeParcelable.Field(getter = "getFormatInt", m4805id = 1)
    private final int zzi;
    @SafeParcelable.Field(getter = "getPoolDiscardStrategyInt", m4805id = 6)
    private final int zzj;
    @SafeParcelable.Field(getter = "getPrecacheStartTriggerInt", m4805id = 7)
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    @SafeParcelable.Constructor
    public zzffu(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) int i2, @SafeParcelable.Param(m4804id = 3) int i3, @SafeParcelable.Param(m4804id = 4) int i4, @SafeParcelable.Param(m4804id = 5) String str, @SafeParcelable.Param(m4804id = 6) int i5, @SafeParcelable.Param(m4804id = 7) int i6) {
        zzffr[] values = zzffr.values();
        this.zzh = values;
        int[] zza = zzffs.zza();
        this.zzl = zza;
        int[] zza2 = zzfft.zza();
        this.zzm = zza2;
        this.zza = null;
        this.zzi = i;
        this.zzb = values[i];
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = str;
        this.zzj = i5;
        this.zzg = zza[i5];
        this.zzk = i6;
        int i7 = zza2[i6];
    }

    private zzffu(@Nullable Context context, zzffr zzffrVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.zzh = zzffr.values();
        this.zzl = zzffs.zza();
        this.zzm = zzfft.zza();
        this.zza = context;
        this.zzi = zzffrVar.ordinal();
        this.zzb = zzffrVar;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = str;
        int i4 = 2;
        if ("oldest".equals(str2)) {
            i4 = 1;
        } else if (!"lru".equals(str2) && "lfu".equals(str2)) {
            i4 = 3;
        }
        this.zzg = i4;
        this.zzj = i4 - 1;
        "onAdClosed".equals(str3);
        this.zzk = 0;
    }

    public static zzffu zza(zzffr zzffrVar, Context context) {
        if (zzffrVar == zzffr.Rewarded) {
            return new zzffu(context, zzffrVar, ((Integer) zzbgq.zzc().zzb(zzblj.zzeO)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblj.zzeU)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblj.zzeW)).intValue(), (String) zzbgq.zzc().zzb(zzblj.zzeY), (String) zzbgq.zzc().zzb(zzblj.zzeQ), (String) zzbgq.zzc().zzb(zzblj.zzeS));
        } else if (zzffrVar == zzffr.Interstitial) {
            return new zzffu(context, zzffrVar, ((Integer) zzbgq.zzc().zzb(zzblj.zzeP)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblj.zzeV)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblj.zzeX)).intValue(), (String) zzbgq.zzc().zzb(zzblj.zzeZ), (String) zzbgq.zzc().zzb(zzblj.zzeR), (String) zzbgq.zzc().zzb(zzblj.zzeT));
        } else if (zzffrVar != zzffr.AppOpen) {
            return null;
        } else {
            return new zzffu(context, zzffrVar, ((Integer) zzbgq.zzc().zzb(zzblj.zzfc)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblj.zzfe)).intValue(), ((Integer) zzbgq.zzc().zzb(zzblj.zzff)).intValue(), (String) zzbgq.zzc().zzb(zzblj.zzfa), (String) zzbgq.zzc().zzb(zzblj.zzfb), (String) zzbgq.zzc().zzb(zzblj.zzfd));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzi);
        SafeParcelWriter.writeInt(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zzd);
        SafeParcelWriter.writeInt(parcel, 4, this.zze);
        SafeParcelWriter.writeString(parcel, 5, this.zzf, false);
        SafeParcelWriter.writeInt(parcel, 6, this.zzj);
        SafeParcelWriter.writeInt(parcel, 7, this.zzk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
