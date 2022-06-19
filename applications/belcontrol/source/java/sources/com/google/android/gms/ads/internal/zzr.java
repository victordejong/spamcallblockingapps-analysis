package com.google.android.gms.ads.internal;

import android.os.Build;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzam;
import com.google.android.gms.ads.internal.util.zzbl;
import com.google.android.gms.ads.internal.util.zzbo;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.ads.zzabu;
import com.google.android.gms.internal.ads.zzakn;
import com.google.android.gms.internal.ads.zzama;
import com.google.android.gms.internal.ads.zzanc;
import com.google.android.gms.internal.ads.zzarl;
import com.google.android.gms.internal.ads.zzaub;
import com.google.android.gms.internal.ads.zzaxc;
import com.google.android.gms.internal.ads.zzayo;
import com.google.android.gms.internal.ads.zzazz;
import com.google.android.gms.internal.ads.zzbai;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzrl;
import com.google.android.gms.internal.ads.zzsz;
import com.google.android.gms.internal.ads.zzts;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzr.class */
public final class zzr {
    private static zzr zzbpw = new zzr();
    private final zzb zzbpx;
    private final zzm zzbpy;
    private final zzj zzbpz;
    private final zzbej zzbqa;
    private final com.google.android.gms.ads.internal.util.zzr zzbqb;
    private final zzrl zzbqc;
    private final zzayo zzbqd;
    private final zzae zzbqe;
    private final zzsz zzbqf;
    private final Clock zzbqg;
    private final zze zzbqh;
    private final zzabu zzbqi;
    private final zzam zzbqj;
    private final zzaub zzbqk;
    private final zzakn zzbql;
    private final zzazz zzbqm;
    private final zzama zzbqn;
    private final zzbl zzbqo;
    private final zzy zzbqp;
    private final zzx zzbqq;
    private final zzanc zzbqr;
    private final zzbo zzbqs;
    private final zzarl zzbqt;
    private final zzts zzbqu;
    private final zzaxc zzbqv;
    private final zzbv zzbqw;
    private final zzbde zzbqx;
    private final zzbai zzbqy;

    public zzr() {
        this(new zzb(), new zzm(), new zzj(), new zzbej(), com.google.android.gms.ads.internal.util.zzr.zzdg(Build.VERSION.SDK_INT), new zzrl(), new zzayo(), new zzae(), new zzsz(), DefaultClock.getInstance(), new zze(), new zzabu(), new zzam(), new zzaub(), new zzakn(), new zzazz(), new zzama(), new zzbl(), new zzy(), new zzx(), new zzanc(), new zzbo(), new zzarl(), new zzts(), new zzaxc(), new zzbv(), new zzbde(), new zzbai());
    }

    private zzr(zzb zzbVar, zzm zzmVar, zzj zzjVar, zzbej zzbejVar, com.google.android.gms.ads.internal.util.zzr zzrVar, zzrl zzrlVar, zzayo zzayoVar, zzae zzaeVar, zzsz zzszVar, Clock clock, zze zzeVar, zzabu zzabuVar, zzam zzamVar, zzaub zzaubVar, zzakn zzaknVar, zzazz zzazzVar, zzama zzamaVar, zzbl zzblVar, zzy zzyVar, zzx zzxVar, zzanc zzancVar, zzbo zzboVar, zzarl zzarlVar, zzts zztsVar, zzaxc zzaxcVar, zzbv zzbvVar, zzbde zzbdeVar, zzbai zzbaiVar) {
        this.zzbpx = zzbVar;
        this.zzbpy = zzmVar;
        this.zzbpz = zzjVar;
        this.zzbqa = zzbejVar;
        this.zzbqb = zzrVar;
        this.zzbqc = zzrlVar;
        this.zzbqd = zzayoVar;
        this.zzbqe = zzaeVar;
        this.zzbqf = zzszVar;
        this.zzbqg = clock;
        this.zzbqh = zzeVar;
        this.zzbqi = zzabuVar;
        this.zzbqj = zzamVar;
        this.zzbqk = zzaubVar;
        this.zzbql = zzaknVar;
        this.zzbqm = zzazzVar;
        this.zzbqn = zzamaVar;
        this.zzbqo = zzblVar;
        this.zzbqp = zzyVar;
        this.zzbqq = zzxVar;
        this.zzbqr = zzancVar;
        this.zzbqs = zzboVar;
        this.zzbqt = zzarlVar;
        this.zzbqu = zztsVar;
        this.zzbqv = zzaxcVar;
        this.zzbqw = zzbvVar;
        this.zzbqx = zzbdeVar;
        this.zzbqy = zzbaiVar;
    }

    public static zzb zzkp() {
        return zzbpw.zzbpx;
    }

    public static zzm zzkq() {
        return zzbpw.zzbpy;
    }

    public static zzj zzkr() {
        return zzbpw.zzbpz;
    }

    public static zzbej zzks() {
        return zzbpw.zzbqa;
    }

    public static com.google.android.gms.ads.internal.util.zzr zzkt() {
        return zzbpw.zzbqb;
    }

    public static zzrl zzku() {
        return zzbpw.zzbqc;
    }

    public static zzayo zzkv() {
        return zzbpw.zzbqd;
    }

    public static zzae zzkw() {
        return zzbpw.zzbqe;
    }

    public static zzsz zzkx() {
        return zzbpw.zzbqf;
    }

    public static Clock zzky() {
        return zzbpw.zzbqg;
    }

    public static zze zzkz() {
        return zzbpw.zzbqh;
    }

    public static zzabu zzla() {
        return zzbpw.zzbqi;
    }

    public static zzam zzlb() {
        return zzbpw.zzbqj;
    }

    public static zzaub zzlc() {
        return zzbpw.zzbqk;
    }

    public static zzazz zzld() {
        return zzbpw.zzbqm;
    }

    public static zzama zzle() {
        return zzbpw.zzbqn;
    }

    public static zzbl zzlf() {
        return zzbpw.zzbqo;
    }

    public static zzarl zzlg() {
        return zzbpw.zzbqt;
    }

    public static zzy zzlh() {
        return zzbpw.zzbqp;
    }

    public static zzx zzli() {
        return zzbpw.zzbqq;
    }

    public static zzanc zzlj() {
        return zzbpw.zzbqr;
    }

    public static zzbo zzlk() {
        return zzbpw.zzbqs;
    }

    public static zzts zzll() {
        return zzbpw.zzbqu;
    }

    public static zzbv zzlm() {
        return zzbpw.zzbqw;
    }

    public static zzbde zzln() {
        return zzbpw.zzbqx;
    }

    public static zzbai zzlo() {
        return zzbpw.zzbqy;
    }

    public static zzaxc zzlp() {
        return zzbpw.zzbqv;
    }
}
