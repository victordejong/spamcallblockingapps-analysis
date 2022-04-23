package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbuv;
import com.google.android.gms.internal.ads.zzva;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C4026sd;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuo.class */
public final class zzbuo extends zzbyr<zzbuv> implements zzbul {
    @VisibleForTesting
    public zzbuo(Set<zzcab<zzbuv>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: a */
    public final void mo14068a(zzccl zzcclVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: b */
    public final void mo14063b(final zzva zzvaVar) {
        m14941a(new zzbyt(zzvaVar) { // from class: c.d.b.d.g.a.td

            /* renamed from: a */
            public final zzva f15399a;

            {
                this.f15399a = zzvaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbyt
            /* renamed from: a */
            public final void mo14897a(Object obj) {
                ((zzbuv) obj).mo13498b(this.f15399a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    /* renamed from: m */
    public final void mo14061m() {
        m14941a(C4026sd.f15295a);
    }
}
