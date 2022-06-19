package com.google.android.gms.internal.ads;

import com.amazon.device.ads.DtbConstants;
import com.mopub.mobileads.AdData;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaea.class */
public final class zzaea implements zzafy {
    private final zzko zza;
    private boolean zzh;
    private final long zzb = zzadx.zzb(50000);
    private final long zzc = zzadx.zzb(50000);
    private final long zzd = zzadx.zzb(2500);
    private final long zze = zzadx.zzb(5000);
    private int zzg = 13107200;
    private final long zzf = zzadx.zzb(0);

    public zzaea() {
        zzko zzkoVar = new zzko(true, 65536);
        zzk(2500, 0, "bufferForPlaybackMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        zzk(AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, 0, "bufferForPlaybackAfterRebufferMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        zzk(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        zzk(50000, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzk(50000, 50000, "maxBufferMs", "minBufferMs");
        zzk(0, 0, "backBufferDurationMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        this.zza = zzkoVar;
    }

    private final void zzj(boolean z) {
        this.zzg = 13107200;
        this.zzh = false;
        if (z) {
            this.zza.zza();
        }
    }

    private static void zzk(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 21);
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        zzakt.zzb(z, sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zza() {
        zzj(false);
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zzb() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zzc() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final long zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final boolean zze() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzafy
    public final boolean zzf(long j, long j2, float f) {
        int zzg = this.zza.zzg();
        int i = this.zzg;
        ?? r0 = this.zzb;
        char c = r0;
        if (f > 1.0f) {
            c = Math.min(zzamq.zzJ(r0, f), this.zzc);
        }
        boolean z = false;
        if (j2 < Math.max((long) c, 500000L)) {
            if (zzg < i) {
                z = true;
            }
            this.zzh = z;
            if (!z) {
            }
        } else if (j2 >= this.zzc || zzg >= i) {
            this.zzh = false;
        }
        return this.zzh;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzafy
    public final boolean zzg(long j, float f, boolean z, long j2) {
        long zzK = zzamq.zzK(j, f);
        char c = z ? this.zze : this.zzd;
        char c2 = c;
        if (j2 != -9223372036854775807L) {
            c2 = Math.min(j2 / 2, (long) c);
        }
        return c2 <= 0 || zzK >= c2 || this.zza.zzg() >= this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final zzko zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zzi(zzahv[] zzahvVarArr, zzs zzsVar, zzjg[] zzjgVarArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= 2) {
                int max = Math.max(13107200, i3);
                this.zzg = max;
                this.zza.zzb(max);
                return;
            }
            int i4 = i3;
            if (zzjgVarArr[i] != null) {
                int i5 = 13107200;
                if (zzahvVarArr[i].zzac() != 1) {
                    i5 = 131072000;
                }
                i4 = i3 + i5;
            }
            i++;
            i2 = i4;
        }
    }
}
