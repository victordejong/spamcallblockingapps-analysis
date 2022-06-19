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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagz.class */
public final class zzagz {
    private final zzagy zzd;
    private final zzho zze;
    private final zzfa zzf;
    private boolean zzi;
    private zzay zzj;
    private zzix zzk = new zzix(0);
    private final IdentityHashMap<zzhe, zzagx> zzb = new IdentityHashMap<>();
    private final Map<Object, zzagx> zzc = new HashMap();
    private final List<zzagx> zza = new ArrayList();
    private final HashMap<zzagx, zzagw> zzg = new HashMap<>();
    private final Set<zzagx> zzh = new HashSet();

    public zzagz(zzagy zzagyVar, zzcy zzcyVar, Handler handler) {
        this.zzd = zzagyVar;
        zzho zzhoVar = new zzho();
        this.zze = zzhoVar;
        zzfa zzfaVar = new zzfa();
        this.zzf = zzfaVar;
        zzhoVar.zzb(handler, zzcyVar);
        zzfaVar.zzb(handler, zzcyVar);
    }

    private final void zzp() {
        Iterator<zzagx> it = this.zzh.iterator();
        while (it.hasNext()) {
            zzagx next = it.next();
            if (next.zzc.isEmpty()) {
                zzq(next);
                it.remove();
            }
        }
    }

    private final void zzq(zzagx zzagxVar) {
        zzagw zzagwVar = this.zzg.get(zzagxVar);
        if (zzagwVar != null) {
            zzagwVar.zza.zzq(zzagwVar.zzb);
        }
    }

