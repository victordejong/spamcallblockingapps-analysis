package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaht.class */
public final class zzaht extends zzadm {
    private final int zza;
    private final int zzb;
    private final int[] zze;
    private final int[] zzf;
    private final zzaiq[] zzg;
    private final Object[] zzh;
    private final HashMap<Object, Integer> zzi = new HashMap<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public zzaht(Collection collection, Collection<? extends zzagt> collection2, zzix zzixVar) {
        super(false, collection2, null);
        int i = 0;
        int size = collection.size();
        this.zze = new int[size];
        this.zzf = new int[size];
        this.zzg = new zzaiq[size];
        this.zzh = new Object[size];
        Iterator it = collection.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            zzagt zzagtVar = (zzagt) it.next();
            this.zzg[i3] = zzagtVar.zzc();
            this.zzf[i3] = i;
            this.zze[i3] = i2;
            i += this.zzg[i3].zza();
            i2 += this.zzg[i3].zzg();
            this.zzh[i3] = zzagtVar.zzb();
            this.zzi.put(this.zzh[i3], Integer.valueOf(i3));
            i3++;
        }
        this.zza = i;
        this.zzb = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final int zzl(int i) {
        return zzamq.zzC(this.zze, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final int zzm(int i) {
        return zzamq.zzC(this.zzf, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final int zzn(Object obj) {
        Integer num = this.zzi.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final zzaiq zzo(int i) {
        return this.zzg[i];
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final int zzp(int i) {
        return this.zze[i];
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final int zzq(int i) {
        return this.zzf[i];
    }

    @Override // com.google.android.gms.internal.ads.zzadm
    public final Object zzr(int i) {
        return this.zzh[i];
    }

    public final List<zzaiq> zzs() {
        return Arrays.asList(this.zzg);
    }
}
