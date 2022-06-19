package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlj.class */
public final class zzlj extends zzag {
    private final Resources zza;
    private final String zzb;
    private Uri zzc;
    private AssetFileDescriptor zzd;
    private InputStream zze;
    private long zzf;
    private boolean zzg;

    public zzlj(Context context) {
        super(false);
        this.zza = context.getResources();
        this.zzb = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("rawresource:///");
        sb.append(i);
        return Uri.parse(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws zzli {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zzf;
        if (j == 0) {
            return -1;
        }
        int i3 = i2;
        if (j != -1) {
            try {
                i3 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzli(null, e, 2000);
            }
        }
        InputStream inputStream = this.zze;
        int i4 = zzamq.zza;
        int read = inputStream.read(bArr, i, i3);
        if (read == -1) {
            if (this.zzf != -1) {
                throw new zzli("End of stream reached having not read sufficient data.", new EOFException(), 2000);
            }
            return -1;
        }
        long j2 = this.zzf;
        if (j2 != -1) {
            this.zzf = j2 - read;
        }
        zzd(read);
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0.matches("\\d+") != false) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0252  */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzan r7) throws com.google.android.gms.internal.ads.zzli {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlj.zzh(com.google.android.gms.internal.ads.zzan):long");
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws zzli {
        this.zzc = null;
        try {
            try {
                InputStream inputStream = this.zze;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.zze = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.zzd;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.zzd = null;
                        if (!this.zzg) {
                            return;
                        }
                        this.zzg = false;
                        zze();
                    } catch (IOException e) {
                        throw new zzli(null, e, 2000);
                    }
                } finally {
                    this.zzd = null;
                    if (this.zzg) {
                        this.zzg = false;
                        zze();
                    }
                }
            } catch (IOException e2) {
                throw new zzli(null, e2, 2000);
            }
        } catch (Throwable th) {
            this.zze = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.zzd;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new zzli(null, e3, 2000);
                }
            } catch (Throwable th2) {
                this.zzd = null;
                if (this.zzg) {
                    this.zzg = false;
                    zze();
                }
                throw th2;
            }
        }
    }
}