    private final void zzr(int i, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i3 >= i) {
                zzagx remove = this.zza.remove(i3);
                this.zzc.remove(remove.zzb);
                zzs(i3, -remove.zza.zzy().zza());
                remove.zze = true;
                i2 = i3;
                if (this.zzi) {
                    zzu(remove);
                    i2 = i3;
                }
            } else {
                return;
            }
        }
    }

    private final void zzs(int i, int i2) {
        while (i < this.zza.size()) {
            this.zza.get(i).zzd += i2;
            i++;
        }
    }

    private final void zzt(zzagx zzagxVar) {
        zzhb zzhbVar = zzagxVar.zza;
        zzhg zzhgVar = new zzhg(this) { // from class: com.google.android.gms.internal.ads.zzagu
            private final zzagz zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzhg
            public final void zza(zzhh zzhhVar, zzaiq zzaiqVar) {
                this.zza.zzi(zzhhVar, zzaiqVar);
            }
        };
        zzagv zzagvVar = new zzagv(this, zzagxVar);
        this.zzg.put(zzagxVar, new zzagw(zzhbVar, zzhgVar, zzagvVar));
        zzhbVar.zzk(new Handler(zzamq.zzk(), null), zzagvVar);
        zzhbVar.zzm(new Handler(zzamq.zzk(), null), zzagvVar);
        zzhbVar.zzo(zzhgVar, this.zzj);
    }

    private final void zzu(zzagx zzagxVar) {
        if (!zzagxVar.zze || !zzagxVar.zzc.isEmpty()) {
            return;
        }
        zzagw remove = this.zzg.remove(zzagxVar);
        Objects.requireNonNull(remove);
        remove.zza.zzr(remove.zzb);
        remove.zza.zzl(remove.zzc);
        remove.zza.zzn(remove.zzc);
        this.zzh.remove(zzagxVar);
    }

    public final boolean zzc() {
        return this.zzi;
    }

    public final int zzd() {
        return this.zza.size();
    }

    public final void zze(zzay zzayVar) {
        zzakt.zzd(!this.zzi);
        this.zzj = zzayVar;
        for (int i = 0; i < this.zza.size(); i++) {
            zzagx zzagxVar = this.zza.get(i);
            zzt(zzagxVar);
            this.zzh.add(zzagxVar);
        }
        this.zzi = true;
    }

    public final void zzf(zzhe zzheVar) {
        zzagx remove = this.zzb.remove(zzheVar);
        Objects.requireNonNull(remove);
        remove.zza.zzA(zzheVar);
        remove.zzc.remove(((zzgy) zzheVar).zza);
        if (!this.zzb.isEmpty()) {
            zzp();
        }
        zzu(remove);
    }

    public final void zzg() {
        for (zzagw zzagwVar : this.zzg.values()) {
            try {
                zzagwVar.zza.zzr(zzagwVar.zzb);
            } catch (RuntimeException e) {
                zzaln.zzb("MediaSourceList", "Failed to release child source.", e);
            }
            zzagwVar.zza.zzl(zzagwVar.zzc);
            zzagwVar.zza.zzn(zzagwVar.zzc);
        }
        this.zzg.clear();
        this.zzh.clear();
        this.zzi = false;
    }

    public final zzaiq zzh() {
        if (!this.zza.isEmpty()) {
            int i = 0;
            for (int i2 = 0; i2 < this.zza.size(); i2++) {
                zzagx zzagxVar = this.zza.get(i2);
                zzagxVar.zzd = i;
                i += zzagxVar.zza.zzy().zza();
            }
            return new zzaht(this.zza, this.zzk, null);
        }
        return zzaiq.zzc;
    }

    public final /* synthetic */ void zzi(zzhh zzhhVar, zzaiq zzaiqVar) {
        this.zzd.zzl();
    }

    public final zzaiq zzj(List<zzagx> list, zzix zzixVar) {
        zzr(0, this.zza.size());
        return zzk(this.zza.size(), list, zzixVar);
    }

    public final zzaiq zzk(int i, List<zzagx> list, zzix zzixVar) {
        if (!list.isEmpty()) {
            this.zzk = zzixVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                zzagx zzagxVar = list.get(i2 - i);
                if (i2 > 0) {
                    zzagx zzagxVar2 = this.zza.get(i2 - 1);
                    zzaiq zzy = zzagxVar2.zza.zzy();
                    zzagxVar.zza(zzy.zza() + zzagxVar2.zzd);
                } else {
                    zzagxVar.zza(0);
                }
                zzs(i2, zzagxVar.zza.zzy().zza());
                this.zza.add(i2, zzagxVar);
                this.zzc.put(zzagxVar.zzb, zzagxVar);
                if (this.zzi) {
                    zzt(zzagxVar);
                    if (this.zzb.isEmpty()) {
                        this.zzh.add(zzagxVar);
                    } else {
                        zzq(zzagxVar);
                    }
                }
            }
        }
        return zzh();
    }

    public final zzaiq zzl(int i, int i2, zzix zzixVar) {
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= i2) {
                z = false;
                if (i2 <= zzd()) {
                    z = true;
                }
            }
        }
        zzakt.zza(z);
        this.zzk = zzixVar;
        zzr(i, i2);
        return zzh();
    }

    public final zzaiq zzm(int i, int i2, int i3, zzix zzixVar) {
        zzakt.zza(zzd() >= 0);
        this.zzk = null;
        return zzh();
    }

    public final zzaiq zzn(zzix zzixVar) {
        int zzd = zzd();
        zzix zzixVar2 = zzixVar;
        if (zzixVar.zza() != zzd) {
            zzixVar2 = zzixVar.zzh().zzf(0, zzd);
        }
        this.zzk = zzixVar2;
        return zzh();
    }

    public final zzhe zzo(zzhf zzhfVar, zzko zzkoVar, long j) {
        Object obj = zzhfVar.zza;
        Object obj2 = ((Pair) obj).first;
        zzhf zzc = zzhfVar.zzc(((Pair) obj).second);
        zzagx zzagxVar = this.zzc.get(obj2);
        Objects.requireNonNull(zzagxVar);
        this.zzh.add(zzagxVar);
        zzagw zzagwVar = this.zzg.get(zzagxVar);
        if (zzagwVar != null) {
            zzagwVar.zza.zzp(zzagwVar.zzb);
        }
        zzagxVar.zzc.add(zzc);
        zzgy zzC = zzagxVar.zza.zzC(zzc, zzkoVar, j);
        this.zzb.put(zzC, zzagxVar);
        zzp();
        return zzC;
    }
}
