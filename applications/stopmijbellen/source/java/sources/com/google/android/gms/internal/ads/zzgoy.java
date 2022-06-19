package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgoy.class */
public abstract class zzgoy implements zzaif {
    private static final zzgpj zza = zzgpj.zzb(zzgoy.class);
    public final String zzb;
    public long zze;
    public zzgpd zzg;
    private zzaig zzh;
    private ByteBuffer zzi;
    public long zzf = -1;
    private ByteBuffer zzj = null;
    public boolean zzd = true;
    public boolean zzc = true;

    public zzgoy(String str) {
        this.zzb = str;
    }

    private final void zzd() {
        synchronized (this) {
            if (!this.zzd) {
                try {
                    zzgpj zzgpjVar = zza;
                    String str = this.zzb;
                    zzgpjVar.zza(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
                    this.zzi = this.zzg.zzd(this.zze, this.zzf);
                    this.zzd = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzb(zzgpd zzgpdVar, ByteBuffer byteBuffer, long j, zzaic zzaicVar) throws IOException {
        this.zze = zzgpdVar.zzb();
        byteBuffer.remaining();
        this.zzf = j;
        this.zzg = zzgpdVar;
        zzgpdVar.zze(zzgpdVar.zzb() + j);
        this.zzd = false;
        this.zzc = false;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzc(zzaig zzaigVar) {
        this.zzh = zzaigVar;
    }

    public abstract void zzf(ByteBuffer byteBuffer);

    public final void zzg() {
        synchronized (this) {
            zzd();
            zzgpj zzgpjVar = zza;
            String str = this.zzb;
            zzgpjVar.zza(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.zzi;
            if (byteBuffer != null) {
                this.zzc = true;
                byteBuffer.rewind();
                zzf(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.zzj = byteBuffer.slice();
                }
                this.zzi = null;
            }
        }
    }
}
