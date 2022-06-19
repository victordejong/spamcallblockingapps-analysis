package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.ads.AdError;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkm.class */
public final class zzkm extends zzag {
    private final ContentResolver zza;
    private Uri zzb;
    private AssetFileDescriptor zzc;
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzkm(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws zzkl {
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
                throw new zzkl(e, 2000);
            }
        }
        FileInputStream fileInputStream = this.zzd;
        int i4 = zzamq.zza;
        int read = fileInputStream.read(bArr, i, i3);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzd(read);
        return read;
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaj
    public final long zzh(zzan zzanVar) throws zzkl {
        IOException e;
        AssetFileDescriptor assetFileDescriptor;
        char c;
        try {
            try {
                Uri uri = zzanVar.zza;
                this.zzb = uri;
                zzb(zzanVar);
                if ("content".equals(zzanVar.zza.getScheme())) {
                    Bundle bundle = new Bundle();
                    if (zzamq.zza >= 31) {
                        zzkk.zza(bundle);
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
                        throw new zzkl(new IOException(sb.toString()), 2000);
                    } catch (IOException e2) {
                        e = e2;
                        int i = 2000;
                        if (true == (e instanceof FileNotFoundException)) {
                            i = 2005;
                        }
                        throw new zzkl(e, i);
                    }
                }
                long length = assetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(assetFileDescriptor.getFileDescriptor());
                this.zzd = fileInputStream;
                int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i2 != 0 && zzanVar.zzf > length) {
                    throw new zzkl(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                }
                long startOffset = assetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(zzanVar.zzf + startOffset) - startOffset;
                if (skip != zzanVar.zzf) {
                    throw new zzkl(null, AdError.REMOTE_ADS_SERVICE_ERROR);
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
                            throw new zzkl(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                        }
                    }
                } else {
                    c = length - skip;
                    this.zze = c;
                    if (c < 0) {
                        throw new zzkl(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                    }
                }
                ?? r0 = zzanVar.zzg;
                if (r0 != -1) {
                    char c2 = r0;
                    if (c != -1) {
                        c2 = Math.min((long) c, (long) r0);
                    }
                    this.zze = c2;
                }
                this.zzf = true;
                zzc(zzanVar);
                long j = zzanVar.zzg;
                return j != -1 ? j : this.zze;
            } catch (zzkl e3) {
                throw e3;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws zzkl {
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
                        zze();
                    } catch (IOException e) {
                        throw new zzkl(e, 2000);
                    }
                } finally {
                    this.zzc = null;
                    if (this.zzf) {
                        this.zzf = false;
                        zze();
                    }
                }
            } catch (IOException e2) {
                throw new zzkl(e2, 2000);
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
                        zze();
                    }
                    throw th2;
                }
            } catch (IOException e3) {
                throw new zzkl(e3, 2000);
            }
        }
    }
}
