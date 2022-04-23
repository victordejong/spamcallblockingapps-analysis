package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmi.class */
public final class bmi {
    final Context e;
    final WeakReference<Context> f;
    final bjg g;
    final Executor h;
    final Executor i;
    final ScheduledExecutorService j;
    final blr k;
    final axn l;
    private final zzbar o;
    private boolean n = false;

    /* renamed from: a  reason: collision with root package name */
    boolean f24697a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f24698b = false;

    /* renamed from: d  reason: collision with root package name */
    final zp<Boolean> f24700d = new zp<>();
    private Map<String, zzajm> p = new ConcurrentHashMap();
    boolean m = true;

    /* renamed from: c  reason: collision with root package name */
    final long f24699c = zzr.zzlc().b();

    public bmi(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, bjg bjgVar, ScheduledExecutorService scheduledExecutorService, blr blrVar, zzbar zzbarVar, axn axnVar) {
        this.g = bjgVar;
        this.e = context;
        this.f = weakReference;
        this.h = executor2;
        this.j = scheduledExecutorService;
        this.i = executor;
        this.k = blrVar;
        this.o = zzbarVar;
        this.l = axnVar;
        a("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    private final dbt<String> c() {
        synchronized (this) {
            String str = zzr.zzkz().d().zzzg().f28532c;
            if (!TextUtils.isEmpty(str)) {
                return dbh.a(str);
            }
            final zp zpVar = new zp();
            zzr.zzkz().d().zzb(new Runnable(this, zpVar) { // from class: com.google.android.gms.internal.ads.bmn

                /* renamed from: a  reason: collision with root package name */
                private final bmi f24707a;

                /* renamed from: b  reason: collision with root package name */
                private final zp f24708b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24707a = this;
                    this.f24708b = zpVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final bmi bmiVar = this.f24707a;
                    final zp zpVar2 = this.f24708b;
                    bmiVar.h.execute(new Runnable(bmiVar, zpVar2) { // from class: com.google.android.gms.internal.ads.bmq

                        /* renamed from: a  reason: collision with root package name */
                        private final bmi f24714a;

                        /* renamed from: b  reason: collision with root package name */
                        private final zp f24715b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24714a = bmiVar;
                            this.f24715b = zpVar2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zp zpVar3 = this.f24715b;
                            String str2 = zzr.zzkz().d().zzzg().f28532c;
                            if (!TextUtils.isEmpty(str2)) {
                                zpVar3.set(str2);
                            } else {
                                zpVar3.setException(new Exception());
                            }
                        }
                    });
                }
            });
            return zpVar;
        }
    }

    public final void a() {
        if (((Boolean) ekb.e().a(aq.bh)).booleanValue() && !cq.f26246a.a().booleanValue()) {
            if (this.o.zzekb >= ((Integer) ekb.e().a(aq.bi)).intValue() && this.m) {
                if (!this.n) {
                    synchronized (this) {
                        if (!this.n) {
                            this.k.a();
                            this.l.a();
                            this.f24700d.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bmk

                                /* renamed from: a  reason: collision with root package name */
                                private final bmi f24703a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f24703a = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    bmi bmiVar = this.f24703a;
                                    bmiVar.k.b();
                                    bmiVar.l.b();
                                    bmiVar.f24697a = true;
                                }
                            }, this.h);
                            this.n = true;
                            dbt<String> c2 = c();
                            this.j.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bmm

                                /* renamed from: a  reason: collision with root package name */
                                private final bmi f24706a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f24706a = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    bmi bmiVar = this.f24706a;
                                    synchronized (bmiVar) {
                                        if (!bmiVar.f24698b) {
                                            bmiVar.a("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (zzr.zzlc().b() - bmiVar.f24699c));
                                            bmiVar.f24700d.setException(new Exception());
                                        }
                                    }
                                }
                            }, ((Long) ekb.e().a(aq.bk)).longValue(), TimeUnit.SECONDS);
                            dbh.a(c2, new bmt(this), this.h);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
        if (!this.n) {
            a("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.f24700d.set(Boolean.FALSE);
            this.n = true;
            this.f24697a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, boolean z, String str2, int i) {
        this.p.put(str, new zzajm(str, z, i, str2));
    }

    public final List<zzajm> b() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.p.keySet()) {
            zzajm zzajmVar = this.p.get(str);
            arrayList.add(new zzajm(str, zzajmVar.zzdkb, zzajmVar.zzdkc, zzajmVar.description));
        }
        return arrayList;
    }
}
