package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dak;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dat.class */
public abstract class dat<V, C> extends dak<V, C> {

    /* renamed from: a  reason: collision with root package name */
    private List<dav<V>> f26684a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dat(cyt<? extends dbt<? extends V>> cytVar, boolean z) {
        super(cytVar, true, true);
        List<dav<V>> g = cytVar.isEmpty() ? cyz.g() : czg.a(cytVar.size());
        for (int i = 0; i < cytVar.size(); i++) {
            g.add(null);
        }
        this.f26684a = g;
    }

    abstract C a(List<dav<V>> list);

    @Override // com.google.android.gms.internal.ads.dak
    final void a(int i, V v) {
        List<dav<V>> list = this.f26684a;
        if (list != null) {
            list.set(i, new dav<>(v));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dak
    public final void a(dak.a aVar) {
        super.a(aVar);
        this.f26684a = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dak
    final void i() {
        List<dav<V>> list = this.f26684a;
        if (list != null) {
            b((dat<V, C>) a((List) list));
        }
    }
}
