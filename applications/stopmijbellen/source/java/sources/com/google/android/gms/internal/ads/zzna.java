package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzna.class */
final class zzna extends zzme {
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;
    private byte[] zzh = zzfn.zzf;
    private int zzi;
    private long zzj;

    @Override // com.google.android.gms.internal.ads.zzme, com.google.android.gms.internal.ads.zzlh
    public final ByteBuffer zzb() {
        int i;
        if (super.zzh() && (i = this.zzi) > 0) {
            zzj(i).put(this.zzh, 0, this.zzi).flip();
            this.zzi = 0;
        }
        return super.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zze(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.zzg);
        this.zzj += min / this.zzb.zze;
        this.zzg -= min;
        byteBuffer.position(position + min);
        if (this.zzg > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.zzi + i2) - this.zzh.length;
        ByteBuffer zzj = zzj(length);
        int zzf = zzfn.zzf(length, 0, this.zzi);
        zzj.put(this.zzh, 0, zzf);
        int zzf2 = zzfn.zzf(length - zzf, 0, i2);
        byteBuffer.limit(byteBuffer.position() + zzf2);
        zzj.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - zzf2;
        int i4 = this.zzi - zzf;
        this.zzi = i4;
        byte[] bArr = this.zzh;
        System.arraycopy(bArr, zzf, bArr, 0, i4);
        byteBuffer.get(this.zzh, this.zzi, i3);
        this.zzi += i3;
        zzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzme, com.google.android.gms.internal.ads.zzlh
    public final boolean zzh() {
        return super.zzh() && this.zzi == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final zzlf zzi(zzlf zzlfVar) throws zzlg {
        if (zzlfVar.zzd == 2) {
            this.zzf = true;
            zzlf zzlfVar2 = zzlfVar;
            if (this.zzd == 0) {
                zzlfVar2 = this.zze != 0 ? zzlfVar : zzlf.zza;
            }
            return zzlfVar2;
        }
        throw new zzlg(zzlfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzk() {
        if (this.zzf) {
            this.zzf = false;
            int i = this.zze;
            int i2 = this.zzb.zze;
            this.zzh = new byte[i * i2];
            this.zzg = this.zzd * i2;
        }
        this.zzi = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzl() {
        int i;
        if (this.zzf) {
            if (this.zzi > 0) {
                this.zzj += i / this.zzb.zze;
            }
            this.zzi = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzme
    public final void zzm() {
        this.zzh = zzfn.zzf;
    }

    public final long zzo() {
        return this.zzj;
    }

    public final void zzp() {
        this.zzj = 0L;
    }

    public final void zzq(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }
}
