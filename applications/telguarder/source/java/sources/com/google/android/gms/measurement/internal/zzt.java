package com.google.android.gms.measurement.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzcw;
import com.google.android.gms.internal.measurement.zzcx;
import com.google.android.gms.internal.measurement.zzcy;
import com.google.android.gms.internal.measurement.zzcz;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzdq;
import com.google.android.gms.internal.measurement.zzdr;
import com.google.android.gms.internal.measurement.zzds;
import com.google.android.gms.internal.measurement.zzlo;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzt.class */
public final class zzt {
    final /* synthetic */ zzy zza;
    private String zzb;
    private boolean zzc;
    private zzdq zzd;
    private BitSet zze;
    private BitSet zzf;
    private Map<Integer, Long> zzg;
    private Map<Integer, List<Long>> zzh;

    public /* synthetic */ zzt(zzy zzyVar, String str, zzdq zzdqVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, zzs zzsVar) {
        this.zza = zzyVar;
        this.zzb = str;
        this.zze = bitSet;
        this.zzf = bitSet2;
        this.zzg = map;
        this.zzh = new ArrayMap();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.zzh.put(num, arrayList);
        }
        this.zzc = false;
        this.zzd = zzdqVar;
    }

    public /* synthetic */ zzt(zzy zzyVar, String str, zzs zzsVar) {
        this.zza = zzyVar;
        this.zzb = str;
        this.zzc = true;
        this.zze = new BitSet();
        this.zzf = new BitSet();
        this.zzg = new ArrayMap();
        this.zzh = new ArrayMap();
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
            zzlo.zzb();
            if (this.zza.zzx.zzc().zzn(this.zzb, zzdw.zzaa) && zzwVar.zzc()) {
                arrayList.clear();
            }
            zzlo.zzb();
            if (!this.zza.zzx.zzc().zzn(this.zzb, zzdw.zzaa)) {
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
    public final zzcx zzb(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzcw zzh = zzcx.zzh();
        zzh.zza(i);
        zzh.zzd(this.zzc);
        zzdq zzdqVar = this.zzd;
        if (zzdqVar != null) {
            zzh.zzc(zzdqVar);
        }
        zzdp zzk = zzdq.zzk();
        zzk.zzc(zzkf.zzn(this.zze));
        zzk.zza(zzkf.zzn(this.zzf));
        Map<Integer, Long> map = this.zzg;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(map.size());
            for (Integer num : this.zzg.keySet()) {
                int intValue = num.intValue();
                Long l = this.zzg.get(Integer.valueOf(intValue));
                if (l != null) {
                    zzcy zze = zzcz.zze();
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
                zzdr zzf = zzds.zzf();
                zzf.zza(num2.intValue());
                List<Long> list = this.zzh.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    zzf.zzb(list);
                }
                arrayList2.add((zzds) zzf.zzaA());
            }
        }
        zzk.zzg(arrayList2);
        zzh.zzb(zzk);
        return zzh.zzaA();
    }
}
