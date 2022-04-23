package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsr.class */
public final class dsr<T> implements dsi<Set<T>> {

    /* renamed from: a  reason: collision with root package name */
    private static final dsi<Set<Object>> f27161a = dsl.a(Collections.emptySet());

    /* renamed from: b  reason: collision with root package name */
    private final List<dsv<T>> f27162b;

    /* renamed from: c  reason: collision with root package name */
    private final List<dsv<Collection<T>>> f27163c;

    private dsr(List<dsv<T>> list, List<dsv<Collection<T>>> list2) {
        this.f27162b = list;
        this.f27163c = list2;
    }

    public static <T> dst<T> a(int i, int i2) {
        return new dst<>(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        int size = this.f27162b.size();
        ArrayList arrayList = new ArrayList(this.f27163c.size());
        int size2 = this.f27163c.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> a2 = this.f27163c.get(i).a();
            size += a2.size();
            arrayList.add(a2);
        }
        HashSet hashSet = new HashSet(dsg.c(size));
        int size3 = this.f27162b.size();
        for (int i2 = 0; i2 < size3; i2++) {
            hashSet.add(dso.a(this.f27162b.get(i2).a()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                hashSet.add(dso.a(obj));
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
