package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cqn;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqs.class */
abstract class cqs<V, C> extends cqn<V, C> {

    /* renamed from: a */
    private List<col<V>> f13595a;

    public cqs(cpb<? extends crt<? extends V>> cpbVar, boolean z) {
        super(cpbVar, true, true);
        this.f13595a = cpbVar.isEmpty() ? cpc.m10894g() : cpl.m10877a(cpbVar.size());
        for (int i = 0; i < cpbVar.size(); i++) {
            this.f13595a.add(null);
        }
    }

    /* renamed from: a */
    abstract C mo10796a(List<col<V>> list);

    @Override // com.google.android.gms.internal.ads.cqn
    /* renamed from: a */
    final void mo10801a(int i, @NullableDecl V v) {
        List<col<V>> list = this.f13595a;
        if (list != null) {
            list.set(i, col.m10945a(v));
        }
    }

    @Override // com.google.android.gms.internal.ads.cqn
    /* renamed from: a */
    public final void mo10800a(cqn.EnumC2889a enumC2889a) {
        super.mo10800a(enumC2889a);
        this.f13595a = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cqn
    /* renamed from: i */
    final void mo10797i() {
        List<col<V>> list = this.f13595a;
        if (list != null) {
            mo10753b((cqs<V, C>) mo10796a((List) list));
        }
    }
}
