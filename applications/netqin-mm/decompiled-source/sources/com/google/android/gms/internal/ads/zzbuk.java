package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbul;
import com.google.android.gms.internal.ads.zzccl;
import com.google.android.gms.internal.ads.zzva;
import java.util.Set;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3989rd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuk.class */
public final class zzbuk extends zzbyr<zzbul> implements zzbul {
    public zzbuk(zzbuo zzbuoVar, Set<zzcab<zzbul>> set, Executor executor) {
        super(set);
        m14939a(zzbuoVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: a */
    public final void mo14068a(final zzccl zzcclVar) {
        m14941a(new zzbyt(zzcclVar) { // from class: c.d.b.d.g.a.pd

            /* renamed from: a */
            public final zzccl f14527a;

            {
                this.f14527a = zzcclVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbul) obj).mo14068a(this.f14527a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: b */
    public final void mo14063b(final zzva zzvaVar) {
        m14941a(new zzbyt(zzvaVar) { // from class: c.d.b.d.g.a.qd

            /* renamed from: a */
            public final zzva f14796a;

            {
                this.f14796a = zzvaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbul) obj).mo14063b(this.f14796a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: m */
    public final void mo14061m() {
        m14941a(C3989rd.f14970a);
    }
}
