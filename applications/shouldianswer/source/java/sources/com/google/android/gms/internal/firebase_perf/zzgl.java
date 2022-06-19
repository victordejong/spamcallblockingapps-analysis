package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzgi;
import com.google.android.gms.internal.firebase-perf.zzgj;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgl.class */
final class zzgl implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzgj zztv;
    private Iterator<Map.Entry<K, V>> zztw;

    private zzgl(zzgj zzgjVar) {
        List list;
        this.zztv = zzgjVar;
        list = ((zzgj) this.zztv).zztq;
        this.pos = list.size();
    }

    public /* synthetic */ zzgl(zzgj zzgjVar, zzgi zzgiVar) {
        this(zzgjVar);
    }

    private final Iterator<Map.Entry<K, V>> zzie() {
        Map map;
        if (this.zztw == null) {
            map = ((zzgj) this.zztv).zztt;
            this.zztw = map.entrySet().iterator();
        }
        return this.zztw;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.pos;
        if (i > 0) {
            list = ((zzgj) this.zztv).zztq;
            if (i <= list.size()) {
                return true;
            }
        }
        return zzie().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zzie().hasNext()) {
            return (Map.Entry) zzie().next();
        }
        list = ((zzgj) this.zztv).zztq;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
