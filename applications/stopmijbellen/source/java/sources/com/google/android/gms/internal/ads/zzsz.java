package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.facebook.ads.AdError;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsz.class */
public final class zzsz extends zzdf {
    private final AssetManager zza;
    private Uri zzb;
    private InputStream zzc;
    private long zzd;
    private boolean zze;

    public zzsz(Context context) {
        super(false);
        this.zza = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzsy {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzd;
        if (j == 0) {
            return -1;
        }
        int i3 = i2;
        if (j != -1) {
            try {
                i3 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzsy(e, AdError.SERVER_ERROR_CODE);
            }
        }
        InputStream inputStream = this.zzc;
        int i4 = zzfn.zza;
        int read = inputStream.read(bArr, i, i3);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zzd;
        if (j2 != -1) {
            this.zzd = j2 - read;
        }
        zzc(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws zzsy {
        String str;
        try {
            Uri uri = zzdmVar.zza;
            this.zzb = uri;
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/android_asset/")) {
                str = path.substring(15);
            } else {
                str = path;
                if (path.startsWith("/")) {
                    str = path.substring(1);
                }
            }
            zze(zzdmVar);
            InputStream open = this.zza.open(str, 1);
            this.zzc = open;
            if (open.skip(zzdmVar.zzf) < zzdmVar.zzf) {
                throw new zzsy(null, AdError.REMOTE_ADS_SERVICE_ERROR);
            }
            long j = zzdmVar.zzg;
            if (j != -1) {
                this.zzd = j;
            } else {
                long available = this.zzc.available();
                this.zzd = available;
                if (available == 2147483647L) {
                    this.zzd = -1L;
                }
            }
            this.zze = true;
            zzf(zzdmVar);
            return this.zzd;
        } catch (zzsy e) {
            throw e;
        } catch (IOException e2) {
            throw new zzsy(e2, true != (e2 instanceof FileNotFoundException) ? 2000 : 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws zzsy {
        this.zzb = null;
        try {
            try {
                InputStream inputStream = this.zzc;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.zzc = null;
                if (!this.zze) {
                    return;
                }
                this.zze = false;
                zzd();
            } catch (IOException e) {
                throw new zzsy(e, AdError.SERVER_ERROR_CODE);
            }
        } catch (Throwable th) {
            this.zzc = null;
            if (this.zze) {
                this.zze = false;
                zzd();
            }
            throw th;
        }
    }
}
