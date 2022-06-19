package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxs.class */
public final class zzxs extends zzgkj {
    private Date zza;
    private Date zzh;
    private long zzi;
    private long zzj;
    private double zzk = 1.0d;
    private float zzl = 1.0f;
    private zzgkt zzm = zzgkt.zzj;
    private long zzn;

    public zzxs() {
        super("mvhd");
    }

    public final String toString() {
        StringBuilder m8728C = C22128a.m8728C("MovieHeaderBox[creationTime=");
        m8728C.append(this.zza);
        m8728C.append(";modificationTime=");
        m8728C.append(this.zzh);
        m8728C.append(";timescale=");
        m8728C.append(this.zzi);
        m8728C.append(";duration=");
        m8728C.append(this.zzj);
        m8728C.append(";rate=");
        m8728C.append(this.zzk);
        m8728C.append(";volume=");
        m8728C.append(this.zzl);
        m8728C.append(";matrix=");
        m8728C.append(this.zzm);
        m8728C.append(";nextTrackId=");
        return C22128a.m8693K2(m8728C, this.zzn, "]");
    }

    public final long zzd() {
        return this.zzi;
    }

    public final long zze() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzgkh
    public final void zzf(ByteBuffer byteBuffer) {
        zzi(byteBuffer);
        if (zzh() == 1) {
            this.zza = zzgko.zza(zzxo.zzd(byteBuffer));
            this.zzh = zzgko.zza(zzxo.zzd(byteBuffer));
            this.zzi = zzxo.zza(byteBuffer);
            this.zzj = zzxo.zzd(byteBuffer);
        } else {
            this.zza = zzgko.zza(zzxo.zza(byteBuffer));
            this.zzh = zzgko.zza(zzxo.zza(byteBuffer));
            this.zzi = zzxo.zza(byteBuffer);
            this.zzj = zzxo.zza(byteBuffer);
        }
        this.zzk = zzxo.zze(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.zzl = ((short) ((bArr[1] & 255) | ((short) ((bArr[0] << 8) & 65280)))) / 256.0f;
        zzxo.zzb(byteBuffer);
        zzxo.zza(byteBuffer);
        zzxo.zza(byteBuffer);
        this.zzm = zzgkt.zza(byteBuffer);
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.zzn = zzxo.zza(byteBuffer);
    }
}
