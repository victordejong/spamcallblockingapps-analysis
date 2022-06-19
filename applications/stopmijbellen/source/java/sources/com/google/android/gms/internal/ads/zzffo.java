package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzt;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffo.class */
public final class zzffo implements zzffn {
    @GuardedBy("this")
    private final ConcurrentHashMap<zzffx, zzffm> zza;
    private final zzffu zzb;
    private final zzffq zzc = new zzffq();

    public zzffo(zzffu zzffuVar) {
        this.zza = new ConcurrentHashMap<>(zzffuVar.zzd);
        this.zzb = zzffuVar;
    }

    private final void zzf() {
        int i;
        Parcelable.Creator<zzffu> creator = zzffu.CREATOR;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeN)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzb.zzb);
            sb.append(" PoolCollection");
            sb.append(this.zzc.zzb());
            Iterator<Map.Entry<zzffx, zzffm>> it2 = this.zza.entrySet().iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                i = i3;
                if (it2.hasNext()) {
                    Map.Entry<zzffx, zzffm> next = it2.next();
                    int i4 = i3 + 1;
                    sb.append(i4);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i5 = 0; i5 < next.getValue().zzb(); i5++) {
                        sb.append("[O]");
                    }
                    for (int zzb = next.getValue().zzb(); zzb < this.zzb.zzd; zzb++) {
                        sb.append("[ ]");
                    }
                    sb.append("\n");
                    sb.append(next.getValue().zzg());
                    sb.append("\n");
                    i2 = i4;
                }
            }
            while (i < this.zzb.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzciz.zze(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzffn
    public final zzffu zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzffn
    public final zzffw<?, ?> zzb(zzffx zzffxVar) {
        zzffw<?, ?> zzffwVar;
        synchronized (this) {
            zzffm zzffmVar = this.zza.get(zzffxVar);
            if (zzffmVar != null) {
                zzffwVar = zzffmVar.zze();
                if (zzffwVar == null) {
                    this.zzc.zze();
                }
                zzfgk zzf = zzffmVar.zzf();
                if (zzffwVar != null) {
                    zzbbl zza = zzbbr.zza();
                    zzbbj zza2 = zzbbk.zza();
                    zza2.zzd(2);
                    zzbbn zza3 = zzbbo.zza();
                    zza3.zza(zzf.zza);
                    zza3.zzb(zzf.zzb);
                    zza2.zza(zza3);
                    zza.zza(zza2);
                    zzffwVar.zza.zzb().zzc().zzc(zza.zzah());
                }
                zzf();
            } else {
                this.zzc.zzf();
                zzf();
                zzffwVar = null;
            }
        }
        return zzffwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzffn
    @Deprecated
    public final zzffx zzc(zzbfd zzbfdVar, String str, zzbfo zzbfoVar) {
        return new zzffy(zzbfdVar, str, new zzcdu(this.zzb.zza).zza().zzk, this.zzb.zzf, zzbfoVar);
    }

    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzffn
    public final boolean zzd(zzffx zzffxVar, zzffw<?, ?> zzffwVar) {
        boolean zzh;
        synchronized (this) {
            zzffm zzffmVar = this.zza.get(zzffxVar);
            zzffwVar.zzd = zzt.zzA().currentTimeMillis();
            zzffm zzffmVar2 = zzffmVar;
            if (zzffmVar == null) {
                zzffu zzffuVar = this.zzb;
                zzffm zzffmVar3 = new zzffm(zzffuVar.zzd, zzffuVar.zze * 1000);
                int size = this.zza.size();
                zzffu zzffuVar2 = this.zzb;
                if (size == zzffuVar2.zzc) {
                    int i = zzffuVar2.zzg;
                    int i2 = i - 1;
                    zzffx zzffxVar2 = null;
                    if (i == 0) {
                        throw null;
                    }
                    char c = 65535;
                    if (i2 == 0) {
                        zzffx zzffxVar3 = null;
                        for (Map.Entry<zzffx, zzffm> entry : this.zza.entrySet()) {
                            if (entry.getValue().zzc() < c) {
                                c = entry.getValue().zzc();
                                zzffxVar3 = entry.getKey();
                            }
                        }
                        if (zzffxVar3 != null) {
                            this.zza.remove(zzffxVar3);
                        }
                    } else if (i2 == 1) {
                        zzffx zzffxVar4 = null;
                        for (Map.Entry<zzffx, zzffm> entry2 : this.zza.entrySet()) {
                            if (entry2.getValue().zzd() < c) {
                                c = entry2.getValue().zzd();
                                zzffxVar4 = entry2.getKey();
                            }
                        }
                        if (zzffxVar4 != null) {
                            this.zza.remove(zzffxVar4);
                        }
                    } else if (i2 == 2) {
                        int i3 = Integer.MAX_VALUE;
                        for (Map.Entry<zzffx, zzffm> entry3 : this.zza.entrySet()) {
                            if (entry3.getValue().zza() < i3) {
                                i3 = entry3.getValue().zza();
                                zzffxVar2 = entry3.getKey();
                            }
                        }
                        if (zzffxVar2 != null) {
                            this.zza.remove(zzffxVar2);
                        }
                    }
                    this.zzc.zzg();
                }
                this.zza.put(zzffxVar, zzffmVar3);
                this.zzc.zzd();
                zzffmVar2 = zzffmVar3;
            }
            zzh = zzffmVar2.zzh(zzffwVar);
            this.zzc.zzc();
            zzffp zza = this.zzc.zza();
            zzfgk zzf = zzffmVar2.zzf();
            zzbbl zza2 = zzbbr.zza();
            zzbbj zza3 = zzbbk.zza();
            zza3.zzd(2);
            zzbbp zza4 = zzbbq.zza();
            zza4.zza(zza.zza);
            zza4.zzb(zza.zzb);
            zza4.zzc(zzf.zzb);
            zza3.zzc(zza4);
            zza2.zza(zza3);
            zzffwVar.zza.zzb().zzc().zzf(zza2.zzah());
            zzf();
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzffn
    public final boolean zze(zzffx zzffxVar) {
        synchronized (this) {
            zzffm zzffmVar = this.zza.get(zzffxVar);
            if (zzffmVar != null) {
                return zzffmVar.zzb() < this.zzb.zzd;
            }
            return true;
        }
    }
}
