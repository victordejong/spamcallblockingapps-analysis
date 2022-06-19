package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.net.URLDecoder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztj.class */
public final class zztj extends zzdf {
    private zzdm zza;
    private byte[] zzb;
    private int zzc;
    private int zzd;

    public zztj() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzd;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(zzfn.zzC(this.zzb), this.zzc, bArr, i, min);
        this.zzc += min;
        this.zzd -= min;
        zzc(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws IOException {
        zze(zzdmVar);
        this.zza = zzdmVar;
        Uri uri = zzdmVar.zza;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        String valueOf = String.valueOf(scheme);
        zzdy.zze(equals, valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        String[] zzac = zzfn.zzac(uri.getSchemeSpecificPart(), ",");
        if (zzac.length == 2) {
            String str = zzac[1];
            if (zzac[0].contains(";base64")) {
                try {
                    this.zzb = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    String valueOf2 = String.valueOf(str);
                    throw zzbj.zzb(valueOf2.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf2) : new String("Error while parsing Base64 encoded string: "), e);
                }
            } else {
                this.zzb = zzfn.zzW(URLDecoder.decode(str, zzfpt.zza.name()));
            }
            long j = zzdmVar.zzf;
            int length = this.zzb.length;
            if (j > length) {
                this.zzb = null;
                throw new zzdj(AdError.REMOTE_ADS_SERVICE_ERROR);
            }
            int i = (int) j;
            this.zzc = i;
            int i2 = length - i;
            this.zzd = i2;
            long j2 = zzdmVar.zzg;
            if (j2 != -1) {
                this.zzd = (int) Math.min(i2, j2);
            }
            zzf(zzdmVar);
            long j3 = zzdmVar.zzg;
            return j3 != -1 ? j3 : this.zzd;
        }
        throw zzbj.zzb("Unexpected URI format: ".concat(String.valueOf(uri)), null);
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        zzdm zzdmVar = this.zza;
        if (zzdmVar != null) {
            return zzdmVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() {
        if (this.zzb != null) {
            this.zzb = null;
            zzd();
        }
        this.zza = null;
    }
}
