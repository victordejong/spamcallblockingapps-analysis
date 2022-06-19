package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajk.class */
public final class ajk implements aro, asd, ash, atb, eir {

    /* renamed from: a */
    private final Context f42208a;

    /* renamed from: b */
    private final Executor f42209b;

    /* renamed from: c */
    private final ScheduledExecutorService f42210c;

    /* renamed from: d */
    private final cpk f42211d;

    /* renamed from: e */
    private final cov f42212e;

    /* renamed from: f */
    private final cuq f42213f;

    /* renamed from: g */
    private final cpu f42214g;

    /* renamed from: h */
    private final die f42215h;

    /* renamed from: i */
    private final C12256bw f42216i;

    /* renamed from: j */
    private final AbstractC12257bx f42217j;

    /* renamed from: k */
    private final WeakReference<View> f42218k;

    /* renamed from: l */
    private boolean f42219l;

    /* renamed from: m */
    private boolean f42220m;

    public ajk(Context context, Executor executor, ScheduledExecutorService scheduledExecutorService, cpk cpkVar, cov covVar, cuq cuqVar, cpu cpuVar, View view, die dieVar, C12256bw c12256bw, AbstractC12257bx abstractC12257bx) {
        this.f42208a = context;
        this.f42209b = executor;
        this.f42210c = scheduledExecutorService;
        this.f42211d = cpkVar;
        this.f42212e = covVar;
        this.f42213f = cuqVar;
        this.f42214g = cpuVar;
        this.f42215h = dieVar;
        this.f42218k = new WeakReference<>(view);
        this.f42216i = c12256bw;
        this.f42217j = abstractC12257bx;
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        synchronized (this) {
            if (this.f42219l) {
                ArrayList arrayList = new ArrayList(this.f42212e.f46257d);
                arrayList.addAll(this.f42212e.f46259f);
                this.f42214g.m17354a(this.f42213f.m17210a(this.f42211d, this.f42212e, true, null, null, arrayList));
            } else {
                cpu cpuVar = this.f42214g;
                cuq cuqVar = this.f42213f;
                cpk cpkVar = this.f42211d;
                cov covVar = this.f42212e;
                cpuVar.m17354a(cuqVar.m17211a(cpkVar, covVar, covVar.f46266m));
                cpu cpuVar2 = this.f42214g;
                cuq cuqVar2 = this.f42213f;
                cpk cpkVar2 = this.f42211d;
                cov covVar2 = this.f42212e;
                cpuVar2.m17354a(cuqVar2.m17211a(cpkVar2, covVar2, covVar2.f46259f));
            }
            this.f42219l = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
        cpu cpuVar = this.f42214g;
        cuq cuqVar = this.f42213f;
        cov covVar = this.f42212e;
        cpuVar.m17354a(cuqVar.m17212a(covVar, covVar.f46261h, abstractC12939tp));
    }

    @Override // com.google.android.gms.internal.ads.asd
    /* renamed from: a_ */
    public final void mo17402a_(zzvh zzvhVar) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42717ba)).booleanValue()) {
            int i = zzvhVar.errorCode;
            List<String> list = this.f42212e.f46267n;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                StringBuilder sb = new StringBuilder(23);
                sb.append(2);
                sb.append(".");
                sb.append(i);
                arrayList.add(cuq.m17208a(str, "@gw_mpe@", sb.toString()));
            }
            this.f42214g.m17354a(this.f42213f.m17211a(this.f42211d, this.f42212e, arrayList));
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        synchronized (this) {
            if (!this.f42220m) {
                String str = null;
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42704bN)).booleanValue()) {
                    str = this.f42215h.f47085b.zza(this.f42208a, this.f42218k.get(), (Activity) null);
                }
                if (!(((Boolean) ekb.m14831e().m18571a(C12187aq.f42670ag)).booleanValue() && this.f42211d.f46319b.f46314b.f46295g) && C12277cm.f46064b.mo17481a().booleanValue()) {
                    dbh.m16901a(dbc.m16907c((dbt) this.f42217j.mo17533a()).m16912a(((Long) ekb.m14831e().m18571a(C12187aq.f42642aE)).longValue(), TimeUnit.MILLISECONDS, this.f42210c), new ajn(this, str), this.f42209b);
                    this.f42220m = true;
                }
                cpu cpuVar = this.f42214g;
                cuq cuqVar = this.f42213f;
                cpk cpkVar = this.f42211d;
                cov covVar = this.f42212e;
                cpuVar.m17354a(cuqVar.m17210a(cpkVar, covVar, false, str, null, covVar.f46257d));
                this.f42220m = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
        cpu cpuVar = this.f42214g;
        cuq cuqVar = this.f42213f;
        cpk cpkVar = this.f42211d;
        cov covVar = this.f42212e;
        cpuVar.m17354a(cuqVar.m17211a(cpkVar, covVar, covVar.f46260g));
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
        cpu cpuVar = this.f42214g;
        cuq cuqVar = this.f42213f;
        cpk cpkVar = this.f42211d;
        cov covVar = this.f42212e;
        cpuVar.m17354a(cuqVar.m17211a(cpkVar, covVar, covVar.f46262i));
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        if (!(((Boolean) ekb.m14831e().m18571a(C12187aq.f42670ag)).booleanValue() && this.f42211d.f46319b.f46314b.f46295g) && C12277cm.f46063a.mo17481a().booleanValue()) {
            dbh.m16901a(dbc.m16907c((dbt) this.f42217j.mo17532b()).m16912a(((Long) ekb.m14831e().m18571a(C12187aq.f42642aE)).longValue(), TimeUnit.MILLISECONDS, this.f42210c), new ajj(this), this.f42209b);
            return;
        }
        cpu cpuVar = this.f42214g;
        cuq cuqVar = this.f42213f;
        cpk cpkVar = this.f42211d;
        cov covVar = this.f42212e;
        List<String> m17211a = cuqVar.m17211a(cpkVar, covVar, covVar.f46256c);
        zzr.zzkv();
        cpuVar.m17353a(m17211a, zzj.zzbd(this.f42208a) ? brp.f44573b : brp.f44572a);
    }
}
