package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zziy.class */
public final class zziy implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zziw zzaab;
    private Iterator<Map.Entry<K, V>> zzaac;

    private zziy(zziw zziwVar) {
        List list;
        this.zzaab = zziwVar;
        list = zziwVar.zzzw;
        this.pos = list.size();
    }

    public /* synthetic */ zziy(zziw zziwVar, zziv zzivVar) {
        this(zziwVar);
    }

    private final Iterator<Map.Entry<K, V>> zzic() {
        Map map;
        if (this.zzaac == null) {
            map = this.zzaab.zzzz;
            this.zzaac = map.entrySet().iterator();
        }
        return this.zzaac;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.pos;
        if (i > 0) {
            list = this.zzaab.zzzw;
            if (i <= list.size()) {
                return true;
            }
        }
        return zzic().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zzic().hasNext()) {
            return (Map.Entry) zzic().next();
        }
        list = this.zzaab.zzzw;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
