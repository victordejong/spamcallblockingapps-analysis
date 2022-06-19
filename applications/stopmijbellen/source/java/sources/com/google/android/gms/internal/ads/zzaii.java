package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaii.class */
public final class zzaii extends zzgpa {
    private Date zza;
    private Date zzh;
    private long zzi;
    private long zzj;
    private double zzk = 1.0d;
    private float zzl = 1.0f;
    private zzgpk zzm = zzgpk.zza;
    private long zzn;

    public zzaii() {
        super("mvhd");
    }

    public final String toString() {
        StringBuilder m8752j = C0082b.m8752j("MovieHeaderBox[creationTime=");
        m8752j.append(this.zza);
        m8752j.append(";modificationTime=");
        m8752j.append(this.zzh);
        m8752j.append(";timescale=");
        m8752j.append(this.zzi);
        m8752j.append(";duration=");
        m8752j.append(this.zzj);
        m8752j.append(";rate=");
        m8752j.append(this.zzk);
        m8752j.append(";volume=");
        m8752j.append(this.zzl);
        m8752j.append(";matrix=");
        m8752j.append(this.zzm);
        m8752j.append(";nextTrackId=");
        m8752j.append(this.zzn);
        m8752j.append("]");
        return m8752j.toString();
    }

    public final long zzd() {
        return this.zzj;
    }

    public final long zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzgoy
    public final void zzf(ByteBuffer byteBuffer) {
        zzi(byteBuffer);
        if (zzh() == 1) {
            this.zza = zzgpf.zza(zzaie.zzf(byteBuffer));
            this.zzh = zzgpf.zza(zzaie.zzf(byteBuffer));
            this.zzi = zzaie.zze(byteBuffer);
            this.zzj = zzaie.zzf(byteBuffer);
        } else {
            this.zza = zzgpf.zza(zzaie.zze(byteBuffer));
            this.zzh = zzgpf.zza(zzaie.zze(byteBuffer));
            this.zzi = zzaie.zze(byteBuffer);
            this.zzj = zzaie.zze(byteBuffer);
        }
        this.zzk = zzaie.zzb(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.zzl = ((short) ((bArr[1] & 255) | ((short) ((bArr[0] << 8) & 65280)))) / 256.0f;
        zzaie.zzd(byteBuffer);
        zzaie.zze(byteBuffer);
        zzaie.zze(byteBuffer);
        double zzb = zzaie.zzb(byteBuffer);
        double zzb2 = zzaie.zzb(byteBuffer);
        double zza = zzaie.zza(byteBuffer);
        this.zzm = new zzgpk(zzb, zzb2, zzaie.zzb(byteBuffer), zzaie.zzb(byteBuffer), zza, zzaie.zza(byteBuffer), zzaie.zza(byteBuffer), zzaie.zzb(byteBuffer), zzaie.zzb(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.zzn = zzaie.zze(byteBuffer);
    }
}
