package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzvt.class */
public class zzvt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvt> CREATOR = new eje();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final String zzadd;
    public boolean zzadh;
    public final boolean zzbsb;
    public final boolean zzcir;
    public final zzvt[] zzcis;
    public final boolean zzcit;
    public boolean zzciu;
    public boolean zzciv;
    private boolean zzciw;
    public boolean zzcix;
    public boolean zzciy;

    public zzvt() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public zzvt(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzvt(android.content.Context r9, com.google.android.gms.ads.AdSize[] r10) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvt.<init>(android.content.Context, com.google.android.gms.ads.AdSize[]):void");
    }

    public zzvt(String str, int i, int i2, boolean z, int i3, int i4, zzvt[] zzvtVarArr, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9) {
        this.zzadd = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzcir = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzcis = zzvtVarArr;
        this.zzbsb = z2;
        this.zzcit = z3;
        this.zzciu = z4;
        this.zzciv = z5;
        this.zzciw = z6;
        this.zzcix = z7;
        this.zzciy = z8;
        this.zzadh = z9;
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

    public static zzvt zzqk() {
        return new zzvt("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    public static zzvt zzql() {
        return new zzvt("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static zzvt zzqm() {
        return new zzvt("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static zzvt zzqn() {
        return new zzvt("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zzadd, false);
        C12050a.m19112a(parcel, 3, this.height);
        C12050a.m19112a(parcel, 4, this.heightPixels);
        C12050a.m19101a(parcel, 5, this.zzcir);
        C12050a.m19112a(parcel, 6, this.width);
        C12050a.m19112a(parcel, 7, this.widthPixels);
        C12050a.m19098a(parcel, 8, this.zzcis, i);
        C12050a.m19101a(parcel, 9, this.zzbsb);
        C12050a.m19101a(parcel, 10, this.zzcit);
        C12050a.m19101a(parcel, 11, this.zzciu);
        C12050a.m19101a(parcel, 12, this.zzciv);
        C12050a.m19101a(parcel, 13, this.zzciw);
        C12050a.m19101a(parcel, 14, this.zzcix);
        C12050a.m19101a(parcel, 15, this.zzciy);
        C12050a.m19101a(parcel, 16, this.zzadh);
        C12050a.m19095b(parcel, m19116a);
    }

    public final AdSize zzqo() {
        return zza.zza(this.width, this.height, this.zzadd);
    }
}
