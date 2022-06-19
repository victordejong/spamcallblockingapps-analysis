package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcie.class */
public final class zzcie {
    private final Clock zza;
    private final zzcio zzb;
    private final String zze;
    private final String zzf;
    private final Object zzd = new Object();
    @GuardedBy("lock")
    private long zzg = -1;
    @GuardedBy("lock")
    private long zzh = -1;
    @GuardedBy("lock")
    private long zzi = 0;
    @GuardedBy("lock")
    private long zzj = -1;
    @GuardedBy("lock")
    private long zzk = -1;
    @GuardedBy("lock")
    private final LinkedList<zzcid> zzc = new LinkedList<>();

    public zzcie(Clock clock, zzcio zzcioVar, String str, String str2) {
        this.zza = clock;
        this.zzb = zzcioVar;
        this.zze = str;
        this.zzf = str2;
    }

    public final Bundle zza() {
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
            Iterator<zzcid> it2 = this.zzc.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().zzb());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final String zzc() {
        return this.zze;
    }

    public final void zzd() {
        synchronized (this.zzd) {
            if (this.zzk != -1) {
                zzcid zzcidVar = new zzcid(this);
                zzcidVar.zzd();
                this.zzc.add(zzcidVar);
                this.zzi++;
                this.zzb.zzd();
                this.zzb.zzc(this);
            }
        }
    }

    public final void zze() {
        synchronized (this.zzd) {
            if (this.zzk != -1 && !this.zzc.isEmpty()) {
                zzcid last = this.zzc.getLast();
                if (last.zza() == -1) {
                    last.zzc();
                    this.zzb.zzc(this);
                }
            }
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            if (this.zzk != -1 && this.zzg == -1) {
                this.zzg = this.zza.elapsedRealtime();
                this.zzb.zzc(this);
            }
            this.zzb.zze();
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zzb.zzf();
        }
    }

    public final void zzh(boolean z) {
        synchronized (this.zzd) {
            if (this.zzk != -1) {
                this.zzh = this.zza.elapsedRealtime();
            }
        }
    }

    public final void zzi() {
        synchronized (this.zzd) {
            this.zzb.zzg();
        }
    }

    public final void zzj(zzbfd zzbfdVar) {
        synchronized (this.zzd) {
            long elapsedRealtime = this.zza.elapsedRealtime();
            this.zzj = elapsedRealtime;
            this.zzb.zzh(zzbfdVar, elapsedRealtime);
        }
    }

    public final void zzk(long j) {
        synchronized (this.zzd) {
            this.zzk = j;
            if (j != -1) {
                this.zzb.zzc(this);
            }
        }
    }
}
