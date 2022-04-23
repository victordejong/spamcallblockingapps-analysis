package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdhz;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3369av;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhz.class */
public final class zzdhz implements zzdgx<zzdhw> {

    /* renamed from: a */
    public final zzaxx f27356a;

    /* renamed from: b */
    public final int f27357b;

    /* renamed from: c */
    public final Context f27358c;

    /* renamed from: d */
    public final zzayb f27359d;

    /* renamed from: e */
    public final ScheduledExecutorService f27360e;

    /* renamed from: f */
    public final Executor f27361f;

    public zzdhz(zzaxx zzaxxVar, int i, Context context, zzayb zzaybVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f27356a = zzaxxVar;
        this.f27357b = i;
        this.f27358c = context;
        this.f27359d = zzaybVar;
        this.f27360e = scheduledExecutorService;
        this.f27361f = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdhw m13591a(Exception exc) {
        this.f27359d.m16188a(exc, "AttestationTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdhw> mo13576a() {
        return zzdyl.m12999d(zzdyq.m12995a(new zzdyb(this) { // from class: c.d.b.d.g.a.xu

            /* renamed from: a */
            public final zzdhz f16067a;

            {
                this.f16067a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdyb
            /* renamed from: a */
            public final zzdzc mo13005a() {
                return this.f16067a.m13590b();
            }
        }, this.f27361f)).m13003a(C3369av.f12314a, this.f27361f).m13004a(((Long) zzwm.m11166e().m16921a(zzabb.f23890t0)).longValue(), TimeUnit.MILLISECONDS, this.f27360e).m13001a(Exception.class, new zzdvu(this) { // from class: c.d.b.d.g.a.zu

            /* renamed from: a */
            public final zzdhz f16468a;

            {
                this.f16468a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return this.f16468a.m13591a((Exception) obj);
            }
        }, zzdze.m12975a());
    }

    /* renamed from: b */
    public final /* synthetic */ zzdzc m13590b() throws Exception {
        return this.f27356a.mo16201a(this.f27358c, this.f27357b);
    }
}
