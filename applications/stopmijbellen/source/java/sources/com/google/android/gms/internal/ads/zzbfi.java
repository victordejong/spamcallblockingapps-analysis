package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "AdSizeParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfi.class */
public final class zzbfi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbfi> CREATOR = new zzbfj();
    @SafeParcelable.Field(m4805id = 2)
    public final String zza;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzb;
    @SafeParcelable.Field(m4805id = 4)
    public final int zzc;
    @SafeParcelable.Field(m4805id = 5)
    public final boolean zzd;
    @SafeParcelable.Field(m4805id = 6)
    public final int zze;
    @SafeParcelable.Field(m4805id = 7)
    public final int zzf;
    @SafeParcelable.Field(m4805id = 8)
    public final zzbfi[] zzg;
    @SafeParcelable.Field(m4805id = 9)
    public final boolean zzh;
    @SafeParcelable.Field(m4805id = 10)
    public final boolean zzi;
    @SafeParcelable.Field(m4805id = 11)
    public boolean zzj;
    @SafeParcelable.Field(m4805id = 12)
    public boolean zzk;
    @SafeParcelable.Field(m4805id = 13)
    public boolean zzl;
    @SafeParcelable.Field(m4805id = 14)
    public boolean zzm;
    @SafeParcelable.Field(m4805id = 15)
    public boolean zzn;
    @SafeParcelable.Field(m4805id = 16)
    public boolean zzo;

    public zzbfi() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public zzbfi(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0218  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbfi(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbfi.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    @SafeParcelable.Constructor
    public zzbfi(@SafeParcelable.Param(m4804id = 2) String str, @SafeParcelable.Param(m4804id = 3) int i, @SafeParcelable.Param(m4804id = 4) int i2, @SafeParcelable.Param(m4804id = 5) boolean z, @SafeParcelable.Param(m4804id = 6) int i3, @SafeParcelable.Param(m4804id = 7) int i4, @SafeParcelable.Param(m4804id = 8) zzbfi[] zzbfiVarArr, @SafeParcelable.Param(m4804id = 9) boolean z2, @SafeParcelable.Param(m4804id = 10) boolean z3, @SafeParcelable.Param(m4804id = 11) boolean z4, @SafeParcelable.Param(m4804id = 12) boolean z5, @SafeParcelable.Param(m4804id = 13) boolean z6, @SafeParcelable.Param(m4804id = 14) boolean z7, @SafeParcelable.Param(m4804id = 15) boolean z8, @SafeParcelable.Param(m4804id = 16) boolean z9) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = zzbfiVarArr;
        this.zzh = z2;
        this.zzi = z3;
        this.zzj = z4;
        this.zzk = z5;
        this.zzl = z6;
        this.zzm = z7;
        this.zzn = z8;
        this.zzo = z9;
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return (int) (zzf(displayMetrics) * displayMetrics.density);
    }

    public static zzbfi zzb() {
        return new zzbfi("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static zzbfi zzc() {
        return new zzbfi("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    public static zzbfi zzd() {
        return new zzbfi("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static zzbfi zze() {
        return new zzbfi("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
    }

    private static int zzf(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeInt(parcel, 6, this.zze);
        SafeParcelWriter.writeInt(parcel, 7, this.zzf);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzh);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzi);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzj);
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzk);
        SafeParcelWriter.writeBoolean(parcel, 13, this.zzl);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzm);
        SafeParcelWriter.writeBoolean(parcel, 15, this.zzn);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzo);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
