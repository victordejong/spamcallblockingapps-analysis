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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgi.class */
public final class zzcgi implements zzaww {
    @VisibleForTesting
    public final zzcgf zza;
    private final zzg zze;
    private final Object zzd = new Object();
    @VisibleForTesting
    public final HashSet<zzcfy> zzb = new HashSet<>();
    @VisibleForTesting
    public final HashSet<zzcgh> zzc = new HashSet<>();
    private boolean zzg = false;
    private final zzcgg zzf = new zzcgg();

    public zzcgi(String str, zzg zzgVar) {
        this.zza = new zzcgf(str, zzgVar);
        this.zze = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaww
    public final void zza(boolean z) {
        long mo38787c = zzt.zzj().mo38787c();
        if (!z) {
            this.zze.zzq(mo38787c);
            this.zze.zzs(this.zza.zzd);
            return;
        }
        if (mo38787c - this.zze.zzr() > ((Long) zzbet.zzc().zzc(zzbjl.zzaE)).longValue()) {
            this.zza.zzd = -1;
        } else {
            this.zza.zzd = this.zze.zzt();
        }
        this.zzg = true;
    }

    public final void zzb(zzcfy zzcfyVar) {
        synchronized (this.zzd) {
            this.zzb.add(zzcfyVar);
        }
    }

    public final void zzc(HashSet<zzcfy> hashSet) {
        synchronized (this.zzd) {
            this.zzb.addAll(hashSet);
        }
    }

    public final void zzd() {
        synchronized (this.zzd) {
            this.zza.zza();
        }
    }

    public final void zze() {
        synchronized (this.zzd) {
            this.zza.zzb();
        }
    }

    public final void zzf(zzbdg zzbdgVar, long j) {
        synchronized (this.zzd) {
            this.zza.zzc(zzbdgVar, j);
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zza.zzd();
        }
    }

    public final void zzh() {
        synchronized (this.zzd) {
            this.zza.zze();
        }
    }

    public final zzcfy zzi(Clock clock, String str) {
        return new zzcfy(clock, this, this.zzf.zza(), str);
    }

    public final boolean zzj() {
        return this.zzg;
    }

    public final Bundle zzk(Context context, zzfbr zzfbrVar) {
        HashSet<zzcfy> hashSet = new HashSet<>();
        synchronized (this.zzd) {
            hashSet.addAll(this.zzb);
            this.zzb.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.zza.zzf(context, this.zzf.zzb()));
        Bundle bundle2 = new Bundle();
        Iterator<zzcgh> it = this.zzc.iterator();
        if (it.hasNext()) {
            it.next();
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<zzcfy> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().zzj());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        zzfbrVar.zzb(hashSet);
        return bundle;
    }
}
