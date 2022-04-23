package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.mz;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/z.class */
public abstract class z<T> implements Comparable<z<T>> {
    private final Object mLock;
    private final mz.a zzao;
    private final int zzap;
    private final String zzaq;
    private final int zzar;
    private ib zzas;
    private Integer zzat;
    private dz zzau;
    private boolean zzav;
    private boolean zzaw;
    private boolean zzax;
    private boolean zzay;
    private boolean zzaz;
    private iy zzba;
    private eap zzbb;
    private cb zzbc;

    public z(int i, String str, ib ibVar) {
        this.zzao = mz.a.f28210a ? new mz.a() : null;
        this.mLock = new Object();
        this.zzav = true;
        this.zzaw = false;
        this.zzax = false;
        this.zzay = false;
        this.zzaz = false;
        this.zzbb = null;
        this.zzap = i;
        this.zzaq = str;
        this.zzas = ibVar;
        this.zzba = new eek();
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
        z zVar = (z) obj;
        ba baVar = ba.NORMAL;
        ba baVar2 = ba.NORMAL;
        return baVar == baVar2 ? this.zzat.intValue() - zVar.zzat.intValue() : baVar2.ordinal() - baVar.ordinal();
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
        String valueOf2 = String.valueOf(ba.NORMAL);
        String valueOf3 = String.valueOf(this.zzat);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(StringUtils.SPACE);
        sb.append(concat);
        sb.append(StringUtils.SPACE);
        sb.append(valueOf2);
        sb.append(StringUtils.SPACE);
        sb.append(valueOf3);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract fa<T> zza(emg emgVar);

    /* JADX WARN: Multi-variable type inference failed */
    public final z<?> zza(dz dzVar) {
        this.zzau = dzVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final z<?> zza(eap eapVar) {
        this.zzbb = eapVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(cb cbVar) {
        synchronized (this.mLock) {
            this.zzbc = cbVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(fa<?> faVar) {
        cb cbVar;
        synchronized (this.mLock) {
            cbVar = this.zzbc;
        }
        if (cbVar != null) {
            cbVar.a(this, faVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(T t);

    public final void zzb(zzap zzapVar) {
        ib ibVar;
        synchronized (this.mLock) {
            ibVar = this.zzas;
        }
        if (ibVar != null) {
            ibVar.zzd(zzapVar);
        }
    }

    public final void zzc(String str) {
        if (mz.a.f28210a) {
            this.zzao.a(str, Thread.currentThread().getId());
        }
    }

    public final int zzd() {
        return this.zzar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(int i) {
        dz dzVar = this.zzau;
        if (dzVar != null) {
            dzVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(String str) {
        dz dzVar = this.zzau;
        if (dzVar != null) {
            synchronized (dzVar.f27443a) {
                dzVar.f27443a.remove(this);
            }
            synchronized (dzVar.f27444b) {
                Iterator<Object> it2 = dzVar.f27444b.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            dzVar.b();
        }
        if (mz.a.f28210a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new b(this, str, id));
                return;
            }
            this.zzao.a(str, id);
            this.zzao.a(toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final z<?> zze(int i) {
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

    public final eap zzf() {
        return this.zzbb;
    }

    public byte[] zzg() throws zzl {
        return null;
    }

    public final boolean zzh() {
        return this.zzav;
    }

    public final int zzi() {
        return this.zzba.a();
    }

    public final iy zzj() {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzm() {
        cb cbVar;
        synchronized (this.mLock) {
            cbVar = this.zzbc;
        }
        if (cbVar != null) {
            cbVar.a(this);
        }
    }
}
