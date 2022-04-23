package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepd.class */
public final class zzepd<T> implements zzeoy<Set<T>> {

    /* renamed from: a */
    public final List<zzeph<T>> f28144a;

    /* renamed from: b */
    public final List<zzeph<Collection<T>>> f28145b;

    static {
        zzeox.m12195a(Collections.emptySet());
    }

    public zzepd(List<zzeph<T>> list, List<zzeph<Collection<T>>> list2) {
        this.f28144a = list;
        this.f28145b = list2;
    }

    /* renamed from: a */
    public static <T> zzepf<T> m12190a(int i, int i2) {
        return new zzepf<>(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        int size = this.f28144a.size();
        ArrayList arrayList = new ArrayList(this.f28145b.size());
        int size2 = this.f28145b.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.f28145b.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet b = zzeot.m12201b(size);
        int size3 = this.f28144a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            T t = this.f28144a.get(i2).get();
            zzepe.m12189a(t);
            b.add(t);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                zzepe.m12189a(obj);
                b.add(obj);
            }
        }
        return Collections.unmodifiableSet(b);
    }
}
