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

    /* renamed from: a  reason: collision with root package name */
    private final Context f23422a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f23423b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f23424c;

    /* renamed from: d  reason: collision with root package name */
    private final cpk f23425d;
    private final cov e;
    private final cuq f;
    private final cpu g;
    private final die h;
    private final bw i;
    private final bx j;
    private final WeakReference<View> k;
    private boolean l;
    private boolean m;

    public ajk(Context context, Executor executor, ScheduledExecutorService scheduledExecutorService, cpk cpkVar, cov covVar, cuq cuqVar, cpu cpuVar, View view, die dieVar, bw bwVar, bx bxVar) {
        this.f23422a = context;
        this.f23423b = executor;
        this.f23424c = scheduledExecutorService;
        this.f23425d = cpkVar;
        this.e = covVar;
        this.f = cuqVar;
        this.g = cpuVar;
        this.h = dieVar;
        this.k = new WeakReference<>(view);
        this.i = bwVar;
        this.j = bxVar;
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        synchronized (this) {
            if (this.l) {
                ArrayList arrayList = new ArrayList(this.e.f26186d);
                arrayList.addAll(this.e.f);
                this.g.a(this.f.a(this.f23425d, this.e, true, null, null, arrayList));
            } else {
                cpu cpuVar = this.g;
                cuq cuqVar = this.f;
                cpk cpkVar = this.f23425d;
                cov covVar = this.e;
                cpuVar.a(cuqVar.a(cpkVar, covVar, covVar.m));
                cpu cpuVar2 = this.g;
                cuq cuqVar2 = this.f;
                cpk cpkVar2 = this.f23425d;
                cov covVar2 = this.e;
                cpuVar2.a(cuqVar2.a(cpkVar2, covVar2, covVar2.f));
            }
            this.l = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(tp tpVar, String str, String str2) {
        cpu cpuVar = this.g;
        cuq cuqVar = this.f;
        cov covVar = this.e;
        cpuVar.a(cuqVar.a(covVar, covVar.h, tpVar));
    }

    @Override // com.google.android.gms.internal.ads.asd
    public final void a_(zzvh zzvhVar) {
        if (((Boolean) ekb.e().a(aq.ba)).booleanValue()) {
            int i = zzvhVar.errorCode;
            List<String> list = this.e.n;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                StringBuilder sb = new StringBuilder(23);
                sb.append(2);
                sb.append(".");
                sb.append(i);
                arrayList.add(cuq.a(str, "@gw_mpe@", sb.toString()));
            }
            this.g.a(this.f.a(this.f23425d, this.e, arrayList));
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        synchronized (this) {
            if (!this.m) {
                String str = null;
                if (((Boolean) ekb.e().a(aq.bN)).booleanValue()) {
                    str = this.h.f26844b.zza(this.f23422a, this.k.get(), (Activity) null);
                }
                if (!(((Boolean) ekb.e().a(aq.ag)).booleanValue() && this.f23425d.f26222b.f26217b.g) && cm.f26057b.a().booleanValue()) {
                    dbh.a(dbc.c((dbt) this.j.a()).a(((Long) ekb.e().a(aq.aE)).longValue(), TimeUnit.MILLISECONDS, this.f23424c), new ajn(this, str), this.f23423b);
                    this.m = true;
                }
                cpu cpuVar = this.g;
                cuq cuqVar = this.f;
                cpk cpkVar = this.f23425d;
                cov covVar = this.e;
                cpuVar.a(cuqVar.a(cpkVar, covVar, false, str, null, covVar.f26186d));
                this.m = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
        cpu cpuVar = this.g;
        cuq cuqVar = this.f;
        cpk cpkVar = this.f23425d;
        cov covVar = this.e;
        cpuVar.a(cuqVar.a(cpkVar, covVar, covVar.g));
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
        cpu cpuVar = this.g;
        cuq cuqVar = this.f;
        cpk cpkVar = this.f23425d;
        cov covVar = this.e;
        cpuVar.a(cuqVar.a(cpkVar, covVar, covVar.i));
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        if ((((Boolean) ekb.e().a(aq.ag)).booleanValue() && this.f23425d.f26222b.f26217b.g) || !cm.f26056a.a().booleanValue()) {
            cpu cpuVar = this.g;
            cuq cuqVar = this.f;
            cpk cpkVar = this.f23425d;
            cov covVar = this.e;
            List<String> a2 = cuqVar.a(cpkVar, covVar, covVar.f26185c);
            zzr.zzkv();
            cpuVar.a(a2, zzj.zzbd(this.f23422a) ? brp.f24957b : brp.f24956a);
            return;
        }
        dbh.a(dbc.c((dbt) this.j.b()).a(((Long) ekb.e().a(aq.aE)).longValue(), TimeUnit.MILLISECONDS, this.f23424c), new ajj(this), this.f23423b);
    }
}
