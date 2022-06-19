package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import com.facebook.ads.AdError;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuf.class */
public final class zzuf extends zzdf {
    private final Resources zza;
    private final String zzb;
    private Uri zzc;
    private AssetFileDescriptor zzd;
    private InputStream zze;
    private long zzf;
    private boolean zzg;

    public zzuf(Context context) {
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

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzue {
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
                throw new zzue(null, e, AdError.SERVER_ERROR_CODE);
            }
        }
        InputStream inputStream = this.zze;
        int i4 = zzfn.zza;
        int read = inputStream.read(bArr, i, i3);
        if (read == -1) {
            if (this.zzf != -1) {
                throw new zzue("End of stream reached having not read sufficient data.", new EOFException(), AdError.SERVER_ERROR_CODE);
            }
            return -1;
        }
        long j2 = this.zzf;
        if (j2 != -1) {
            this.zzf = j2 - read;
        }
        zzc(read);
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0.matches("\\d+") != false) goto L94;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0252  */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh(com.google.android.gms.internal.ads.zzdm r7) throws com.google.android.gms.internal.ads.zzue {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuf.zzh(com.google.android.gms.internal.ads.zzdm):long");
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws zzue {
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
                        zzd();
                    } catch (IOException e) {
                        throw new zzue(null, e, AdError.SERVER_ERROR_CODE);
                    }
                } finally {
                    this.zzd = null;
                    if (this.zzg) {
                        this.zzg = false;
                        zzd();
                    }
                }
            } catch (IOException e2) {
                throw new zzue(null, e2, AdError.SERVER_ERROR_CODE);
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
                    throw new zzue(null, e3, AdError.SERVER_ERROR_CODE);
                }
            } catch (Throwable th2) {
                this.zzd = null;
                if (this.zzg) {
                    this.zzg = false;
                    zzd();
                }
                throw th2;
            }
        }
    }
}
