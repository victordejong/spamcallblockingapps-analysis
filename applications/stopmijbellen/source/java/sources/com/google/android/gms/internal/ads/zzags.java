package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzags.class */
public abstract class zzags<T> implements Comparable<zzags<T>> {
    private final zzahd zza;
    private final int zzb;
    private final String zzc;
    private final int zzd;
    private final Object zze;
    private final zzagw zzf;
    private Integer zzg;
    private zzagv zzh;
    private boolean zzi;
    private zzagb zzj;
    private zzagr zzk;
    private final zzagg zzl;

    public zzags(int i, String str, zzagw zzagwVar) {
        this.zza = zzahd.zza ? new zzahd() : null;
        this.zze = new Object();
        this.zzi = false;
        this.zzj = null;
        this.zzb = i;
        this.zzc = str;
        this.zzf = zzagwVar;
        this.zzl = new zzagg();
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            i2 = 0;
            if (parse != null) {
                String host = parse.getHost();
                i2 = 0;
                if (host != null) {
                    i2 = host.hashCode();
                }
            }
        }
        this.zzd = i2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzg.intValue() - ((zzags) obj).zzg.intValue();
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzd));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        zzw();
        String str = this.zzc;
        String valueOf2 = String.valueOf(this.zzg);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(concat).length() + 6 + valueOf2.length());
        C0082b.m8749m(sb, "[ ] ", str, " ", concat);
        return C0082b.m8754h(sb, " NORMAL ", valueOf2);
    }

    public final int zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzl.zzb();
    }

    public final int zzc() {
        return this.zzd;
    }

    public final zzagb zzd() {
        return this.zzj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzags<?> zze(zzagb zzagbVar) {
        this.zzj = zzagbVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzags<?> zzf(zzagv zzagvVar) {
        this.zzh = zzagvVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzags<?> zzg(int i) {
        this.zzg = Integer.valueOf(i);
        return this;
    }

    public abstract zzagy<T> zzh(zzago zzagoVar);

    public final String zzj() {
        String str = this.zzc;
        String str2 = str;
        if (this.zzb != 0) {
            String num = Integer.toString(1);
            StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
            sb.append(num);
            sb.append('-');
            sb.append(str);
            str2 = sb.toString();
        }
        return str2;
    }

    public final String zzk() {
        return this.zzc;
    }

    public Map<String, String> zzl() throws zzaga {
        return Collections.emptyMap();
    }

    public final void zzm(String str) {
        if (zzahd.zza) {
            this.zza.zza(str, Thread.currentThread().getId());
        }
    }

    public final void zzn(zzahb zzahbVar) {
        zzagw zzagwVar;
        synchronized (this.zze) {
            zzagwVar = this.zzf;
        }
        if (zzagwVar != null) {
            zzagwVar.zza(zzahbVar);
        }
    }

    public abstract void zzo(T t);

    public final void zzp(String str) {
        zzagv zzagvVar = this.zzh;
        if (zzagvVar != null) {
            zzagvVar.zzb(this);
        }
        if (zzahd.zza) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzagq(this, str, id));
                return;
            }
            this.zza.zza(str, id);
            this.zza.zzb(toString());
        }
    }

    public final void zzq() {
        synchronized (this.zze) {
            this.zzi = true;
        }
    }

    public final void zzr() {
        zzagr zzagrVar;
        synchronized (this.zze) {
            zzagrVar = this.zzk;
        }
        if (zzagrVar != null) {
            zzagrVar.zza(this);
        }
    }

    public final void zzs(zzagy<?> zzagyVar) {
        zzagr zzagrVar;
        synchronized (this.zze) {
            zzagrVar = this.zzk;
        }
        if (zzagrVar != null) {
            zzagrVar.zzb(this, zzagyVar);
        }
    }

    public final void zzt(int i) {
        zzagv zzagvVar = this.zzh;
        if (zzagvVar != null) {
            zzagvVar.zzc(this, i);
        }
    }

    public final void zzu(zzagr zzagrVar) {
        synchronized (this.zze) {
            this.zzk = zzagrVar;
        }
    }

    public final boolean zzv() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzi;
        }
        return z;
    }

    public final boolean zzw() {
        synchronized (this.zze) {
        }
        return false;
    }

    public byte[] zzx() throws zzaga {
        return null;
    }

    public final zzagg zzy() {
        return this.zzl;
    }
}
