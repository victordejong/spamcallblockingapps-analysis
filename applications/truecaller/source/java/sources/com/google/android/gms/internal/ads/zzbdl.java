package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdl.class */
public final class zzbdl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdl> CREATOR = new zzbdm();
    @SafeParcelable.Field
    public final String zza;
    @SafeParcelable.Field
    public final int zzb;
    @SafeParcelable.Field
    public final int zzc;
    @SafeParcelable.Field
    public final boolean zzd;
    @SafeParcelable.Field
    public final int zze;
    @SafeParcelable.Field
    public final int zzf;
    @SafeParcelable.Field
    public final zzbdl[] zzg;
    @SafeParcelable.Field
    public final boolean zzh;
    @SafeParcelable.Field
    public final boolean zzi;
    @SafeParcelable.Field
    public boolean zzj;
    @SafeParcelable.Field
    public boolean zzk;
    @SafeParcelable.Field
    public boolean zzl;
    @SafeParcelable.Field
    public boolean zzm;
    @SafeParcelable.Field
    public boolean zzn;
    @SafeParcelable.Field
    public boolean zzo;

    public zzbdl() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public zzbdl(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x01b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbdl(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 745
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdl.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    @SafeParcelable.Constructor
    public zzbdl(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) int i3, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) zzbdl[] zzbdlVarArr, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) boolean z3, @SafeParcelable.Param(id = 11) boolean z4, @SafeParcelable.Param(id = 12) boolean z5, @SafeParcelable.Param(id = 13) boolean z6, @SafeParcelable.Param(id = 14) boolean z7, @SafeParcelable.Param(id = 15) boolean z8, @SafeParcelable.Param(id = 16) boolean z9) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = zzbdlVarArr;
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

    public static zzbdl zzb() {
        return new zzbdl("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    public static zzbdl zzc() {
        return new zzbdl("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static zzbdl zzd() {
        return new zzbdl("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static zzbdl zze() {
        return new zzbdl(UnSuspendAccountSuccessResponseDto.REASON_INVALID, 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
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
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.zza, false);
        int i2 = this.zzb;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        int i3 = this.zzc;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        boolean z = this.zzd;
        parcel.writeInt(262149);
        parcel.writeInt(z ? 1 : 0);
        int i4 = this.zze;
        parcel.writeInt(262150);
        parcel.writeInt(i4);
        int i5 = this.zzf;
        parcel.writeInt(262151);
        parcel.writeInt(i5);
        SafeParcelWriter.m38843t(parcel, 8, this.zzg, i, false);
        boolean z2 = this.zzh;
        parcel.writeInt(262153);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = this.zzi;
        parcel.writeInt(262154);
        parcel.writeInt(z3 ? 1 : 0);
        boolean z4 = this.zzj;
        parcel.writeInt(262155);
        parcel.writeInt(z4 ? 1 : 0);
        boolean z5 = this.zzk;
        parcel.writeInt(262156);
        parcel.writeInt(z5 ? 1 : 0);
        boolean z6 = this.zzl;
        parcel.writeInt(262157);
        parcel.writeInt(z6 ? 1 : 0);
        boolean z7 = this.zzm;
        parcel.writeInt(262158);
        parcel.writeInt(z7 ? 1 : 0);
        boolean z8 = this.zzn;
        parcel.writeInt(262159);
        parcel.writeInt(z8 ? 1 : 0);
        boolean z9 = this.zzo;
        parcel.writeInt(262160);
        parcel.writeInt(z9 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
