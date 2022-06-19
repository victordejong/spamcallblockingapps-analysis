package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzgi;
import com.google.android.gms.internal.firebase-perf.zzgj;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgr.class */
final class zzgr implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzgj zztv;
    private Iterator<Map.Entry<K, V>> zztw;
    private boolean zzua;

    private zzgr(zzgj zzgjVar) {
        this.zztv = zzgjVar;
        this.pos = -1;
    }

    public /* synthetic */ zzgr(zzgj zzgjVar, zzgi zzgiVar) {
        this(zzgjVar);
    }

    private final Iterator<Map.Entry<K, V>> zzie() {
        Map map;
        if (this.zztw == null) {
            map = ((zzgj) this.zztv).zztr;
            this.zztw = map.entrySet().iterator();
        }
        return this.zztw;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = ((zzgj) this.zztv).zztq;
        if (i >= list.size()) {
            map = ((zzgj) this.zztv).zztr;
            return !map.isEmpty() && zzie().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzua = true;
        int i = this.pos + 1;
        this.pos = i;
        list = ((zzgj) this.zztv).zztq;
        if (i < list.size()) {
            list2 = ((zzgj) this.zztv).zztq;
            return (Map.Entry) list2.get(this.pos);
        }
        return (Map.Entry) zzie().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzua) {
            this.zzua = false;
            this.zztv.zzic();
            int i = this.pos;
            list = ((zzgj) this.zztv).zztq;
            if (i >= list.size()) {
                zzie().remove();
                return;
            }
            zzgj zzgjVar = this.zztv;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzgjVar.zzav(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
