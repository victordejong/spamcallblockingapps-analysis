package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.facebook.ads.AdError;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkd.class */
public final class zzkd extends zzag {
    private final AssetManager zza;
    private Uri zzb;
    private InputStream zzc;
    private long zzd;
    private boolean zze;

    public zzkd(Context context) {
        super(false);
        this.zza = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws zzkc {
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
                throw new zzkc(e, 2000);
            }
        }
        InputStream inputStream = this.zzc;
        int i4 = zzamq.zza;
        int read = inputStream.read(bArr, i, i3);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zzd;
        if (j2 != -1) {
            this.zzd = j2 - read;
        }
        zzd(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final long zzh(zzan zzanVar) throws zzkc {
        String str;
        try {
            Uri uri = zzanVar.zza;
            this.zzb = uri;
            String path = uri.getPath();
            Objects.requireNonNull(path);
            if (path.startsWith("/android_asset/")) {
                str = path.substring(15);
            } else {
                str = path;
                if (path.startsWith(StringConstant.SLASH)) {
                    str = path.substring(1);
                }
            }
            zzb(zzanVar);
            InputStream open = this.zza.open(str, 1);
            this.zzc = open;
            if (open.skip(zzanVar.zzf) < zzanVar.zzf) {
                throw new zzkc(null, AdError.REMOTE_ADS_SERVICE_ERROR);
            }
            long j = zzanVar.zzg;
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
            zzc(zzanVar);
            return this.zzd;
        } catch (zzkc e) {
            throw e;
        } catch (IOException e2) {
            throw new zzkc(e2, true != (e2 instanceof FileNotFoundException) ? 2000 : 2005);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws zzkc {
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
                zze();
            } catch (IOException e) {
                throw new zzkc(e, 2000);
            }
        } catch (Throwable th) {
            this.zzc = null;
            if (this.zze) {
                this.zze = false;
                zze();
            }
            throw th;
        }
    }
}
