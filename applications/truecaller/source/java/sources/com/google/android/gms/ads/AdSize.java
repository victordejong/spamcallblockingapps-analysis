package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzcgm;
import com.google.android.gms.internal.ads.zzcgt;
import com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto;
import io.agora.rtc.Constants;
import p193e.p1432d.p1439c.p1440a.C22128a;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdSize.class */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int zzb;
    private final int zzc;
    private final String zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;
    private boolean zzh;
    private int zzi;
    @RecentlyNonNull
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    @RecentlyNonNull
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    @RecentlyNonNull
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    @RecentlyNonNull
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    @RecentlyNonNull
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    @RecentlyNonNull
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(Constants.ERR_ALREADY_IN_RECORDING, 600, "160x600_as");
    @RecentlyNonNull
    @Deprecated
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    @RecentlyNonNull
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    @RecentlyNonNull
    public static final AdSize INVALID = new AdSize(0, 0, UnSuspendAccountSuccessResponseDto.REASON_INVALID);
    @RecentlyNonNull
    public static final AdSize zza = new AdSize(50, 50, "50x50_mb");
    @RecentlyNonNull
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSize(int r10, int r11) {
        /*
            r9 = this;
            r0 = r10
            r1 = -1
            if (r0 != r1) goto Lb
            java.lang.String r0 = "FULL"
            r12 = r0
            goto L10
        Lb:
            r0 = r10
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r12 = r0
        L10:
            r0 = r11
            r1 = -2
            if (r0 != r1) goto L1d
            java.lang.String r0 = "AUTO"
            r13 = r0
            goto L23
        L1d:
            r0 = r11
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r13 = r0
        L23:
            r0 = r9
            r1 = r10
            r2 = r11
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r4 = r3
            r5 = r12
            java.lang.String r5 = java.lang.String.valueOf(r5)
            int r5 = r5.length()
            r6 = 4
            int r5 = r5 + r6
            r6 = r13
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r6 = r6.length()
            int r5 = r5 + r6
            r4.<init>(r5)
            r4 = r12
            java.lang.String r5 = "x"
            r6 = r13
            java.lang.String r7 = "_as"
            java.lang.String r3 = p193e.p1432d.p1439c.p1440a.C22128a.m8606k(r3, r4, r5, r6, r7)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.AdSize.<init>(int, int):void");
    }

    public AdSize(int i, int i2, String str) {
        if (i >= 0 || i == -1 || i == -3) {
            if (i2 < 0 && i2 != -2 && i2 != -4) {
                throw new IllegalArgumentException(C22128a.m8690L1(38, "Invalid height for AdSize: ", i2));
            }
            this.zzb = i;
            this.zzc = i2;
            this.zzd = str;
            return;
        }
        throw new IllegalArgumentException(C22128a.m8690L1(37, "Invalid width for AdSize: ", i));
    }

    @RecentlyNonNull
    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(@RecentlyNonNull Context context, int i) {
        AdSize zzh = zzcgm.zzh(context, i, 50, 0);
        zzh.zze = true;
        return zzh;
    }

    @RecentlyNonNull
    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(@RecentlyNonNull Context context, int i) {
        int zzj = zzcgm.zzj(context, 0);
        if (zzj == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzg = zzj;
        adSize.zzf = true;
        return adSize;
    }

    @RecentlyNonNull
    public static AdSize getCurrentOrientationInterscrollerAdSize(@RecentlyNonNull Context context, int i) {
        return zzj(i, zzcgm.zzj(context, 0));
    }

    @RecentlyNonNull
    public static AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        AdSize adSize = new AdSize(i, 0);
        adSize.zzg = i2;
        adSize.zzf = true;
        if (i2 < 32) {
            StringBuilder sb = new StringBuilder((int) Constants.ERR_WATERMARK_READ);
            sb.append("The maximum height set for the inline adaptive ad size was ");
            sb.append(i2);
            sb.append(" dp, which is below the minimum recommended value of 32 dp.");
            zzcgt.zzi(sb.toString());
        }
        return adSize;
    }

    @RecentlyNonNull
    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(@RecentlyNonNull Context context, int i) {
        AdSize zzh = zzcgm.zzh(context, i, 50, 2);
        zzh.zze = true;
        return zzh;
    }

    @RecentlyNonNull
    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(@RecentlyNonNull Context context, int i) {
        int zzj = zzcgm.zzj(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (zzj == -1) {
            return INVALID;
        }
        adSize.zzg = zzj;
        adSize.zzf = true;
        return adSize;
    }

    @RecentlyNonNull
    public static AdSize getLandscapeInterscrollerAdSize(@RecentlyNonNull Context context, int i) {
        return zzj(i, zzcgm.zzj(context, 2));
    }

    @RecentlyNonNull
    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(@RecentlyNonNull Context context, int i) {
        AdSize zzh = zzcgm.zzh(context, i, 50, 1);
        zzh.zze = true;
        return zzh;
    }

    @RecentlyNonNull
    public static AdSize getPortraitInlineAdaptiveBannerAdSize(@RecentlyNonNull Context context, int i) {
        int zzj = zzcgm.zzj(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (zzj == -1) {
            return INVALID;
        }
        adSize.zzg = zzj;
        adSize.zzf = true;
        return adSize;
    }

    @RecentlyNonNull
    public static AdSize getPortraitInterscrollerAdSize(@RecentlyNonNull Context context, int i) {
        return zzj(i, zzcgm.zzj(context, 1));
    }

    private static AdSize zzj(int i, int i2) {
        if (i2 == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzi = i2;
        adSize.zzh = true;
        return adSize;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.zzb == adSize.zzb && this.zzc == adSize.zzc && this.zzd.equals(adSize.zzd);
    }

    public int getHeight() {
        return this.zzc;
    }

    public int getHeightInPixels(@RecentlyNonNull Context context) {
        int i = this.zzc;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i == -2) {
            return zzbdl.zza(context.getResources().getDisplayMetrics());
        }
        zzber.zza();
        return zzcgm.zzs(context, this.zzc);
    }

    public int getWidth() {
        return this.zzb;
    }

    public int getWidthInPixels(@RecentlyNonNull Context context) {
        int i = this.zzb;
        if (i != -3) {
            if (i != -1) {
                zzber.zza();
                return zzcgm.zzs(context, this.zzb);
            }
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Parcelable.Creator<zzbdl> creator = zzbdl.CREATOR;
            return displayMetrics.widthPixels;
        }
        return -1;
    }

    public int hashCode() {
        return this.zzd.hashCode();
    }

    public boolean isAutoHeight() {
        return this.zzc == -2;
    }

    public boolean isFluid() {
        return this.zzb == -3 && this.zzc == -4;
    }

    public boolean isFullWidth() {
        return this.zzb == -1;
    }

    @RecentlyNonNull
    public String toString() {
        return this.zzd;
    }

    public final boolean zza() {
        return this.zze;
    }

    public final boolean zzb() {
        return this.zzf;
    }

    public final void zzc(boolean z) {
        this.zzf = true;
    }

    public final void zzd(int i) {
        this.zzg = i;
    }

    public final int zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return this.zzh;
    }

    public final void zzg(boolean z) {
        this.zzh = true;
    }

    public final int zzh() {
        return this.zzi;
    }

    public final void zzi(int i) {
        this.zzi = i;
    }
}
