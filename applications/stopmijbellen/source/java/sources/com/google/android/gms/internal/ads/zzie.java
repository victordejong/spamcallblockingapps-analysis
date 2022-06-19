package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzie.class */
public final class zzie {
    private final zzid zzd;
    private final zzqi zze;
    private final zzne zzf;
    private boolean zzi;
    private zzdx zzj;
    private zzrq zzk = new zzrq(0);
    private final IdentityHashMap<zzpy, zzic> zzb = new IdentityHashMap<>();
    private final Map<Object, zzic> zzc = new HashMap();
    private final List<zzic> zza = new ArrayList();
    private final HashMap<zzic, zzib> zzg = new HashMap<>();
    private final Set<zzic> zzh = new HashSet();

    public zzie(zzid zzidVar, zzlb zzlbVar, Handler handler) {
        this.zzd = zzidVar;
        zzqi zzqiVar = new zzqi();
        this.zze = zzqiVar;
        zzne zzneVar = new zzne();
        this.zzf = zzneVar;
        zzqiVar.zzb(handler, zzlbVar);
        zzneVar.zzb(handler, zzlbVar);
    }

    private final void zzp(int i, int i2) {
        while (i < this.zza.size()) {
            this.zza.get(i).zzd += i2;
            i++;
        }
    }

    private final void zzq(zzic zzicVar) {
        zzib zzibVar = this.zzg.get(zzicVar);
        if (zzibVar != null) {
            zzibVar.zza.zzh(zzibVar.zzb);
        }
    }

    private final void zzr() {
        Iterator<zzic> it2 = this.zzh.iterator();
        while (it2.hasNext()) {
            zzic next = it2.next();
            if (next.zzc.isEmpty()) {
                zzq(next);
                it2.remove();
            }
        }
    }

    private final void zzs(zzic zzicVar) {
        if (!zzicVar.zze || !zzicVar.zzc.isEmpty()) {
            return;
        }
        zzib remove = this.zzg.remove(zzicVar);
        Objects.requireNonNull(remove);
        remove.zza.zzo(remove.zzb);
        remove.zza.zzr(remove.zzc);
        remove.zza.zzq(remove.zzc);
        this.zzh.remove(zzicVar);
    }

    private final void zzt(zzic zzicVar) {
        zzpv zzpvVar = zzicVar.zza;
        zzqa zzqaVar = new zzqa() { // from class: com.google.android.gms.internal.ads.zzhz
            @Override // com.google.android.gms.internal.ads.zzqa
            public final void zza(zzqb zzqbVar, zzcd zzcdVar) {
                zzie.this.zze(zzqbVar, zzcdVar);
            }
        };
        zzia zziaVar = new zzia(this, zzicVar);
        this.zzg.put(zzicVar, new zzib(zzpvVar, zzqaVar, zziaVar));
        zzpvVar.zzg(new Handler(zzfn.zzA(), null), zziaVar);
        zzpvVar.zzf(new Handler(zzfn.zzA(), null), zziaVar);
        zzpvVar.zzl(zzqaVar, this.zzj);
    }

