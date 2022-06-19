package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgz.class */
public final class zzbgz extends zzbgc {
    private zzeqo<zzbgc> zzewg;
    private final zzbgb zzewm;
    private zzeqo<String> zzewn;
    private zzeqo<zzazo> zzewo;
    private zzeqo<zzdrv> zzewp;
    private zzeqo<zzdrw> zzewq;
    private zzeqo<Context> zzewr;
    private zzeqo<zzazn> zzews;
    private zzeqo<zzdsh> zzewt;
    private zzeqo<zzdsf> zzewu;
    private zzeqo<zzdso> zzewv;
    private zzeqo<ThreadFactory> zzeww;
    private zzeqo<ScheduledExecutorService> zzewx;
    private zzeqo<zzdrz> zzewy;
    private zzeqo<Executor> zzewz;
    private zzeqo<zzdzv> zzexa;
    private zzeqo<Clock> zzexb;
    private zzeqo<zzcim> zzexc;
    private zzeqo<zzcin> zzexd;
    private zzeqo<zzcro<zzdog, zzctg>> zzexe;
    private zzeqo<zzcxj> zzexf;
    private zzeqo<WeakReference<Context>> zzexg;
    private zzeqo<String> zzexh;
    private zzeqo<zzckw> zzexi;
    private zzeqo<zzcla> zzexj;
    private zzeqo<zzcpj> zzexk;
    private zzeqo<Set<zzbya<zzbxl>>> zzexl;
    private zzeqo<Set<zzbya<zzbxl>>> zzexm;
    private zzeqo<zzbxg> zzexn;
    private zzeqo<zzclq> zzexo;
    private zzeqo<zzaxc> zzexp;
    private zzeqo<zzcip> zzexq;
    private zzeqo<zzbim> zzexr;
    private zzeqo<zzei> zzexs;
    private zzeqo<zzb> zzext;
    private zzeqo<zzcqr> zzexu;
    private zzeqo<zzdss> zzexv;
    private zzeqo<zzckn> zzexw;
    private zzeqo<zzcgt> zzexx;
    private zzeqo<zzdof<zzcgk>> zzexy;
    private zzeqo<zzczo> zzexz;
    private zzeqo<zzcrb> zzeya;
    private zzeqo<zzayo> zzeyb;
    private zzeqo zzeyc;
    private zzeqo<zzclc> zzeyd;
    private zzeqo<zzdzv> zzeye;
    private zzeqo zzeyf;
    private zzeqo<zzdch<zzdfp>> zzeyg;
    private zzeqo<zzdcb> zzeyh;
    private zzeqo<zzdch<zzdby>> zzeyi;
    private zzeqo<zzdmu> zzeyj;
    private zzeqo<zzdoc> zzeyk;
    private zzeqo<zzcro<zzdog, zzctd>> zzeyl;
    private zzeqo<zzbjd> zzeym;
    private zzeqo<zzaue> zzeyn;
    private zzeqo<HashMap<String, zzcpa>> zzeyo;
    private zzeqo<zzarz> zzeyp;
    private zzeqo<zzamj> zzeyq;
    private zzeqo<zzacv> zzeyr;
    private zzeqo<zzaxb> zzeys;
    private zzeqo<zzbts> zzeyt;
    private zzeqo<zzdov> zzeyu;
    private zzeqo<zzdpq> zzeyv;
    private zzeqo<zzdtm> zzeyw;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbgz(zzbgb zzbgbVar, zzbig zzbigVar, zzdru zzdruVar, zzbiq zzbiqVar, zzdol zzdolVar) {
        zzbiu zzbiuVar;
        zzbgt zzbgtVar;
        this.zzewm = zzbgbVar;
        zzeqo<String> zzau = zzeqc.zzau(new zzbgm(zzbgbVar));
        this.zzewn = zzau;
        this.zzewo = zzeql.zzau(new zzbir(zzau));
        zzdrx zzdrxVar = new zzdrx(zzdqj.zzaww(), this.zzewo);
        this.zzewp = zzdrxVar;
        this.zzewq = zzeqc.zzau(zzdrxVar);
        this.zzewr = new zzbge(zzbgbVar);
        zzbgp zzbgpVar = new zzbgp(zzbgbVar);
        this.zzews = zzbgpVar;
        this.zzewt = new zzdsk(this.zzewr, zzbgpVar);
        this.zzewu = zzeqc.zzau(new zzdsi(this.zzewq, zzdsm.zzaxn(), this.zzewt));
        this.zzewv = new zzdsn(zzdsm.zzaxn(), this.zzewt);
        zzeqo<ThreadFactory> zzau2 = zzeqc.zzau(zzdqs.zzaxf());
        this.zzeww = zzau2;
        zzeqo<ScheduledExecutorService> zzau3 = zzeqc.zzau(new zzdqp(zzau2));
        this.zzewx = zzau3;
        this.zzewy = zzeqc.zzau(new zzdsc(this.zzewu, this.zzewv, zzau3));
        this.zzewz = zzeqc.zzau(zzdqd.zzawr());
        this.zzexa = zzeqc.zzau(zzdqf.zzaws());
        this.zzexb = zzeqc.zzau(new zzdoo(zzdolVar));
        zzeqo<zzcim> zzau4 = zzeqc.zzau(zzcil.zzaps());
        this.zzexc = zzau4;
        zzeqo<zzcin> zzau5 = zzeqc.zzau(new zzciq(zzau4));
        this.zzexd = zzau5;
        this.zzexe = zzeqc.zzau(new zzbgl(zzbgbVar, zzau5));
        this.zzexf = zzeqc.zzau(new zzcxn(zzdqj.zzaww()));
        this.zzexg = new zzbgh(zzbgbVar);
        this.zzexh = zzeqc.zzau(new zzbgn(zzbgbVar));
        zzeqo<zzckw> zzau6 = zzeqc.zzau(new zzckx(zzdqj.zzaww(), this.zzewo, this.zzewt, zzdsm.zzaxn()));
        this.zzexi = zzau6;
        this.zzexj = zzeqc.zzau(new zzckz(this.zzexh, zzau6));
        zzeqo<zzcpj> zzau7 = zzeqc.zzau(new zzcpm(this.zzexh, this.zzewy));
        this.zzexk = zzau7;
        this.zzexl = zzeqc.zzau(new zzbgj(zzau7, zzdqj.zzaww()));
        zzeqk zzbmo = zzeqk.zzas(0, 1).zzax(this.zzexl).zzbmo();
        this.zzexm = zzbmo;
        this.zzexn = new zzbxm(zzbmo);
        this.zzexo = zzeqc.zzau(new zzcmc(this.zzewz, this.zzewr, this.zzexg, zzdqj.zzaww(), this.zzexd, this.zzewx, this.zzexj, this.zzews, this.zzexn));
        this.zzexp = zzeqc.zzau(new zzbje(zzbiqVar));
        zzeqo<zzcip> zzau8 = zzeqc.zzau(new zzcit(zzdqj.zzaww()));
        this.zzexq = zzau8;
        this.zzexr = zzeqc.zzau(new zzbin(this.zzewr, this.zzews, this.zzexd, this.zzexe, this.zzexf, this.zzexo, this.zzexp, zzau8));
        this.zzewg = zzeqe.zzbb(this);
        this.zzexs = zzeqc.zzau(new zzbgg(zzbgbVar));
        this.zzext = new zzbii(zzbigVar);
        this.zzexu = zzeqc.zzau(new zzcqz(this.zzewr, zzdqj.zzaww()));
        this.zzexv = zzeqc.zzau(new zzdsu(zzdqj.zzaww(), this.zzewo));
        this.zzexw = zzeqc.zzau(new zzcks(this.zzexi, zzdqj.zzaww()));
        zzeqo<Context> zzeqoVar = this.zzewr;
        zzeqo<Executor> zzeqoVar2 = this.zzewz;
        zzeqo<zzei> zzeqoVar3 = this.zzexs;
        zzeqo<zzazn> zzeqoVar4 = this.zzews;
        zzeqo<zzb> zzeqoVar5 = this.zzext;
        zzbiuVar = zzbit.zzfqt;
        zzeqo<zzcgt> zzau9 = zzeqc.zzau(new zzcgy(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzbiuVar, this.zzexu, this.zzexv, this.zzexw, this.zzewy));
        this.zzexx = zzau9;
        zzeqo<zzdof<zzcgk>> zzau10 = zzeqc.zzau(new zzbgo(zzau9, zzdqj.zzaww()));
        this.zzexy = zzau10;
        this.zzexz = zzeqc.zzau(new zzdac(this.zzewg, this.zzewr, this.zzexs, this.zzews, zzau10, zzdqj.zzaww(), this.zzewx));
        this.zzeya = zzeqc.zzau(new zzcrk(this.zzewr, this.zzexu, this.zzewo, this.zzexw, this.zzewy));
        this.zzeyb = zzeqc.zzau(new zzbgf(zzbgbVar));
        this.zzeyc = zzeqc.zzau(new zzdgx(this.zzewr));
        this.zzeyd = zzeqc.zzau(new zzclb(this.zzexb));
        this.zzeye = zzeqc.zzau(zzdql.zzawz());
        zzdfq zzdfqVar = new zzdfq(zzdqj.zzaww(), this.zzewr);
        this.zzeyf = zzdfqVar;
        this.zzeyg = zzeqc.zzau(new zzdcm(zzdfqVar, this.zzexb));
        zzdcd zzdcdVar = new zzdcd(zzdqj.zzaww(), this.zzewr);
        this.zzeyh = zzdcdVar;
        this.zzeyi = zzeqc.zzau(new zzdcn(zzdcdVar, this.zzexb));
        this.zzeyj = zzeqc.zzau(new zzdcp(this.zzexb));
        this.zzeyk = zzeqc.zzau(zzdob.zzavk());
        this.zzeyl = zzeqc.zzau(new zzbgi(zzbgbVar, this.zzexd));
        this.zzeym = new zzbgk(zzbgbVar, this.zzewg);
        this.zzeyn = new zzbgv(this.zzewr);
        zzbgtVar = zzbgs.zzewj;
        this.zzeyo = zzeqc.zzau(zzbgtVar);
        this.zzeyp = new zzbik(zzbigVar);
        this.zzeyq = zzeqc.zzau(new zzdrt(zzdruVar, this.zzewr, this.zzews));
        this.zzeyr = new zzbih(zzbigVar);
        this.zzeys = new zzbij(zzbigVar);
        this.zzeyt = new zzblw(this.zzewx, this.zzexb);
        this.zzeyu = zzeqc.zzau(zzdox.zzavo());
        this.zzeyv = zzeqc.zzau(zzdps.zzawj());
        this.zzeyw = zzeqc.zzau(new zzbip(this.zzewr));
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    protected final zzdga zza(zzdhj zzdhjVar) {
        zzeqh.checkNotNull(zzdhjVar);
        return new zzbhf(this, zzdhjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdrz zzaez() {
        return this.zzewy.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final Executor zzafa() {
        return this.zzewz.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final ScheduledExecutorService zzafb() {
        return this.zzewx.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final Executor zzafc() {
        return zzdqj.zzawx();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdzv zzafd() {
        return this.zzexa.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzbts zzafe() {
        return zzblw.zza(this.zzewx.get(), this.zzexb.get());
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzcin zzaff() {
        return this.zzexd.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzbim zzafg() {
        return this.zzexr.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzbmu zzafh() {
        return new zzbhm(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdjn zzafi() {
        return new zzbhq(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzbla zzafj() {
        return new zzbhj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzblj zzafk() {
        return new zzbhe(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdic zzafl() {
        return new zzbhk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzbzx zzafm() {
        return new zzbhv(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdle zzafn() {
        return new zzbhw(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzcat zzafo() {
        return new zzbhb(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzchh zzafp() {
        return new zzbia(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdmr zzafq() {
        return new zzbhy(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzczl zzafr() {
        return new zzbif(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzczo zzafs() {
        return this.zzexz.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzcrb zzaft() {
        return this.zzeya.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final zzdof<zzcgk> zzafu() {
        return this.zzexy.get();
    }
}
