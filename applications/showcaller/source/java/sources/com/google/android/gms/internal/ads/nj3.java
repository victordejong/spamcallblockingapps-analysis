package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nj3.class */
public final class nj3<T> implements cj3<Set<T>> {

    /* renamed from: a */
    private static final cj3<Set<Object>> f27163a = dj3.m15781a(Collections.emptySet());

    /* renamed from: b */
    private final List<pj3<T>> f27164b;

    /* renamed from: c */
    private final List<pj3<Collection<T>>> f27165c;

    public /* synthetic */ nj3(List list, List list2, lj3 lj3Var) {
        this.f27164b = list;
        this.f27165c = list2;
    }

    /* renamed from: a */
    public static <T> mj3<T> m12896a(int i, int i2) {
        return new mj3<>(i, i2, null);
    }

    /* renamed from: c */
    public final Set<T> mo8141b() {
        int size = this.f27164b.size();
        ArrayList arrayList = new ArrayList(this.f27165c.size());
        int size2 = this.f27165c.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> mo8141b = this.f27165c.get(i).mo8141b();
            size += mo8141b.size();
            arrayList.add(mo8141b);
        }
        HashSet m8818b = yi3.m8818b(size);
        int size3 = this.f27164b.size();
        for (int i2 = 0; i2 < size3; i2++) {
            T mo8141b2 = this.f27164b.get(i2).mo8141b();
            Objects.requireNonNull(mo8141b2);
            m8818b.add(mo8141b2);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                Objects.requireNonNull(obj);
                m8818b.add(obj);
            }
        }
        return Collections.unmodifiableSet(m8818b);
    }
}
