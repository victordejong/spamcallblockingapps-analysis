package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzeq.class */
public final class zzeq implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzor;
    private final /* synthetic */ zzei zzos;
    private boolean zzow;

    private zzeq(zzei zzeiVar) {
        this.zzos = zzeiVar;
        this.pos = -1;
    }

    public /* synthetic */ zzeq(zzei zzeiVar, zzej zzejVar) {
        this(zzeiVar);
    }

    private final Iterator<Map.Entry<K, V>> zzdw() {
        Map map;
        if (this.zzor == null) {
            map = this.zzos.zzon;
            this.zzor = map.entrySet().iterator();
        }
        return this.zzor;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzos.zzom;
        if (i >= list.size()) {
            map = this.zzos.zzon;
            return !map.isEmpty() && zzdw().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object next;
        List list2;
        this.zzow = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzos.zzom;
        if (i < list.size()) {
            list2 = this.zzos.zzom;
            next = list2.get(this.pos);
        } else {
            next = zzdw().next();
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzow) {
            this.zzow = false;
            this.zzos.zzdu();
            int i = this.pos;
            list = this.zzos.zzom;
            if (i >= list.size()) {
                zzdw().remove();
                return;
            }
            zzei zzeiVar = this.zzos;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzeiVar.zzal(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
