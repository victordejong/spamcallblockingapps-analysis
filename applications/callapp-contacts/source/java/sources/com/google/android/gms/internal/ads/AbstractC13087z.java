package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.C12759mz;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.gms.internal.ads.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/z.class */
public abstract class AbstractC13087z<T> implements Comparable<AbstractC13087z<T>> {
    private final Object mLock;
    private final C12759mz.C12760a zzao;
    private final int zzap;
    private final String zzaq;
    private final int zzar;
    private AbstractC12627ib zzas;
    private Integer zzat;
    private C12433dz zzau;
    private boolean zzav;
    private boolean zzaw;
    private boolean zzax;
    private boolean zzay;
    private boolean zzaz;
    private AbstractC12650iy zzba;
    private eap zzbb;
    private AbstractC12262cb zzbc;

    public AbstractC13087z(int i, String str, AbstractC12627ib abstractC12627ib) {
        this.zzao = C12759mz.C12760a.f49563a ? new C12759mz.C12760a() : null;
        this.mLock = new Object();
        this.zzav = true;
        this.zzaw = false;
        this.zzax = false;
        this.zzay = false;
        this.zzaz = false;
        this.zzbb = null;
        this.zzap = i;
        this.zzaq = str;
        this.zzas = abstractC12627ib;
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
        AbstractC13087z abstractC13087z = (AbstractC13087z) obj;
        EnumC12212ba enumC12212ba = EnumC12212ba.NORMAL;
        EnumC12212ba enumC12212ba2 = EnumC12212ba.NORMAL;
        return enumC12212ba == enumC12212ba2 ? this.zzat.intValue() - abstractC13087z.zzat.intValue() : enumC12212ba2.ordinal() - enumC12212ba.ordinal();
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
        String valueOf2 = String.valueOf(EnumC12212ba.NORMAL);
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

    public abstract C12545fa<T> zza(emg emgVar);

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC13087z<?> zza(C12433dz c12433dz) {
        this.zzau = c12433dz;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC13087z<?> zza(eap eapVar) {
        this.zzbb = eapVar;
        return this;
    }

    public final void zza(AbstractC12262cb abstractC12262cb) {
        synchronized (this.mLock) {
            this.zzbc = abstractC12262cb;
        }
    }

    public final void zza(C12545fa<?> c12545fa) {
        AbstractC12262cb abstractC12262cb;
        synchronized (this.mLock) {
            abstractC12262cb = this.zzbc;
        }
        if (abstractC12262cb != null) {
            abstractC12262cb.mo14228a(this, c12545fa);
        }
    }

    public abstract void zza(T t);

    public final void zzb(zzap zzapVar) {
        AbstractC12627ib abstractC12627ib;
        synchronized (this.mLock) {
            abstractC12627ib = this.zzas;
        }
        if (abstractC12627ib != null) {
            abstractC12627ib.zzd(zzapVar);
        }
    }

    public final void zzc(String str) {
        if (C12759mz.C12760a.f49563a) {
            this.zzao.m14476a(str, Thread.currentThread().getId());
        }
    }

    public final int zzd() {
        return this.zzar;
    }

    public final void zzd(int i) {
        C12433dz c12433dz = this.zzau;
        if (c12433dz != null) {
            c12433dz.m15436b();
        }
    }

    public final void zzd(String str) {
        C12433dz c12433dz = this.zzau;
        if (c12433dz != null) {
            synchronized (c12433dz.f48241a) {
                c12433dz.f48241a.remove(this);
            }
            synchronized (c12433dz.f48242b) {
                Iterator<Object> it2 = c12433dz.f48242b.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            c12433dz.m15436b();
        }
        if (C12759mz.C12760a.f49563a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC12211b(this, str, id));
                return;
            }
            this.zzao.m14476a(str, id);
            this.zzao.m14477a(toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC13087z<?> zze(int i) {
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
        return this.zzba.mo14594a();
    }

    public final AbstractC12650iy zzj() {
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
        AbstractC12262cb abstractC12262cb;
        synchronized (this.mLock) {
            abstractC12262cb = this.zzbc;
        }
        if (abstractC12262cb != null) {
            abstractC12262cb.mo14229a(this);
        }
    }
}
