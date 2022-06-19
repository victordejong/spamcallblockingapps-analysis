package com.google.android.gms.measurement.internal;

import java.util.BitSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzn.class */
public final class zzn extends zzkb {
    private String zzb;
    private Set<Integer> zzc;
    private Map<Integer, zzp> zzd;

    public zzn(zzke zzkeVar) {
        super(zzkeVar);
    }

    private final zzp zza(int i) {
        if (this.zzd.containsKey(Integer.valueOf(i))) {
            return this.zzd.get(Integer.valueOf(i));
        }
        zzp zzpVar = new zzp(this, this.zzb, null);
        this.zzd.put(Integer.valueOf(i), zzpVar);
        return zzpVar;
    }

    private final boolean zza(int i, int i2) {
        BitSet bitSet;
        if (this.zzd.get(Integer.valueOf(i)) == null) {
            return false;
        }
        bitSet = this.zzd.get(Integer.valueOf(i)).zzd;
        return bitSet.get(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0459 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzbr.zza> zza(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.zzbr.zzc> r21, java.util.List<com.google.android.gms.internal.measurement.zzbr.zzk> r22, java.lang.Long r23) {
        /*
            Method dump skipped, instructions count: 2731
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzn.zza(java.lang.String, java.util.List, java.util.List, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }
}
