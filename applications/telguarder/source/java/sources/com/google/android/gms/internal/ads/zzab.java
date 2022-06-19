package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzao;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzab.class */
public abstract class zzab<T> implements Comparable<zzab<T>> {
    private final Object mLock;
    private final zzao.zza zzao;
    private final int zzap;
    private final String zzaq;
    private final int zzar;
    private zzaj zzas;
    private Integer zzat;
    private zzaf zzau;
    private boolean zzav;
    private boolean zzaw;
    private boolean zzax;
    private boolean zzay;
    private boolean zzaz;
    private zzak zzba;
    private zzn zzbb;
    private zzad zzbc;

    public zzab(int i, String str, zzaj zzajVar) {
        this.zzao = zzao.zza.zzbv ? new zzao.zza() : null;
        this.mLock = new Object();
        this.zzav = true;
        this.zzaw = false;
        this.zzax = false;
        this.zzay = false;
        this.zzaz = false;
        this.zzbb = null;
        this.zzap = i;
        this.zzaq = str;
        this.zzas = zzajVar;
        this.zzba = new zzr();
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
        this.zzar = i2;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        zzab zzabVar = (zzab) obj;
        zzac zzacVar = zzac.NORMAL;
        zzac zzacVar2 = zzac.NORMAL;
        return zzacVar == zzacVar2 ? this.zzat.intValue() - zzabVar.zzat.intValue() : zzacVar2.ordinal() - zzacVar.ordinal();
    }

    public Map<String, String> getHeaders() throws zzl {
        return Collections.emptyMap();
    }

    public final int getMethod() {
        return this.zzap;
    }

    public final String getUrl() {
        return this.zzaq;
    }

    public final boolean isCanceled() {
        synchronized (this.mLock) {
        }
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzar));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        isCanceled();
        String str = this.zzaq;
        String valueOf2 = String.valueOf(zzac.NORMAL);
        String valueOf3 = String.valueOf(this.zzat);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(concat);
        sb.append(" ");
        sb.append(valueOf2);
        sb.append(" ");
        sb.append(valueOf3);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzab<?> zza(zzaf zzafVar) {
        this.zzau = zzafVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzab<?> zza(zzn zznVar) {
        this.zzbb = zznVar;
        return this;
    }

    public abstract zzag<T> zza(zzz zzzVar);

    public final void zza(zzad zzadVar) {
        synchronized (this.mLock) {
            this.zzbc = zzadVar;
        }
    }

    public final void zza(zzag<?> zzagVar) {
        zzad zzadVar;
        synchronized (this.mLock) {
            zzadVar = this.zzbc;
        }
        if (zzadVar != null) {
            zzadVar.zzb(this, zzagVar);
        }
    }

    public abstract void zza(T t);

    public final void zzb(zzap zzapVar) {
        zzaj zzajVar;
        synchronized (this.mLock) {
            zzajVar = this.zzas;
        }
        if (zzajVar != null) {
            zzajVar.zzd(zzapVar);
        }
    }

    public final void zzc(String str) {
        if (zzao.zza.zzbv) {
            this.zzao.zza(str, Thread.currentThread().getId());
        }
    }

    public final int zzd() {
        return this.zzar;
    }

    public final void zzd(int i) {
        zzaf zzafVar = this.zzau;
        if (zzafVar != null) {
            zzafVar.zzb(this, i);
        }
    }

    public final void zzd(String str) {
        zzaf zzafVar = this.zzau;
        if (zzafVar != null) {
            zzafVar.zze(this);
        }
        if (zzao.zza.zzbv) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzaa(this, str, id));
                return;
            }
            this.zzao.zza(str, id);
            this.zzao.zzd(toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzab<?> zze(int i) {
        this.zzat = Integer.valueOf(i);
        return this;
    }

    public final String zze() {
        String str = this.zzaq;
        int i = this.zzap;
        String str2 = str;
        if (i != 0) {
            if (i == -1) {
                str2 = str;
            } else {
                String num = Integer.toString(i);
                StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
                sb.append(num);
                sb.append('-');
                sb.append(str);
                str2 = sb.toString();
            }
        }
        return str2;
    }

    public final zzn zzf() {
        return this.zzbb;
    }

    public byte[] zzg() throws zzl {
        return null;
    }

    public final boolean zzh() {
        return this.zzav;
    }

    public final int zzi() {
        return this.zzba.zzb();
    }

    public final zzak zzj() {
        return this.zzba;
    }

    public final void zzk() {
        synchronized (this.mLock) {
            this.zzax = true;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzax;
        }
        return z;
    }

    public final void zzm() {
        zzad zzadVar;
        synchronized (this.mLock) {
            zzadVar = this.zzbc;
        }
        if (zzadVar != null) {
            zzadVar.zzc(this);
        }
    }
}
