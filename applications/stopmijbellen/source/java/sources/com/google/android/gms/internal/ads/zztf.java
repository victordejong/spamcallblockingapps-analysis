package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztf.class */
public final class zztf extends zzdf {
    private final byte[] zza;
    private Uri zzb;
    private int zzc;
    private int zzd;
    private boolean zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zztf(byte[] bArr) {
        super(false);
        boolean z = false;
        Objects.requireNonNull(bArr);
        zzdy.zzd(bArr.length > 0 ? true : z);
        this.zza = bArr;
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
        System.arraycopy(this.zza, this.zzc, bArr, i, min);
        this.zzc += min;
        this.zzd -= min;
        zzc(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws IOException {
        this.zzb = zzdmVar.zza;
        zze(zzdmVar);
        long j = zzdmVar.zzf;
        int length = this.zza.length;
        if (j <= length) {
            int i = (int) j;
            this.zzc = i;
            int i2 = length - i;
            this.zzd = i2;
            long j2 = zzdmVar.zzg;
            if (j2 != -1) {
                this.zzd = (int) Math.min(i2, j2);
            }
            this.zze = true;
            zzf(zzdmVar);
            long j3 = zzdmVar.zzg;
            return j3 != -1 ? j3 : this.zzd;
        }
        throw new zzdj(AdError.REMOTE_ADS_SERVICE_ERROR);
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() {
        if (this.zze) {
            this.zze = false;
            zzd();
        }
        this.zzb = null;
    }
}
