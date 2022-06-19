package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.util.Collections;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwc.class */
public abstract class zzwc<T> implements Comparable<zzwc<T>> {
    private final zzwn zza;
    private final int zzb;
    private final String zzc;
    private final int zzd;
    private final Object zze;
    private final zzwg zzf;
    private Integer zzg;
    private zzwf zzh;
    private boolean zzi;
    private zzvl zzj;
    private zzwb zzk;
    private final zzvq zzl;

    public zzwc(int i, String str, zzwg zzwgVar) {
        this.zza = zzwn.zza ? new zzwn() : null;
        this.zze = new Object();
        this.zzi = false;
        this.zzj = null;
        this.zzb = i;
        this.zzc = str;
        this.zzf = zzwgVar;
        this.zzl = new zzvq();
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
        return this.zzg.intValue() - ((zzwc) obj).zzg.intValue();
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzd));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        zzm();
        String str = this.zzc;
        String valueOf2 = String.valueOf(this.zzg);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(concat).length() + 6 + valueOf2.length());
        C22128a.m8666T0(sb, "[ ] ", str, StringConstant.SPACE, concat);
        return C22128a.m8618h(sb, " NORMAL ", valueOf2);
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zzd;
    }

    public final void zzd(String str) {
        if (zzwn.zza) {
            this.zza.zza(str, Thread.currentThread().getId());
        }
    }

    public final void zze(String str) {
        zzwf zzwfVar = this.zzh;
        if (zzwfVar != null) {
            zzwfVar.zzc(this);
        }
        if (zzwn.zza) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzwa(this, str, id));
                return;
            }
            this.zza.zza(str, id);
            this.zza.zzb(toString());
        }
    }

    public final void zzf(int i) {
        zzwf zzwfVar = this.zzh;
        if (zzwfVar != null) {
            zzwfVar.zzd(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzwc<?> zzg(zzwf zzwfVar) {
        this.zzh = zzwfVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzwc<?> zzh(int i) {
        this.zzg = Integer.valueOf(i);
        return this;
    }

    public final String zzi() {
        return this.zzc;
    }

    public final String zzj() {
        String str = this.zzc;
        String str2 = str;
        if (this.zzb != 0) {
            String num = Integer.toString(1);
            str2 = C22128a.m8622g(new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length()), num, '-', str);
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzwc<?> zzk(zzvl zzvlVar) {
        this.zzj = zzvlVar;
        return this;
    }

    public final zzvl zzl() {
        return this.zzj;
    }

    public final boolean zzm() {
        synchronized (this.zze) {
        }
        return false;
    }

    public Map<String, String> zzn() throws zzvk {
        return Collections.emptyMap();
    }

    public byte[] zzo() throws zzvk {
        return null;
    }

    public final int zzp() {
        return this.zzl.zza();
    }

    public final void zzq() {
        synchronized (this.zze) {
            this.zzi = true;
        }
    }

    public final boolean zzr() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzi;
        }
        return z;
    }

    public abstract zzwi<T> zzs(zzvy zzvyVar);

    public abstract void zzt(T t);

    public final void zzu(zzwl zzwlVar) {
        zzwg zzwgVar;
        synchronized (this.zze) {
            zzwgVar = this.zzf;
        }
        if (zzwgVar != null) {
            zzwgVar.zza(zzwlVar);
        }
    }

    public final void zzv(zzwb zzwbVar) {
        synchronized (this.zze) {
            this.zzk = zzwbVar;
        }
    }

    public final void zzw(zzwi<?> zzwiVar) {
        zzwb zzwbVar;
        synchronized (this.zze) {
            zzwbVar = this.zzk;
        }
        if (zzwbVar != null) {
            zzwbVar.zza(this, zzwiVar);
        }
    }

    public final void zzx() {
        zzwb zzwbVar;
        synchronized (this.zze) {
            zzwbVar = this.zzk;
        }
        if (zzwbVar != null) {
            zzwbVar.zzb(this);
        }
    }

    public final zzvq zzy() {
        return this.zzl;
    }
}
