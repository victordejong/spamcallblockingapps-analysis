package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcj.class */
public final class zzfcj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfcj> CREATOR = new zzfck();
    public final Context zza;
    public final zzfcg zzb;
    @SafeParcelable.Field
    public final int zzc;
    @SafeParcelable.Field
    public final int zzd;
    @SafeParcelable.Field
    public final int zze;
    @SafeParcelable.Field
    public final String zzf;
    public final int zzg;
    private final zzfcg[] zzh;
    @SafeParcelable.Field
    private final int zzi;
    @SafeParcelable.Field
    private final int zzj;
    @SafeParcelable.Field
    private final int zzk;
    private final int[] zzl;
    private final int[] zzm;

    @SafeParcelable.Constructor
    public zzfcj(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) int i5, @SafeParcelable.Param(id = 7) int i6) {
        zzfcg[] values = zzfcg.values();
        this.zzh = values;
        int[] zza = zzfch.zza();
        this.zzl = zza;
        int[] zza2 = zzfci.zza();
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

    private zzfcj(Context context, zzfcg zzfcgVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.zzh = zzfcg.values();
        this.zzl = zzfch.zza();
        this.zzm = zzfci.zza();
        this.zza = context;
        this.zzi = zzfcgVar.ordinal();
        this.zzb = zzfcgVar;
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

    public static zzfcj zza(zzfcg zzfcgVar, Context context) {
        if (zzfcgVar == zzfcg.Rewarded) {
            return new zzfcj(context, zzfcgVar, ((Integer) zzbet.zzc().zzc(zzbjl.zzeH)).intValue(), ((Integer) zzbet.zzc().zzc(zzbjl.zzeN)).intValue(), ((Integer) zzbet.zzc().zzc(zzbjl.zzeP)).intValue(), (String) zzbet.zzc().zzc(zzbjl.zzeR), (String) zzbet.zzc().zzc(zzbjl.zzeJ), (String) zzbet.zzc().zzc(zzbjl.zzeL));
        } else if (zzfcgVar == zzfcg.Interstitial) {
            return new zzfcj(context, zzfcgVar, ((Integer) zzbet.zzc().zzc(zzbjl.zzeI)).intValue(), ((Integer) zzbet.zzc().zzc(zzbjl.zzeO)).intValue(), ((Integer) zzbet.zzc().zzc(zzbjl.zzeQ)).intValue(), (String) zzbet.zzc().zzc(zzbjl.zzeS), (String) zzbet.zzc().zzc(zzbjl.zzeK), (String) zzbet.zzc().zzc(zzbjl.zzeM));
        } else if (zzfcgVar != zzfcg.AppOpen) {
            return null;
        } else {
            return new zzfcj(context, zzfcgVar, ((Integer) zzbet.zzc().zzc(zzbjl.zzeV)).intValue(), ((Integer) zzbet.zzc().zzc(zzbjl.zzeX)).intValue(), ((Integer) zzbet.zzc().zzc(zzbjl.zzeY)).intValue(), (String) zzbet.zzc().zzc(zzbjl.zzeT), (String) zzbet.zzc().zzc(zzbjl.zzeU), (String) zzbet.zzc().zzc(zzbjl.zzeW));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zzi;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.zzc;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        int i4 = this.zzd;
        parcel.writeInt(262147);
        parcel.writeInt(i4);
        int i5 = this.zze;
        parcel.writeInt(262148);
        parcel.writeInt(i5);
        SafeParcelWriter.m38846q(parcel, 5, this.zzf, false);
        int i6 = this.zzj;
        parcel.writeInt(262150);
        parcel.writeInt(i6);
        int i7 = this.zzk;
        parcel.writeInt(262151);
        parcel.writeInt(i7);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
