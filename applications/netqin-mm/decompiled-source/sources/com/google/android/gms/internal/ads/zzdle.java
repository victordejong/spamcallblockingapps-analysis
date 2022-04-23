package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzdle;
import com.google.android.gms.internal.ads.zzdlt;
import com.google.android.gms.internal.ads.zzdlw;
import com.google.android.gms.internal.ads.zzdlx;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3968qw;
import p131c.p161d.p170b.p224d.p252g.p253a.C4045sw;
import p131c.p161d.p170b.p224d.p252g.p253a.C4119uw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdle.class */
public final class zzdle<R extends zzbtn<AdT>, AdT extends zzbqo> implements zzdlv<R, zzdli<AdT>> {

    /* renamed from: a */
    public final zzdpz f27479a;

    /* renamed from: b */
    public final Executor f27480b;

    /* renamed from: c */
    public zzdyr<Void> f27481c = new C4045sw(this);

    public zzdle(zzdpz zzdpzVar, Executor executor) {
        this.f27479a = zzdpzVar;
        this.f27480b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final zzdzc<zzdli<AdT>> mo13517a(final zzdlw zzdlwVar, final zzdlx<R> zzdlxVar) {
        return zzdyl.m12999d(new C4119uw(this.f27479a, zzdlwVar.f27492b, zzdlxVar, this.f27480b).m26235a()).m13002a(new zzdya(this, zzdlwVar, zzdlxVar) { // from class: c.d.b.d.g.a.rw

            /* renamed from: a */
            public final zzdle f15045a;

            /* renamed from: b */
            public final zzdlw f15046b;

            /* renamed from: c */
            public final zzdlx f15047c;

            {
                this.f15045a = this;
                this.f15046b = zzdlwVar;
                this.f15047c = zzdlxVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f15045a.m13524a(this.f15046b, this.f15047c, (zzdlt) obj);
            }
        }, this.f27480b).m13001a(Exception.class, new C3968qw(this), this.f27480b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13524a(zzdlw zzdlwVar, zzdlx zzdlxVar, zzdlt zzdltVar) throws Exception {
        zzdqj zzdqjVar = zzdltVar.f27490b;
        zzatc zzatcVar = zzdltVar.f27489a;
        zzdqk<?> a = zzdqjVar != null ? this.f27479a.mo13318a(zzdqjVar) : null;
        if (zzdqjVar == null) {
            return zzdyq.m12988a((Object) null);
        }
        if (!(a == null || zzatcVar == null)) {
            zzdyq.m12991a(((zzbtn) zzdlxVar.mo13516a(zzdlwVar.f27492b).mo15052c()).mo14140a().m15119c(zzatcVar), this.f27481c, this.f27480b);
        }
        return zzdyq.m12988a(new zzdli(zzdqjVar, zzatcVar, a));
    }

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo13518a() {
        return null;
    }
}
