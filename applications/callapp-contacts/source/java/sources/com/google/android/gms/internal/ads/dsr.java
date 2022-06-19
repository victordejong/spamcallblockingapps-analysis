package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsr.class */
public final class dsr<T> implements dsi<Set<T>> {

    /* renamed from: a */
    private static final dsi<Set<Object>> f47517a = dsl.m15771a(Collections.emptySet());

    /* renamed from: b */
    private final List<dsv<T>> f47518b;

    /* renamed from: c */
    private final List<dsv<Collection<T>>> f47519c;

    /* JADX INFO: Access modifiers changed from: private */
    public dsr(List<dsv<T>> list, List<dsv<Collection<T>>> list2) {
        this.f47518b = list;
        this.f47519c = list2;
    }

    /* renamed from: a */
    public static <T> dst<T> m15763a(int i, int i2) {
        return new dst<>(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        int size = this.f47518b.size();
        ArrayList arrayList = new ArrayList(this.f47519c.size());
        int size2 = this.f47519c.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> mo14005a = this.f47519c.get(i).mo14005a();
            size += mo14005a.size();
            arrayList.add(mo14005a);
        }
        HashSet hashSet = new HashSet(dsg.m15775c(size));
        int size3 = this.f47518b.size();
        for (int i2 = 0; i2 < size3; i2++) {
            hashSet.add(dso.m15767a(this.f47518b.get(i2).mo14005a()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                hashSet.add(dso.m15767a(obj));
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
