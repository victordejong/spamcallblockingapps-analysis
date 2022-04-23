package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbuy;
import java.util.Set;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4286zd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvb.class */
public final class zzbvb extends zzbyr<zzbuy> {
    public zzbvb(Set<zzcab<zzbuy>> set) {
        super(set);
    }

    /* renamed from: a */
    public final void m15030a(final Context context) {
        m14941a(new zzbyt(context) { // from class: c.d.b.d.g.a.wd

            /* renamed from: a */
            public final Context f15934a;

            {
                this.f15934a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbuy) obj).mo13998d(this.f15934a);
            }
        });
    }

    /* renamed from: a */
    public final void m15029a(zzcar zzcarVar, Executor executor) {
        m14940a(zzcab.m14868a(new C4286zd(this, zzcarVar), executor));
    }

    /* renamed from: c */
    public final void m15028c(final Context context) {
        m14941a(new zzbyt(context) { // from class: c.d.b.d.g.a.yd

            /* renamed from: a */
            public final Context f16214a;

            {
                this.f16214a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbuy) obj).mo13999c(this.f16214a);
            }
        });
    }

    /* renamed from: d */
    public final void m15027d(final Context context) {
        m14941a(new zzbyt(context) { // from class: c.d.b.d.g.a.xd

            /* renamed from: a */
            public final Context f16037a;

            {
                this.f16037a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbuy) obj).mo14003a(this.f16037a);
            }
        });
    }
}
