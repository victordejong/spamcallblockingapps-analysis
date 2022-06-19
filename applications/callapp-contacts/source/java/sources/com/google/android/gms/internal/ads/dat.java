package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dak;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dat.class */
public abstract class dat<V, C> extends dak<V, C> {

    /* renamed from: a */
    private List<dav<V>> f46903a;

    public dat(cyt<? extends dbt<? extends V>> cytVar, boolean z) {
        super(cytVar, true, true);
        cyz m17031g = cytVar.isEmpty() ? cyz.m17031g() : czg.m17013a(cytVar.size());
        for (int i = 0; i < cytVar.size(); i++) {
            m17031g.add(null);
        }
        this.f46903a = m17031g;
    }

    /* renamed from: a */
    abstract C mo16920a(List<dav<V>> list);

    @Override // com.google.android.gms.internal.ads.dak
    /* renamed from: a */
    final void mo16919a(int i, V v) {
        List<dav<V>> list = this.f46903a;
        if (list != null) {
            list.set(i, new dav<>(v));
        }
    }

    @Override // com.google.android.gms.internal.ads.dak
    /* renamed from: a */
    public final void mo16918a(dak.EnumC12313a enumC12313a) {
        super.mo16918a(enumC12313a);
        this.f46903a = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dak
    /* renamed from: i */
    final void mo16915i() {
        List<dav<V>> list = this.f46903a;
        if (list != null) {
            mo16881b((dat<V, C>) mo16920a((List) list));
        }
    }
}
