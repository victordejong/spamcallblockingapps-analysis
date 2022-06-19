package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.ads.AdError;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzti.class */
public final class zzti extends zzdf {
    private final ContentResolver zza;
    private Uri zzb;
    private AssetFileDescriptor zzc;
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzti(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzdg
    public final int zzg(byte[] bArr, int i, int i2) throws zzth {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j == 0) {
            return -1;
        }
        int i3 = i2;
        if (j != -1) {
            try {
                i3 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzth(e, AdError.SERVER_ERROR_CODE);
            }
        }
        FileInputStream fileInputStream = this.zzd;
        int i4 = zzfn.zza;
        int read = fileInputStream.read(bArr, i, i3);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzc(read);
        return read;
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws zzth {
        IOException e;
        AssetFileDescriptor assetFileDescriptor;
        char c;
        try {
            try {
                Uri uri = zzdmVar.zza;
                this.zzb = uri;
                zze(zzdmVar);
                if (AppLovinEventTypes.USER_VIEWED_CONTENT.equals(zzdmVar.zza.getScheme())) {
                    Bundle bundle = new Bundle();
                    if (zzfn.zza >= 31) {
                        zztg.zza(bundle);
                    }
                    assetFileDescriptor = this.zza.openTypedAssetFileDescriptor(uri, "*/*", bundle);
                } else {
                    assetFileDescriptor = this.zza.openAssetFileDescriptor(uri, "r");
                }
                this.zzc = assetFileDescriptor;
                if (assetFileDescriptor == null) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 36);
                    sb.append("Could not open file descriptor for: ");
                    sb.append(valueOf);
                    try {
                        throw new zzth(new IOException(sb.toString()), AdError.SERVER_ERROR_CODE);
                    } catch (IOException e2) {
                        e = e2;
                        int i = 2000;
                        if (true == (e instanceof FileNotFoundException)) {
                            i = 2005;
                        }
                        throw new zzth(e, i);
                    }
                }
                long length = assetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptor.getFileDescriptor());
                this.zzd = fileInputStream;
                int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i2 != 0 && zzdmVar.zzf > length) {
                    throw new zzth(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                }
                long startOffset = assetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(zzdmVar.zzf + startOffset) - startOffset;
                if (skip != zzdmVar.zzf) {
                    throw new zzth(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                }
                if (i2 == 0) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.zze = -1L;
                        c = 65535;
                    } else {
                        c = size - channel.position();
                        this.zze = c;
                        if (c < 0) {
                            throw new zzth(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                        }
                    }
                } else {
                    c = length - skip;
                    this.zze = c;
                    if (c < 0) {
                        throw new zzth(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                    }
                }
                ?? r0 = zzdmVar.zzg;
                if (r0 != -1) {
                    char c2 = r0;
                    if (c != -1) {
                        c2 = Math.min((long) c, (long) r0);
                    }
                    this.zze = c2;
                }
                this.zzf = true;
                zzf(zzdmVar);
                long j = zzdmVar.zzg;
                return j != -1 ? j : this.zze;
            } catch (IOException e3) {
                e = e3;
            }
        } catch (zzth e4) {
            throw e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws zzth {
        this.zzb = null;
        try {
            try {
                FileInputStream fileInputStream = this.zzd;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.zzd = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.zzc;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.zzc = null;
                        if (!this.zzf) {
                            return;
                        }
                        this.zzf = false;
                        zzd();
                    } catch (IOException e) {
                        throw new zzth(e, AdError.SERVER_ERROR_CODE);
                    }
                } finally {
                    this.zzc = null;
                    if (this.zzf) {
                        this.zzf = false;
                        zzd();
                    }
                }
            } catch (IOException e2) {
                throw new zzth(e2, AdError.SERVER_ERROR_CODE);
            }
        } catch (Throwable th) {
            this.zzd = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.zzc;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    throw th;
                } catch (Throwable th2) {
                    this.zzc = null;
                    if (this.zzf) {
                        this.zzf = false;
                        zzd();
                    }
                    throw th2;
                }
            } catch (IOException e3) {
                throw new zzth(e3, AdError.SERVER_ERROR_CODE);
            }
        }
    }
}
