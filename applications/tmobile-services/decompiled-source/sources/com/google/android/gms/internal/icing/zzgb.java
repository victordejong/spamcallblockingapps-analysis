package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb.class */
final class zzgb implements Iterator<Map.Entry<K, V>> {

    /* renamed from: f */
    private int f8079f;

    /* renamed from: g */
    private Iterator<Map.Entry<K, V>> f8080g;

    /* renamed from: h */
    private final /* synthetic */ zzfz f8081h;

    private zzgb(zzfz zzfzVar) {
        List list;
        this.f8081h = zzfzVar;
        list = this.f8081h.f8072g;
        this.f8079f = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgb(zzfz zzfzVar, zzfy zzfyVar) {
        this(zzfzVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m13625a() {
        Map map;
        if (this.f8080g == null) {
            map = this.f8081h.f8076k;
            this.f8080g = map.entrySet().iterator();
        }
        return this.f8080g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f8079f;
        if (i > 0) {
            list = this.f8081h.f8072g;
            if (i <= list.size()) {
                return true;
            }
        }
        return m13625a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (m13625a().hasNext()) {
            return (Map.Entry) m13625a().next();
        }
        list = this.f8081h.f8072g;
        int i = this.f8079f - 1;
        this.f8079f = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
