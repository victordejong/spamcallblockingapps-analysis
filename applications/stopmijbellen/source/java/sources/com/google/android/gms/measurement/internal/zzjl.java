package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjl.class */
public final class zzjl extends zzke {
    public final zzey zza;
    public final zzey zzb;
    public final zzey zzc;
    public final zzey zzd;
    public final zzey zze;
    private String zzg;
    private boolean zzh;
    private long zzi;

    public zzjl(zzkn zzknVar) {
        super(zzknVar);
        zzfb zzd = this.zzs.zzd();
        Objects.requireNonNull(zzd);
        this.zza = new zzey(zzd, "last_delete_stale", 0L);
        zzfb zzd2 = this.zzs.zzd();
        Objects.requireNonNull(zzd2);
        this.zzb = new zzey(zzd2, "backoff", 0L);
        zzfb zzd3 = this.zzs.zzd();
        Objects.requireNonNull(zzd3);
        this.zzc = new zzey(zzd3, "last_upload", 0L);
        zzfb zzd4 = this.zzs.zzd();
        Objects.requireNonNull(zzd4);
        this.zzd = new zzey(zzd4, "last_upload_attempt", 0L);
        zzfb zzd5 = this.zzs.zzd();
        Objects.requireNonNull(zzd5);
        this.zze = new zzey(zzd5, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.zzke
    public final boolean zzaA() {
        return false;
    }

    public final Pair<String, Boolean> zzc(String str, zzaf zzafVar) {
        return zzafVar.zzf() ? zzd(str) : new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    public final Pair<String, Boolean> zzd(String str) {
        zzg();
        long elapsedRealtime = this.zzs.zzay().elapsedRealtime();
        String str2 = this.zzg;
        if (str2 == null || elapsedRealtime >= this.zzi) {
            this.zzi = this.zzs.zzc().zzj(str, zzea.zza) + elapsedRealtime;
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzax());
                this.zzg = "";
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    this.zzg = id;
                }
                this.zzh = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                this.zzs.zzau().zzj().zzb("Unable to get advertising id", e);
                this.zzg = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzg, Boolean.valueOf(this.zzh));
        }
        return new Pair<>(str2, Boolean.valueOf(this.zzh));
    }

    @Deprecated
    public final String zzf(String str) {
        zzg();
        String str2 = (String) zzd(str).first;
        MessageDigest zzN = zzku.zzN();
        if (zzN == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzN.digest(str2.getBytes())));
    }
}
