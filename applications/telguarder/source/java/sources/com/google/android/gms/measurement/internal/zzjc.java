package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.zzlc;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjc.class */
public final class zzjc extends zzjv {
    private String zzb;
    private boolean zzc;
    private long zzd;

    public zzjc(zzkd zzkdVar) {
        super(zzkdVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    protected final boolean zzaz() {
        return false;
    }

    public final Pair<String, Boolean> zzc(String str, zzaf zzafVar) {
        zzlc.zzb();
        return (!this.zzx.zzc().zzn(null, zzdw.zzay) || zzafVar.zzf()) ? zzd(str) : new Pair<>("", false);
    }

    @Deprecated
    final Pair<String, Boolean> zzd(String str) {
        zzg();
        long elapsedRealtime = this.zzx.zzax().elapsedRealtime();
        String str2 = this.zzb;
        if (str2 == null || elapsedRealtime >= this.zzd) {
            this.zzd = elapsedRealtime + this.zzx.zzc().zzj(str, zzdw.zza);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzx.zzaw());
                if (advertisingIdInfo != null) {
                    this.zzb = advertisingIdInfo.getId();
                    this.zzc = advertisingIdInfo.isLimitAdTrackingEnabled();
                }
                if (this.zzb == null) {
                    this.zzb = "";
                }
            } catch (Exception e) {
                this.zzx.zzat().zzj().zzb("Unable to get advertising id", e);
                this.zzb = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.zzb, Boolean.valueOf(this.zzc));
        }
        return new Pair<>(str2, Boolean.valueOf(this.zzc));
    }

    @Deprecated
    public final String zzf(String str) {
        zzg();
        String str2 = (String) zzd(str).first;
        MessageDigest zzN = zzkk.zzN();
        if (zzN == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzN.digest(str2.getBytes())));
    }
}
