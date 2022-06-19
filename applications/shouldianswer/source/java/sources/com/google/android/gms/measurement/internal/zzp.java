package com.google.android.gms.measurement.internal;

import androidx.p014c.C0374a;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzmj;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzp.class */
public final class zzp {
    private String zza;
    private boolean zzb;
    private zzbr.zzi zzc;
    private BitSet zzd;
    private BitSet zze;
    private Map<Integer, Long> zzf;
    private Map<Integer, List<Long>> zzg;
    private final /* synthetic */ zzn zzh;

    private zzp(zzn zznVar, String str) {
        this.zzh = zznVar;
        this.zza = str;
        this.zzb = true;
        this.zzd = new BitSet();
        this.zze = new BitSet();
        this.zzf = new C0374a();
        this.zzg = new C0374a();
    }

    private zzp(zzn zznVar, String str, zzbr.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.zzh = zznVar;
        this.zza = str;
        this.zzd = bitSet;
        this.zze = bitSet2;
        this.zzf = map;
        this.zzg = new C0374a();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.zzg.put(num, arrayList);
            }
        }
        this.zzb = false;
        this.zzc = zziVar;
    }

    public /* synthetic */ zzp(zzn zznVar, String str, zzbr.zzi zziVar, BitSet bitSet, BitSet bitSet2, Map map, Map map2, zzq zzqVar) {
        this(zznVar, str, zziVar, bitSet, bitSet2, map, map2);
    }

    public /* synthetic */ zzp(zzn zznVar, String str, zzq zzqVar) {
        this(zznVar, str);
    }

    public static /* synthetic */ BitSet zza(zzp zzpVar) {
        return zzpVar.zzd;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0169, code lost:
        if (r6.zzh.zzt().zzd(r6.zza, com.google.android.gms.measurement.internal.zzap.zzbs) == false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v117, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzbr.zza zza(int r7, java.util.List<java.lang.Integer> r8) {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzp.zza(int, java.util.List):com.google.android.gms.internal.measurement.zzbr$zza");
    }

    public final void zza(zzu zzuVar) {
        int zza = zzuVar.zza();
        if (zzuVar.zzc != null) {
            this.zze.set(zza, zzuVar.zzc.booleanValue());
        }
        if (zzuVar.zzd != null) {
            this.zzd.set(zza, zzuVar.zzd.booleanValue());
        }
        if (zzuVar.zze != null) {
            Long l = this.zzf.get(Integer.valueOf(zza));
            long longValue = zzuVar.zze.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.zzf.put(Integer.valueOf(zza), Long.valueOf(longValue));
            }
        }
        if (zzuVar.zzf != null) {
            List<Long> list = this.zzg.get(Integer.valueOf(zza));
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
                this.zzg.put(Integer.valueOf(zza), arrayList);
            }
            if (zzmj.zzb() && this.zzh.zzt().zzd(this.zza, zzap.zzbs) && zzuVar.zzb()) {
                arrayList.clear();
            }
            arrayList.add(Long.valueOf(zzuVar.zzf.longValue() / 1000));
        }
    }
}
