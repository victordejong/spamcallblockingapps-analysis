package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcun;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3479dp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcun.class */
public final class zzcun implements zzcta<zzboq> {

    /* renamed from: a */
    public final zzbpm f26552a;

    /* renamed from: b */
    public final zzctt f26553b;

    /* renamed from: c */
    public final zzdzb f26554c;

    /* renamed from: d */
    public final zzbug f26555d;

    /* renamed from: e */
    public final ScheduledExecutorService f26556e;

    public zzcun(zzbpm zzbpmVar, zzctt zzcttVar, zzbug zzbugVar, ScheduledExecutorService scheduledExecutorService, zzdzb zzdzbVar) {
        this.f26552a = zzbpmVar;
        this.f26553b = zzcttVar;
        this.f26555d = zzbugVar;
        this.f26556e = scheduledExecutorService;
        this.f26554c = zzdzbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        return zzdogVar.f27633a.f27632a.m13442a() != null && this.f26553b.mo13770a(zzdogVar, zzdnvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzboq> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        return this.f26554c.mo12977a(new Callable(this, zzdogVar, zzdnvVar) { // from class: c.d.b.d.g.a.cp

            /* renamed from: a */
            public final zzcun f12573a;

            /* renamed from: b */
            public final zzdog f12574b;

            /* renamed from: c */
            public final zzdnv f12575c;

            {
                this.f12573a = this;
                this.f12574b = zzdogVar;
                this.f12575c = zzdnvVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12573a.m13852c(this.f12574b, this.f12575c);
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ zzboq m13852c(final zzdog zzdogVar, final zzdnv zzdnvVar) throws Exception {
        return this.f26552a.mo15205a(new zzbre(zzdogVar, zzdnvVar, null), new zzbqa(zzdogVar.f27633a.f27632a.m13442a(), new Runnable(this, zzdogVar, zzdnvVar) { // from class: c.d.b.d.g.a.bp

            /* renamed from: a */
            public final zzcun f12491a;

            /* renamed from: b */
            public final zzdog f12492b;

            /* renamed from: c */
            public final zzdnv f12493c;

            {
                this.f12491a = this;
                this.f12492b = zzdogVar;
                this.f12493c = zzdnvVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12491a.m13851d(this.f12492b, this.f12493c);
            }
        })).mo15191a();
    }

    /* renamed from: d */
    public final /* synthetic */ void m13851d(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdyq.m12991a(zzdyq.m12994a(this.f26553b.mo13769b(zzdogVar, zzdnvVar), zzdnvVar.f27566M, TimeUnit.SECONDS, this.f26556e), new C3479dp(this), this.f26554c);
    }
}
