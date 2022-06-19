package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzme.class */
public abstract class zzme implements zzlh {
    public zzlf zzb;
    public zzlf zzc;
    private zzlf zzd;
    private zzlf zze;
    private ByteBuffer zzf;
    private ByteBuffer zzg;
    private boolean zzh;

    public zzme() {
        ByteBuffer byteBuffer = zzlh.zza;
        this.zzf = byteBuffer;
        this.zzg = byteBuffer;
        zzlf zzlfVar = zzlf.zza;
        this.zzd = zzlfVar;
        this.zze = zzlfVar;
        this.zzb = zzlfVar;
        this.zzc = zzlfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final zzlf zza(zzlf zzlfVar) throws zzlg {
        this.zzd = zzlfVar;
        this.zze = zzi(zzlfVar);
        return zzg() ? this.zze : zzlf.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public ByteBuffer zzb() {
        ByteBuffer byteBuffer = this.zzg;
        this.zzg = zzlh.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzc() {
        this.zzg = zzlh.zza;
        this.zzh = false;
        this.zzb = this.zzd;
        this.zzc = this.zze;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzd() {
        this.zzh = true;
        zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzf() {
        zzc();
        this.zzf = zzlh.zza;
        zzlf zzlfVar = zzlf.zza;
        this.zzd = zzlfVar;
        this.zze = zzlfVar;
        this.zzb = zzlfVar;
        this.zzc = zzlfVar;
        zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public boolean zzg() {
        return this.zze != zzlf.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public boolean zzh() {
        return this.zzh && this.zzg == zzlh.zza;
    }

    public zzlf zzi(zzlf zzlfVar) throws zzlg {
        throw null;
    }

    public final ByteBuffer zzj(int i) {
        if (this.zzf.capacity() < i) {
            this.zzf = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.zzf.clear();
        }
        ByteBuffer byteBuffer = this.zzf;
        this.zzg = byteBuffer;
        return byteBuffer;
    }

    public void zzk() {
    }

    public void zzl() {
    }

    public void zzm() {
    }

    public final boolean zzn() {
        return this.zzg.hasRemaining();
    }
}
