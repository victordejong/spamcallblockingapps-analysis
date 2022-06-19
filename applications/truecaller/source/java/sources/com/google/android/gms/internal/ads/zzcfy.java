package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfy.class */
public final class zzcfy {
    private final Clock zza;
    private final zzcgi zzb;
    private final String zze;
    private final String zzf;
    private final Object zzd = new Object();
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = 0;
    private long zzj = -1;
    private long zzk = -1;
    private final LinkedList<zzcfx> zzc = new LinkedList<>();

    public zzcfy(Clock clock, zzcgi zzcgiVar, String str, String str2) {
        this.zza = clock;
        this.zzb = zzcgiVar;
        this.zze = str;
        this.zzf = str2;
    }

    public final void zzb(zzbdg zzbdgVar) {
        synchronized (this.zzd) {
            long mo38789a = this.zza.mo38789a();
            this.zzj = mo38789a;
            this.zzb.zzf(zzbdgVar, mo38789a);
        }
    }

    public final void zzc() {
        synchronized (this.zzd) {
            this.zzb.zzg();
        }
    }

    public final void zzd() {
        synchronized (this.zzd) {
            this.zzb.zzh();
        }
    }

    public final void zze(long j) {
        synchronized (this.zzd) {
            this.zzk = j;
            if (j != -1) {
                this.zzb.zzb(this);
            }
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            if (this.zzk != -1 && this.zzg == -1) {
                this.zzg = this.zza.mo38789a();
                this.zzb.zzb(this);
            }
            this.zzb.zze();
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            if (this.zzk != -1) {
                zzcfx zzcfxVar = new zzcfx(this);
                zzcfxVar.zzc();
                this.zzc.add(zzcfxVar);
                this.zzi++;
                this.zzb.zzd();
                this.zzb.zzb(this);
            }
        }
    }

    public final void zzh() {
        synchronized (this.zzd) {
            if (this.zzk != -1 && !this.zzc.isEmpty()) {
                zzcfx last = this.zzc.getLast();
                if (last.zza() == -1) {
                    last.zzb();
                    this.zzb.zzb(this);
                }
            }
        }
    }

    public final void zzi(boolean z) {
        synchronized (this.zzd) {
            if (this.zzk != -1) {
                this.zzh = this.zza.mo38789a();
            }
        }
    }

    public final Bundle zzj() {
        Bundle bundle;
        synchronized (this.zzd) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zze);
            bundle.putString("slotid", this.zzf);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.zzj);
            bundle.putLong("tresponse", this.zzk);
            bundle.putLong("timp", this.zzg);
            bundle.putLong("tload", this.zzh);
            bundle.putLong("pcc", this.zzi);
            bundle.putLong("tfetch", -1L);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzcfx> it = this.zzc.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().zzd());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final String zzk() {
        return this.zze;
    }
}
