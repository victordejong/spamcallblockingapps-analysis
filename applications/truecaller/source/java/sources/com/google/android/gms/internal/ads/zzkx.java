package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkx.class */
public final class zzkx extends zzag {
    private RandomAccessFile zza;
    private Uri zzb;
    private long zzc;
    private boolean zzd;

    public zzkx() {
        super(false);
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws zzkw {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzc;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.zza;
            int i3 = zzamq.zza;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.zzc -= read;
                zzd(read);
            }
            return read;
        } catch (IOException e) {
            throw new zzkw(e, 2000);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
        if (r0 != false) goto L38;
     */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzan r9) throws com.google.android.gms.internal.ads.zzkw {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkx.zzh(com.google.android.gms.internal.ads.zzan):long");
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws zzkw {
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
                zze();
            } catch (IOException e) {
                throw new zzkw(e, 2000);
            }
        } catch (Throwable th) {
            this.zza = null;
            if (this.zzd) {
                this.zzd = false;
                zze();
            }
            throw th;
        }
    }
}
