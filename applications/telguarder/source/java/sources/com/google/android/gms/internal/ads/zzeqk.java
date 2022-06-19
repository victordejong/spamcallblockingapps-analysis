package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqk.class */
public final class zzeqk<T> implements zzeqb<Set<T>> {
    private static final zzeqb<Set<Object>> zzjcc = zzeqe.zzbb(Collections.emptySet());
    private final List<zzeqo<T>> zzjcd;
    private final List<zzeqo<Collection<T>>> zzjce;

    /* JADX INFO: Access modifiers changed from: private */
    public zzeqk(List<zzeqo<T>> list, List<zzeqo<Collection<T>>> list2) {
        this.zzjcd = list;
        this.zzjce = list2;
    }

    public static <T> zzeqm<T> zzas(int i, int i2) {
        return new zzeqm<>(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        int size = this.zzjcd.size();
        ArrayList arrayList = new ArrayList(this.zzjce.size());
        int size2 = this.zzjce.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> collection = this.zzjce.get(i).get();
            size += collection.size();
            arrayList.add(collection);
        }
        HashSet zzie = zzeqa.zzie(size);
        int size3 = this.zzjcd.size();
        for (int i2 = 0; i2 < size3; i2++) {
            zzie.add(zzeqh.checkNotNull(this.zzjcd.get(i2).get()));
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                zzie.add(zzeqh.checkNotNull(obj));
            }
        }
        return Collections.unmodifiableSet(zzie);
    }
}
