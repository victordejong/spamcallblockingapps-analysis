package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kw2.class */
final class kw2 extends AbstractSet<Map.Entry> {

    /* renamed from: d */
    final /* synthetic */ zzfns f25857d;

    public kw2(zzfns zzfnsVar) {
        this.f25857d = zzfnsVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f25857d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int m7864g;
        Map zzg = this.f25857d.zzg();
        if (zzg != null) {
            return zzg.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        m7864g = this.f25857d.m7864g(entry.getKey());
        return m7864g != -1 && tu2.m10497a(zzfns.zzt(this.f25857d, m7864g), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        zzfns zzfnsVar = this.f25857d;
        Map zzg = zzfnsVar.zzg();
        return zzg != null ? zzg.entrySet().iterator() : new iw2(zzfnsVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int m7866e;
        int[] m7870a;
        Object[] m7869b;
        Object[] m7868c;
        int i;
        Map zzg = this.f25857d.zzg();
        if (zzg != null) {
            return zzg.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.f25857d.zzf()) {
            return false;
        }
        m7866e = this.f25857d.m7866e();
        Object key = entry.getKey();
        Object value = entry.getValue();
        Object zzo = zzfns.zzo(this.f25857d);
        m7870a = this.f25857d.m7870a();
        m7869b = this.f25857d.m7869b();
        m7868c = this.f25857d.m7868c();
        int m11775e = qw2.m11775e(key, value, m7866e, zzo, m7870a, m7869b, m7868c);
        if (m11775e == -1) {
            return false;
        }
        this.f25857d.zzl(m11775e, m7866e);
        zzfns zzfnsVar = this.f25857d;
        i = zzfnsVar.f34059j;
        zzfnsVar.f34059j = i - 1;
        this.f25857d.zzi();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f25857d.size();
    }
}
