package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgu.class */
final class zzgu implements zzku {
    private final zzgs zzpb;

    private zzgu(zzgs zzgsVar) {
        this.zzpb = (zzgs) zzhm.zza(zzgsVar, "output");
        this.zzpb.zzpw = this;
    }

    public static zzgu zza(zzgs zzgsVar) {
        return zzgsVar.zzpw != null ? zzgsVar.zzpw : new zzgu(zzgsVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, double d) {
        this.zzpb.zza(i, d);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, float f) {
        this.zzpb.zza(i, f);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, long j) {
        this.zzpb.zza(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, zzfx zzfxVar) {
        this.zzpb.zza(i, zzfxVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final <K, V> void zza(int i, zzih<K, V> zzihVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzpb.zzc(i, 2);
            this.zzpb.zzan(zzii.zza(zzihVar, entry.getKey(), entry.getValue()));
            zzii.zza(this.zzpb, zzihVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, Object obj) {
        if (obj instanceof zzfx) {
            this.zzpb.zzb(i, (zzfx) obj);
        } else {
            this.zzpb.zza(i, (zziq) obj);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, Object obj, zzjf zzjfVar) {
        this.zzpb.zza(i, (zziq) obj, zzjfVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, List<String> list) {
        if (!(list instanceof zzhx)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzb(i, list.get(i2));
            }
            return;
        }
        zzhx zzhxVar = (zzhx) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object zzbd = zzhxVar.zzbd(i3);
            if (zzbd instanceof String) {
                this.zzpb.zzb(i, (String) zzbd);
            } else {
                this.zzpb.zza(i, (zzfx) zzbd);
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, List<?> list, zzjf zzjfVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzjfVar);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zza(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzar(list.get(i4).intValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzam(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzaz(int i) {
        this.zzpb.zzc(i, 3);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzb(int i, long j) {
        this.zzpb.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzb(int i, Object obj, zzjf zzjfVar) {
        zzgs zzgsVar = this.zzpb;
        zzgsVar.zzc(i, 3);
        zzjfVar.zza((zziq) obj, zzgsVar.zzpw);
        zzgsVar.zzc(i, 4);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzb(int i, String str) {
        this.zzpb.zzb(i, str);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzb(int i, List<zzfx> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzpb.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzb(int i, List<?> list, zzjf zzjfVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzjfVar);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzb(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzg(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzau(list.get(i4).intValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzap(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzba(int i) {
        this.zzpb.zzc(i, 4);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzc(int i, long j) {
        this.zzpb.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzc(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzi(list.get(i4).longValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzf(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzc(int i, boolean z) {
        this.zzpb.zzc(i, z);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzd(int i, int i2) {
        this.zzpb.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzd(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zza(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzj(list.get(i4).longValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzf(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zze(int i, int i2) {
        this.zzpb.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zze(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzl(list.get(i4).longValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzh(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzf(int i, int i2) {
        this.zzpb.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzf(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zza(i, list.get(i2).floatValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzc(list.get(i4).floatValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzb(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzg(int i, int i2) {
        this.zzpb.zzg(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzg(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zza(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzd(list.get(i4).doubleValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzc(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final int zzgd() {
        return zzhi.zze.zztx;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzh(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzd(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzaw(list.get(i4).intValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzam(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzi(int i, long j) {
        this.zzpb.zza(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzi(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzc(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zze(list.get(i4).booleanValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzd(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzj(int i, long j) {
        this.zzpb.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzj(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zze(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzas(list.get(i4).intValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzan(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzk(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzg(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzav(list.get(i4).intValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzap(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzl(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzc(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzm(list.get(i4).longValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzh(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzm(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzf(i, list.get(i2).intValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzat(list.get(i4).intValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzao(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzn(int i, int i2) {
        this.zzpb.zzg(i, i2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzn(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.zzpb.zzb(i, list.get(i2).longValue());
            }
            return;
        }
        this.zzpb.zzc(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzgs.zzk(list.get(i4).longValue());
        }
        this.zzpb.zzan(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.zzpb.zzg(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzku
    public final void zzo(int i, int i2) {
        this.zzpb.zzd(i, i2);
    }
}
