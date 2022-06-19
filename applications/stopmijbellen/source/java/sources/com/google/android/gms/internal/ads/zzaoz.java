package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoz.class */
public final class zzaoz implements zzaow {
    private final zzapl[] zza;
    private final zzavr zzb;
    private final zzavp zzc;
    private final Handler zzd;
    private final zzape zze;
    private boolean zzi;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private Object zzp;
    private zzavp zzr;
    private zzapb zzt;
    private long zzu;
    private boolean zzj = false;
    private int zzk = 1;
    private final CopyOnWriteArraySet<zzaot> zzf = new CopyOnWriteArraySet<>();
    private zzapr zzo = zzapr.zza;
    private final zzapq zzg = new zzapq();
    private final zzapp zzh = new zzapp();
    private zzavd zzq = zzavd.zza;
    private zzapk zzs = zzapk.zza;

    @SuppressLint({"HandlerLeak"})
    public zzaoz(zzapl[] zzaplVarArr, zzavr zzavrVar, zzcmd zzcmdVar, byte[] bArr) {
        String str = zzaxb.zze;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        this.zza = zzaplVarArr;
        Objects.requireNonNull(zzavrVar);
        this.zzb = zzavrVar;
        zzavp zzavpVar = new zzavp(new zzavh[2], null);
        this.zzc = zzavpVar;
        this.zzr = zzavpVar;
        zzaoy zzaoyVar = new zzaoy(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.zzd = zzaoyVar;
        zzapb zzapbVar = new zzapb(0, 0L);
        this.zzt = zzapbVar;
        this.zze = new zzape(zzaplVarArr, zzavrVar, zzcmdVar, this.zzj, 0, zzaoyVar, zzapbVar, this, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final int zza() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final long zzb() {
        if (this.zzo.zzh() || this.zzl > 0) {
            return this.zzu;
        }
        this.zzo.zzd(this.zzt.zza, this.zzh, false);
        return zzaor.zzb(this.zzt.zzd) + zzaor.zzb(0L);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final long zzc() {
        if (this.zzo.zzh() || this.zzl > 0) {
            return this.zzu;
        }
        this.zzo.zzd(this.zzt.zza, this.zzh, false);
        return zzaor.zzb(this.zzt.zzc) + zzaor.zzb(0L);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final long zzd() {
        if (this.zzo.zzh()) {
            return -9223372036854775807L;
        }
        zzapr zzaprVar = this.zzo;
        zzr();
        return zzaor.zzb(zzaprVar.zzg(0, this.zzg, false).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zze(zzaot zzaotVar) {
        this.zzf.add(zzaotVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzf(zzaov... zzaovVarArr) {
        this.zze.zza(zzaovVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzg() {
        this.zze.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzh(zzauo zzauoVar) {
        if (!this.zzo.zzh() || this.zzp != null) {
            this.zzo = zzapr.zza;
            this.zzp = null;
            Iterator<zzaot> it2 = this.zzf.iterator();
            while (it2.hasNext()) {
                it2.next().zzf(this.zzo, this.zzp);
            }
        }
        if (this.zzi) {
            this.zzi = false;
            this.zzq = zzavd.zza;
            this.zzr = this.zzc;
            this.zzb.zzd(null);
            Iterator<zzaot> it3 = this.zzf.iterator();
            while (it3.hasNext()) {
                it3.next().zzg(this.zzq, this.zzr);
            }
        }
        this.zzm++;
        this.zze.zzg(zzauoVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzi() {
        this.zze.zzh();
        this.zzd.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzj(zzaot zzaotVar) {
        this.zzf.remove(zzaotVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzk(long j) {
        zzr();
        if (this.zzo.zzh() || this.zzo.zzc() > 0) {
            this.zzl++;
            if (!this.zzo.zzh()) {
                this.zzo.zzg(0, this.zzg, false);
                zzaor.zza(j);
                if (this.zzo.zzd(0, this.zzh, false).zzc != -9223372036854775807L) {
                }
            }
            this.zzu = j;
            this.zze.zzi(this.zzo, 0, zzaor.zza(j));
            Iterator<zzaot> it2 = this.zzf.iterator();
            while (it2.hasNext()) {
                it2.next().zze();
            }
            return;
        }
        throw new zzapi(this.zzo, 0, j);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzl(zzaov... zzaovVarArr) {
        this.zze.zzj(zzaovVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzm(int i) {
        this.zze.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzn(int i) {
        this.zze.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzo(boolean z) {
        if (this.zzj != z) {
            this.zzj = z;
            this.zze.zzm(z);
            Iterator<zzaot> it2 = this.zzf.iterator();
            while (it2.hasNext()) {
                it2.next().zzd(z, this.zzk);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final void zzp() {
        this.zze.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzaow
    public final boolean zzq() {
        return this.zzj;
    }

    public final int zzr() {
        if (this.zzo.zzh() || this.zzl > 0) {
            return 0;
        }
        this.zzo.zzd(this.zzt.zza, this.zzh, false);
        return 0;
    }

    public final void zzs(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.zzm--;
                return;
            case 1:
                this.zzk = message.arg1;
                Iterator<zzaot> it2 = this.zzf.iterator();
                while (it2.hasNext()) {
                    it2.next().zzd(this.zzj, this.zzk);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.zzn = z;
                Iterator<zzaot> it3 = this.zzf.iterator();
                while (it3.hasNext()) {
                    it3.next().zza(this.zzn);
                }
                return;
            case 3:
                if (this.zzm != 0) {
                    return;
                }
                zzavs zzavsVar = (zzavs) message.obj;
                this.zzi = true;
                this.zzq = zzavsVar.zza;
                this.zzr = zzavsVar.zzb;
                this.zzb.zzd(zzavsVar.zzc);
                Iterator<zzaot> it4 = this.zzf.iterator();
                while (it4.hasNext()) {
                    it4.next().zzg(this.zzq, this.zzr);
                }
                return;
            case 4:
                int i = this.zzl - 1;
                this.zzl = i;
                if (i != 0) {
                    return;
                }
                this.zzt = (zzapb) message.obj;
                if (message.arg1 == 0) {
                    return;
                }
                Iterator<zzaot> it5 = this.zzf.iterator();
                while (it5.hasNext()) {
                    it5.next().zze();
                }
                return;
            case 5:
                if (this.zzl != 0) {
                    return;
                }
                this.zzt = (zzapb) message.obj;
                Iterator<zzaot> it6 = this.zzf.iterator();
                while (it6.hasNext()) {
                    it6.next().zze();
                }
                return;
            case 6:
                zzapd zzapdVar = (zzapd) message.obj;
                this.zzl -= zzapdVar.zzd;
                if (this.zzm != 0) {
                    return;
                }
                this.zzo = zzapdVar.zza;
                this.zzp = zzapdVar.zzb;
                this.zzt = zzapdVar.zzc;
                Iterator<zzaot> it7 = this.zzf.iterator();
                while (it7.hasNext()) {
                    it7.next().zzf(this.zzo, this.zzp);
                }
                return;
            case 7:
                zzapk zzapkVar = (zzapk) message.obj;
                if (this.zzs.equals(zzapkVar)) {
                    return;
                }
                this.zzs = zzapkVar;
                Iterator<zzaot> it8 = this.zzf.iterator();
                while (it8.hasNext()) {
                    it8.next().zzb(zzapkVar);
                }
                return;
            case 8:
                zzaos zzaosVar = (zzaos) message.obj;
                Iterator<zzaot> it9 = this.zzf.iterator();
                while (it9.hasNext()) {
                    it9.next().zzc(zzaosVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
