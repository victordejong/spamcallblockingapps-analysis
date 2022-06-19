package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dic.class */
public final class dic<T> implements dht<Set<T>> {

    /* renamed from: a */
    private static final dht<Set<Object>> f14388a = dhw.m9444a(Collections.emptySet());

    /* renamed from: b */
    private final List<dig<T>> f14389b;

    /* renamed from: c */
    private final List<dig<Collection<T>>> f14390c;

    /* JADX INFO: Access modifiers changed from: private */
    public dic(List<dig<T>> list, List<dig<Collection<T>>> list2) {
        this.f14389b = list;
        this.f14390c = list2;
    }

    /* renamed from: a */
    public static <T> die<T> m9437a(int i, int i2) {
        return new die<>(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        int size = this.f14389b.size();
        ArrayList arrayList = new ArrayList(this.f14390c.size());
        int size2 = this.f14390c.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> mo9430a = this.f14390c.get(i).mo9430a();
            size += mo9430a.size();
            arrayList.add(mo9430a);
        }
        HashSet m9450b = dhs.m9450b(size);
        int size3 = this.f14389b.size();
        for (int i2 = 0; i2 < size3; i2++) {
            m9450b.add(dhz.m9440a(this.f14389b.get(i2).mo9430a()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                m9450b.add(dhz.m9440a(obj));
            }
        }
        return Collections.unmodifiableSet(m9450b);
    }
}
