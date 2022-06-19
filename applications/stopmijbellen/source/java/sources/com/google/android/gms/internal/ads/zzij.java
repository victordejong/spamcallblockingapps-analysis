package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzij.class */
public final class zzij extends zzfp {
    private final int zzc;
    private final int zzd;
    private final int[] zze;
    private final int[] zzf;
    private final zzcd[] zzg;
    private final Object[] zzh;
    private final HashMap<Object, Integer> zzi = new HashMap<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public zzij(Collection collection, Collection<? extends zzhy> collection2, zzrq zzrqVar) {
        super(false, collection2, null);
        int i = 0;
        int size = collection.size();
        this.zze = new int[size];
        this.zzf = new int[size];
        this.zzg = new zzcd[size];
        this.zzh = new Object[size];
        Iterator it2 = collection.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it2.hasNext()) {
            zzhy zzhyVar = (zzhy) it2.next();
            this.zzg[i3] = zzhyVar.zza();
            this.zzf[i3] = i;
            this.zze[i3] = i2;
            i += this.zzg[i3].zzc();
            i2 += this.zzg[i3].zzb();
            this.zzh[i3] = zzhyVar.zzb();
            this.zzi.put(this.zzh[i3], Integer.valueOf(i3));
            i3++;
        }
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final int zzp(Object obj) {
        Integer num = this.zzi.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final int zzq(int i) {
        return zzfn.zzc(this.zze, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final int zzr(int i) {
        return zzfn.zzc(this.zzf, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final int zzs(int i) {
        return this.zze[i];
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final int zzt(int i) {
        return this.zzf[i];
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final zzcd zzu(int i) {
        return this.zzg[i];
    }

    @Override // com.google.android.gms.internal.ads.zzfp
    public final Object zzv(int i) {
        return this.zzh[i];
    }

    public final List<zzcd> zzw() {
        return Arrays.asList(this.zzg);
    }
}
