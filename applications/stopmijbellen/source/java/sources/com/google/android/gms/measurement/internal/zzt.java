package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzfj;
import com.google.android.gms.internal.measurement.zzfk;
import com.google.android.gms.internal.measurement.zzfl;
import com.google.android.gms.internal.measurement.zzfm;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzge;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzog;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzt.class */
public final class zzt {
    public final /* synthetic */ zzy zza;
    private String zzb;
    private boolean zzc;
    private zzgd zzd;
    private BitSet zze;
    private BitSet zzf;
    private Map<Integer, Long> zzg;
    private Map<Integer, List<Long>> zzh;

    public /* synthetic */ zzt(zzy zzyVar, String str, zzgd zzgdVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, zzs zzsVar) {
        this.zza = zzyVar;
        this.zzb = str;
        this.zze = bitSet;
        this.zzf = bitSet2;
        this.zzg = map;
        this.zzh = new C4251a();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.zzh.put(num, arrayList);
        }
        this.zzc = false;
        this.zzd = zzgdVar;
    }

    public /* synthetic */ zzt(zzy zzyVar, String str, zzs zzsVar) {
        this.zza = zzyVar;
        this.zzb = str;
        this.zzc = true;
        this.zze = new BitSet();
        this.zzf = new BitSet();
        this.zzg = new C4251a();
        this.zzh = new C4251a();
    }

    public static /* synthetic */ BitSet zzc(zzt zztVar) {
        return zztVar.zze;
    }

    public final void zza(zzw zzwVar) {
        int zza = zzwVar.zza();
        Boolean bool = zzwVar.zzd;
        if (bool != null) {
            this.zzf.set(zza, bool.booleanValue());
        }
        Boolean bool2 = zzwVar.zze;
        if (bool2 != null) {
            this.zze.set(zza, bool2.booleanValue());
        }
        if (zzwVar.zzf != null) {
            Map<Integer, Long> map = this.zzg;
            Integer valueOf = Integer.valueOf(zza);
            Long l = map.get(valueOf);
            long longValue = zzwVar.zzf.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.zzg.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (zzwVar.zzg != null) {
            Map<Integer, List<Long>> map2 = this.zzh;
            Integer valueOf2 = Integer.valueOf(zza);
            List<Long> list = map2.get(valueOf2);
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.zzh.put(valueOf2, arrayList);
            }
            if (zzwVar.zzb()) {
                arrayList.clear();
            }
            zzog.zzb();
            zzae zzc = this.zza.zzs.zzc();
            String str = this.zzb;
            zzdz<Boolean> zzdzVar = zzea.zzZ;
            if (zzc.zzn(str, zzdzVar) && zzwVar.zzc()) {
                arrayList.clear();
            }
            zzog.zzb();
            if (!this.zza.zzs.zzc().zzn(this.zzb, zzdzVar)) {
                arrayList.add(Long.valueOf(zzwVar.zzg.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(zzwVar.zzg.longValue() / 1000);
            if (arrayList.contains(valueOf3)) {
                return;
            }
            arrayList.add(valueOf3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.util.List] */
    public final zzfk zzb(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzfj zzh = zzfk.zzh();
        zzh.zza(i);
        zzh.zzd(this.zzc);
        zzgd zzgdVar = this.zzd;
        if (zzgdVar != null) {
            zzh.zzc(zzgdVar);
        }
        zzgc zzk = zzgd.zzk();
        zzk.zzc(zzkp.zzn(this.zze));
        zzk.zza(zzkp.zzn(this.zzf));
        Map<Integer, Long> map = this.zzg;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.zzg.keySet()) {
                int intValue = num.intValue();
                Long l = this.zzg.get(Integer.valueOf(intValue));
                if (l != null) {
                    zzfl zze = zzfm.zze();
                    zze.zza(intValue);
                    zze.zzb(l.longValue());
                    arrayList.add(zze.zzaA());
                }
            }
        }
        if (arrayList != null) {
            zzk.zze(arrayList);
        }
        Map<Integer, List<Long>> map2 = this.zzh;
        if (map2 == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(map2.size());
            for (Integer num2 : this.zzh.keySet()) {
                zzge zzf = zzgf.zzf();
                zzf.zza(num2.intValue());
                List<Long> list = this.zzh.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    zzf.zzb(list);
                }
                arrayList2.add((zzgf) zzf.zzaA());
            }
        }
        zzk.zzg(arrayList2);
        zzh.zzb(zzk);
        return zzh.zzaA();
    }
}
