package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvs.class */
public class zzvs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvs> CREATOR = new zzvr();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzacy;
    public final boolean zzbrr;
    public final boolean zzcig;
    public final zzvs[] zzcih;
    public final boolean zzcii;
    public boolean zzcij;
    public boolean zzcik;
    private boolean zzcil;
    public boolean zzcim;
    public boolean zzcin;

    public zzvs() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public zzvs(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzvs(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvs.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    public zzvs(String str, int i, int i2, boolean z, int i3, int i4, zzvs[] zzvsVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        this.zzacy = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzcig = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzcih = zzvsVarArr;
        this.zzbrr = z2;
        this.zzcii = z3;
        this.zzcij = z4;
        this.zzcik = z5;
        this.zzcil = z6;
        this.zzcim = z7;
        this.zzcin = z8;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzc(DisplayMetrics displayMetrics) {
        return (int) (zzd(displayMetrics) * displayMetrics.density);
    }

    private static int zzd(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public static zzvs zzqe() {
        return new zzvs("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false);
    }

    public static zzvs zzqf() {
        return new zzvs("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false);
    }

    public static zzvs zzqg() {
        return new zzvs("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false);
    }

    public static zzvs zzqh() {
        return new zzvs("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzacy, false);
        SafeParcelWriter.writeInt(parcel, 3, this.height);
        SafeParcelWriter.writeInt(parcel, 4, this.heightPixels);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzcig);
        SafeParcelWriter.writeInt(parcel, 6, this.width);
        SafeParcelWriter.writeInt(parcel, 7, this.widthPixels);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzcih, i, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzbrr);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzcii);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzcij);
        SafeParcelWriter.writeBoolean(parcel, 12, this.zzcik);
        SafeParcelWriter.writeBoolean(parcel, 13, this.zzcil);
        SafeParcelWriter.writeBoolean(parcel, 14, this.zzcim);
        SafeParcelWriter.writeBoolean(parcel, 15, this.zzcin);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final AdSize zzqi() {
        return zza.zza(this.width, this.height, this.zzacy);
    }
}
