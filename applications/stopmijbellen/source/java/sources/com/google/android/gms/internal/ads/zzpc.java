package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpc.class */
public abstract class zzpc implements zzqb {
    private final ArrayList<zzqa> zza = new ArrayList<>(1);
    private final HashSet<zzqa> zzb = new HashSet<>(1);
    private final zzqi zzc = new zzqi();
    private final zzne zzd = new zzne();
    private Looper zze;
    private zzcd zzf;

    @Override // com.google.android.gms.internal.ads.zzqb
    public final /* synthetic */ zzcd zzF() {
        return null;
    }

    public final zzne zzb(zzpz zzpzVar) {
        return this.zzd.zza(0, zzpzVar);
    }

    public final zzne zzc(int i, zzpz zzpzVar) {
        return this.zzd.zza(i, zzpzVar);
    }

    public final zzqi zzd(zzpz zzpzVar) {
        return this.zzc.zza(0, zzpzVar, 0L);
    }

    public final zzqi zze(int i, zzpz zzpzVar, long j) {
        return this.zzc.zza(i, zzpzVar, 0L);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzf(Handler handler, zznf zznfVar) {
        Objects.requireNonNull(zznfVar);
        this.zzd.zzb(handler, zznfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzg(Handler handler, zzqj zzqjVar) {
        Objects.requireNonNull(zzqjVar);
        this.zzc.zzb(handler, zzqjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzh(zzqa zzqaVar) {
        boolean isEmpty = this.zzb.isEmpty();
        this.zzb.remove(zzqaVar);
        if (!(!isEmpty) || !this.zzb.isEmpty()) {
            return;
        }
        zzi();
    }

    public void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzj(zzqa zzqaVar) {
        Objects.requireNonNull(this.zze);
        boolean isEmpty = this.zzb.isEmpty();
        this.zzb.add(zzqaVar);
        if (isEmpty) {
            zzk();
        }
    }

    public void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzl(zzqa zzqaVar, zzdx zzdxVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zze;
        boolean z = true;
        if (looper != null) {
            z = looper == myLooper;
        }
        zzdy.zzd(z);
        zzcd zzcdVar = this.zzf;
        this.zza.add(zzqaVar);
        if (this.zze == null) {
            this.zze = myLooper;
            this.zzb.add(zzqaVar);
            zzm(zzdxVar);
        } else if (zzcdVar == null) {
        } else {
            zzj(zzqaVar);
            zzqaVar.zza(this, zzcdVar);
        }
    }

    public abstract void zzm(zzdx zzdxVar);

    public final void zzn(zzcd zzcdVar) {
        this.zzf = zzcdVar;
        ArrayList<zzqa> arrayList = this.zza;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).zza(this, zzcdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzo(zzqa zzqaVar) {
        this.zza.remove(zzqaVar);
        if (!this.zza.isEmpty()) {
            zzh(zzqaVar);
            return;
        }
        this.zze = null;
        this.zzf = null;
        this.zzb.clear();
        zzp();
    }

    public abstract void zzp();

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzq(zznf zznfVar) {
        this.zzd.zzc(zznfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzr(zzqj zzqjVar) {
        this.zzc.zzm(zzqjVar);
    }

    public final boolean zzs() {
        return !this.zzb.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final /* synthetic */ boolean zzt() {
        return true;
    }
}
