package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcio.class */
public final class zzcio implements zzayt {
    @VisibleForTesting
    public final zzcil zza;
    private final zzg zze;
    private final Object zzd = new Object();
    @VisibleForTesting
    public final HashSet<zzcie> zzb = new HashSet<>();
    @VisibleForTesting
    public final HashSet<zzcin> zzc = new HashSet<>();
    private boolean zzg = false;
    private final zzcim zzf = new zzcim();

    public zzcio(String str, zzg zzgVar) {
        this.zza = new zzcil(str, zzgVar);
        this.zze = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayt
    public final void zza(boolean z) {
        long currentTimeMillis = zzt.zzA().currentTimeMillis();
        if (!z) {
            this.zze.zzr(currentTimeMillis);
            this.zze.zzF(this.zza.zzd);
            return;
        }
        if (currentTimeMillis - this.zze.zzc() > ((Long) zzbgq.zzc().zzb(zzblj.zzaH)).longValue()) {
            this.zza.zzd = -1;
        } else {
            this.zza.zzd = this.zze.zzb();
        }
        this.zzg = true;
    }

    public final zzcie zzb(Clock clock, String str) {
        return new zzcie(clock, this, this.zzf.zza(), str);
    }

    public final void zzc(zzcie zzcieVar) {
        synchronized (this.zzd) {
            this.zzb.add(zzcieVar);
        }
    }

    public final void zzd() {
        synchronized (this.zzd) {
            this.zza.zzb();
        }
    }

    public final void zze() {
        synchronized (this.zzd) {
            this.zza.zzc();
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            this.zza.zzd();
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zza.zze();
        }
    }

    public final void zzh(zzbfd zzbfdVar, long j) {
        synchronized (this.zzd) {
            this.zza.zzf(zzbfdVar, j);
        }
    }

    public final void zzi(HashSet<zzcie> hashSet) {
        synchronized (this.zzd) {
            this.zzb.addAll(hashSet);
        }
    }

    public final boolean zzj() {
        return this.zzg;
    }

    public final Bundle zzk(Context context, zzffd zzffdVar) {
        HashSet<zzcie> hashSet = new HashSet<>();
        synchronized (this.zzd) {
            hashSet.addAll(this.zzb);
            this.zzb.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.zza.zza(context, this.zzf.zzb()));
        Bundle bundle2 = new Bundle();
        Iterator<zzcin> it2 = this.zzc.iterator();
        if (it2.hasNext()) {
            it2.next();
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<zzcie> it3 = hashSet.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().zza());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        zzffdVar.zzc(hashSet);
        return bundle;
    }
}