    private final void zzu(int i, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i3 >= i) {
                zzic remove = this.zza.remove(i3);
                this.zzc.remove(remove.zzb);
                zzp(i3, -remove.zza.zzz().zzc());
                remove.zze = true;
                i2 = i3;
                if (this.zzi) {
                    zzs(remove);
                    i2 = i3;
                }
            } else {
                return;
            }
        }
    }

    public final int zza() {
        return this.zza.size();
    }

    public final zzcd zzb() {
        if (!this.zza.isEmpty()) {
            int i = 0;
            for (int i2 = 0; i2 < this.zza.size(); i2++) {
                zzic zzicVar = this.zza.get(i2);
                zzicVar.zzd = i;
                i += zzicVar.zza.zzz().zzc();
            }
            return new zzij(this.zza, this.zzk, null);
        }
        return zzcd.zza;
    }

    public final /* synthetic */ void zze(zzqb zzqbVar, zzcd zzcdVar) {
        this.zzd.zzh();
    }

    public final void zzf(zzdx zzdxVar) {
        zzdy.zzf(!this.zzi);
        this.zzj = zzdxVar;
        for (int i = 0; i < this.zza.size(); i++) {
            zzic zzicVar = this.zza.get(i);
            zzt(zzicVar);
            this.zzh.add(zzicVar);
        }
        this.zzi = true;
    }

    public final void zzg() {
        for (zzib zzibVar : this.zzg.values()) {
            try {
                zzibVar.zza.zzo(zzibVar.zzb);
            } catch (RuntimeException e) {
                zzep.zza("MediaSourceList", "Failed to release child source.", e);
            }
            zzibVar.zza.zzr(zzibVar.zzc);
            zzibVar.zza.zzq(zzibVar.zzc);
        }
        this.zzg.clear();
        this.zzh.clear();
        this.zzi = false;
    }

    public final void zzh(zzpy zzpyVar) {
        zzic remove = this.zzb.remove(zzpyVar);
        Objects.requireNonNull(remove);
        remove.zza.zzA(zzpyVar);
        remove.zzc.remove(((zzps) zzpyVar).zza);
        if (!this.zzb.isEmpty()) {
            zzr();
        }
        zzs(remove);
    }

    public final boolean zzi() {
        return this.zzi;
    }

    public final zzcd zzj(int i, List<zzic> list, zzrq zzrqVar) {
        if (!list.isEmpty()) {
            this.zzk = zzrqVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                zzic zzicVar = list.get(i2 - i);
                if (i2 > 0) {
                    zzic zzicVar2 = this.zza.get(i2 - 1);
                    zzcd zzz = zzicVar2.zza.zzz();
                    zzicVar.zzc(zzz.zzc() + zzicVar2.zzd);
                } else {
                    zzicVar.zzc(0);
                }
                zzp(i2, zzicVar.zza.zzz().zzc());
                this.zza.add(i2, zzicVar);
                this.zzc.put(zzicVar.zzb, zzicVar);
                if (this.zzi) {
                    zzt(zzicVar);
                    if (this.zzb.isEmpty()) {
                        this.zzh.add(zzicVar);
                    } else {
                        zzq(zzicVar);
                    }
                }
            }
        }
        return zzb();
    }

    public final zzcd zzk(int i, int i2, int i3, zzrq zzrqVar) {
        zzdy.zzd(zza() >= 0);
        this.zzk = null;
        return zzb();
    }

    public final zzcd zzl(int i, int i2, zzrq zzrqVar) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= i2) {
                z = false;
                if (i2 <= zza()) {
                    z = true;
                }
            }
        }
        zzdy.zzd(z);
        this.zzk = zzrqVar;
        zzu(i, i2);
        return zzb();
    }

    public final zzcd zzm(List<zzic> list, zzrq zzrqVar) {
        zzu(0, this.zza.size());
        return zzj(this.zza.size(), list, zzrqVar);
    }

    public final zzcd zzn(zzrq zzrqVar) {
        int zza = zza();
        zzrq zzrqVar2 = zzrqVar;
        if (zzrqVar.zzc() != zza) {
            zzrqVar2 = zzrqVar.zzf().zzg(0, zza);
        }
        this.zzk = zzrqVar2;
        return zzb();
    }

    public final zzpy zzo(zzpz zzpzVar, zztk zztkVar, long j) {
        Object obj = zzpzVar.zza;
        Object obj2 = ((Pair) obj).first;
        zzpz zzc = zzpzVar.zzc(((Pair) obj).second);
        zzic zzicVar = this.zzc.get(obj2);
        Objects.requireNonNull(zzicVar);
        this.zzh.add(zzicVar);
        zzib zzibVar = this.zzg.get(zzicVar);
        if (zzibVar != null) {
            zzibVar.zza.zzj(zzibVar.zzb);
        }
        zzicVar.zzc.add(zzc);
        zzps zzC = zzicVar.zza.zzC(zzc, zztkVar, j);
        this.zzb.put(zzC, zzicVar);
        zzr();
        return zzC;
    }
}
