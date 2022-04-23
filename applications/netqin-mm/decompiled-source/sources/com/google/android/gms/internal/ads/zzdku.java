package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbrl;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzdku;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdqk;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdku.class */
public final class zzdku<R extends zzbtn<AdT>, AdT extends zzbqo> implements zzdlv<R, zzdqk<AdT>> {

    /* renamed from: a */
    public R f27467a;

    /* renamed from: b */
    public final Executor f27468b = zzdze.m12975a();

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final zzdzc<zzdqk<AdT>> mo13517a(zzdlw zzdlwVar, zzdlx<R> zzdlxVar) {
        zzbtq<R> a = zzdlxVar.mo13516a(zzdlwVar.f27492b);
        a.mo15054a(new zzdmd(true));
        R c = a.mo15052c();
        this.f27467a = c;
        final zzbrl a2 = c.mo14140a();
        final zzdqk zzdqkVar = new zzdqk();
        zzatc zzatcVar = zzdlwVar.f27491a;
        return zzdyl.m12999d(zzatcVar != null ? a2.m15129a(zzatcVar) : a2.m15130a()).m13002a(new zzdya(this, zzdqkVar, a2) { // from class: c.d.b.d.g.a.jw

            /* renamed from: a */
            public final zzdku f13819a;

            /* renamed from: b */
            public final zzdqk f13820b;

            /* renamed from: c */
            public final zzbrl f13821c;

            {
                this.f13819a = this;
                this.f13820b = zzdqkVar;
                this.f13821c = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                zzdqk zzdqkVar2 = this.f13820b;
                zzbrl zzbrlVar = this.f13821c;
                zzdog zzdogVar = (zzdog) obj;
                zzdqkVar2.f27746b = zzdogVar;
                r8 = false;
                boolean z = false;
                loop0: for (zzdnv zzdnvVar : zzdogVar.f27634b.f27629a) {
                    for (String str : zzdnvVar.f27580a) {
                        if (!str.contains("FirstPartyRenderer")) {
                            break loop0;
                        }
                        z = true;
                    }
                }
                return !z ? zzdyq.m12988a((Object) null) : zzbrlVar.m15121b(zzdyq.m12988a(zzdogVar));
            }
        }, this.f27468b).m13003a(new zzdvu(zzdqkVar) { // from class: c.d.b.d.g.a.iw

            /* renamed from: a */
            public final zzdqk f13565a;

            {
                this.f13565a = zzdqkVar;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [AdT extends com.google.android.gms.internal.ads.zzbqo, com.google.android.gms.internal.ads.zzbqo] */
            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                zzdqk zzdqkVar2 = this.f13565a;
                zzdqkVar2.f27747c = (zzbqo) obj;
                return zzdqkVar2;
            }
        }, this.f27468b);
    }

    @Override // com.google.android.gms.internal.ads.zzdlv
    /* renamed from: a */
    public final /* synthetic */ Object mo13518a() {
        return this.f27467a;
    }
}
