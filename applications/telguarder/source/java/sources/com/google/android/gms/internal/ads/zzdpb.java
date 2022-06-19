package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzug;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpb.class */
public final class zzdpb implements zzdpc {
    private final ConcurrentHashMap<zzdpl, zzdoz> zzhmy;
    private zzdpf zzhmz;
    private zzdpd zzhna = new zzdpd();

    public zzdpb(zzdpf zzdpfVar) {
        this.zzhmy = new ConcurrentHashMap<>(zzdpfVar.zzhno);
        this.zzhmz = zzdpfVar;
    }

    private final void dumpToLog() {
        int i;
        if (zzdpf.zzawe()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzhmz.zzhnm);
            sb.append(" PoolCollection");
            sb.append(this.zzhna.zzawd());
            Iterator<Map.Entry<zzdpl, zzdoz>> it = this.zzhmy.entrySet().iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                i = i3;
                if (it.hasNext()) {
                    Map.Entry<zzdpl, zzdoz> next = it.next();
                    int i4 = i3 + 1;
                    sb.append(i4);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i5 = 0; i5 < next.getValue().size(); i5++) {
                        sb.append("[O]");
                    }
                    for (int size = next.getValue().size(); size < this.zzhmz.zzhno; size++) {
                        sb.append("[ ]");
                    }
                    sb.append("\n");
                    sb.append(next.getValue().zzavs());
                    sb.append("\n");
                    i2 = i4;
                }
            }
            while (i < this.zzhmz.zzhnn) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzd.zzdy(sb.toString());
        }
    }

    private final void zza(zzdpm<?> zzdpmVar, zzdqb zzdqbVar) {
        if (zzdpmVar != null) {
            zzdpmVar.zzhoh.zzalc().zzc((zzug.zzb) ((zzelb) zzug.zzb.zznl().zza(zzug.zzb.zza.zznn().zza(zzug.zzb.EnumC2619zzb.IN_MEMORY).zza(zzug.zzb.zzd.zznp().zzq(zzdqbVar.zzhpd).zzby(zzdqbVar.zzhpe))).zzbiw()));
        }
        dumpToLog();
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    @Deprecated
    public final zzdpl zza(zzvl zzvlVar, String str, zzvx zzvxVar) {
        return new zzdpo(zzvlVar, str, new zzaty(this.zzhmz.context).zzws().zzdyc, this.zzhmz.zzhnq, zzvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final zzdpm<?> zza(zzdpl zzdplVar) {
        zzdpm<?> zzdpmVar;
        synchronized (this) {
            zzdoz zzdozVar = this.zzhmy.get(zzdplVar);
            zzdpmVar = null;
            if (zzdozVar != null) {
                zzdpmVar = zzdozVar.zzavp();
                if (zzdpmVar == null) {
                    this.zzhna.zzavy();
                }
                zza(zzdpmVar, zzdozVar.zzavt());
            } else {
                this.zzhna.zzavx();
                zza((zzdpm<?>) null, (zzdqb) null);
            }
        }
        return zzdpmVar;
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdpc
    public final boolean zza(zzdpl zzdplVar, zzdpm<?> zzdpmVar) {
        boolean zzb;
        synchronized (this) {
            zzdoz zzdozVar = this.zzhmy.get(zzdplVar);
            zzdpmVar.zzhoj = zzr.zzky().currentTimeMillis();
            zzdoz zzdozVar2 = zzdozVar;
            if (zzdozVar == null) {
                zzdoz zzdozVar3 = new zzdoz(this.zzhmz.zzhno, this.zzhmz.zzhnp * 1000);
                if (this.zzhmy.size() == this.zzhmz.zzhnn) {
                    int i = zzdpe.zzhnh[this.zzhmz.zzhns - 1];
                    char c = 65535;
                    zzdpl zzdplVar2 = null;
                    if (i == 1) {
                        zzdpl zzdplVar3 = null;
                        for (Map.Entry<zzdpl, zzdoz> entry : this.zzhmy.entrySet()) {
                            if (entry.getValue().getCreationTimeMillis() < c) {
                                c = entry.getValue().getCreationTimeMillis();
                                zzdplVar3 = entry.getKey();
                            }
                        }
                        if (zzdplVar3 != null) {
                            this.zzhmy.remove(zzdplVar3);
                        }
                    } else if (i == 2) {
                        zzdpl zzdplVar4 = null;
                        for (Map.Entry<zzdpl, zzdoz> entry2 : this.zzhmy.entrySet()) {
                            if (entry2.getValue().zzavq() < c) {
                                c = entry2.getValue().zzavq();
                                zzdplVar4 = entry2.getKey();
                            }
                        }
                        if (zzdplVar4 != null) {
                            this.zzhmy.remove(zzdplVar4);
                        }
                    } else if (i == 3) {
                        int i2 = Integer.MAX_VALUE;
                        for (Map.Entry<zzdpl, zzdoz> entry3 : this.zzhmy.entrySet()) {
                            if (entry3.getValue().zzavr() < i2) {
                                i2 = entry3.getValue().zzavr();
                                zzdplVar2 = entry3.getKey();
                            }
                        }
                        if (zzdplVar2 != null) {
                            this.zzhmy.remove(zzdplVar2);
                        }
                    }
                    this.zzhna.zzawa();
                }
                this.zzhmy.put(zzdplVar, zzdozVar3);
                this.zzhna.zzavz();
                zzdozVar2 = zzdozVar3;
            }
            zzb = zzdozVar2.zzb(zzdpmVar);
            this.zzhna.zzawb();
            zzdpg zzawc = this.zzhna.zzawc();
            zzdqb zzavt = zzdozVar2.zzavt();
            if (zzdpmVar != null) {
                zzdpmVar.zzhoh.zzalc().zzd((zzug.zzb) ((zzelb) zzug.zzb.zznl().zza(zzug.zzb.zza.zznn().zza(zzug.zzb.EnumC2619zzb.IN_MEMORY).zza(zzug.zzb.zze.zznr().zzs(zzawc.zzhnv).zzt(zzawc.zzhnw).zzca(zzavt.zzhpe))).zzbiw()));
            }
            dumpToLog();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final zzdpf zzavw() {
        return this.zzhmz;
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final boolean zzb(zzdpl zzdplVar) {
        synchronized (this) {
            zzdoz zzdozVar = this.zzhmy.get(zzdplVar);
            if (zzdozVar != null) {
                return zzdozVar.size() < this.zzhmz.zzhno;
            }
            return true;
        }
    }
}
