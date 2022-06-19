package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztt.class */
public final class zztt extends zzdf {
    private RandomAccessFile zza;
    private Uri zzb;
    private long zzc;
    private boolean zzd;

    public zztt() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzts {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzc;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.zza;
            int i3 = zzfn.zza;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.zzc -= read;
                zzc(read);
            }
            return read;
        } catch (IOException e) {
            throw new zzts(e, AdError.SERVER_ERROR_CODE);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
        if (r0 != false) goto L38;
     */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzdm r9) throws com.google.android.gms.internal.ads.zzts {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztt.zzh(com.google.android.gms.internal.ads.zzdm):long");
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws zzts {
        this.zzb = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.zza;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.zza = null;
                if (!this.zzd) {
                    return;
                }
                this.zzd = false;
                zzd();
            } catch (IOException e) {
                throw new zzts(e, AdError.SERVER_ERROR_CODE);
            }
        } catch (Throwable th) {
            this.zza = null;
            if (this.zzd) {
                this.zzd = false;
                zzd();
            }
            throw th;
        }
    }
}
