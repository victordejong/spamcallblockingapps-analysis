package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzje.class */
public final class zzje implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zziw zzaab;
    private Iterator<Map.Entry<K, V>> zzaac;
    private boolean zzaag;

    private zzje(zziw zziwVar) {
        this.zzaab = zziwVar;
        this.pos = -1;
    }

    public /* synthetic */ zzje(zziw zziwVar, zziv zzivVar) {
        this(zziwVar);
    }

    private final Iterator<Map.Entry<K, V>> zzic() {
        Map map;
        if (this.zzaac == null) {
            map = this.zzaab.zzzx;
            this.zzaac = map.entrySet().iterator();
        }
        return this.zzaac;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzaab.zzzw;
        if (i >= list.size()) {
            map = this.zzaab.zzzx;
            return !map.isEmpty() && zzic().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzaag = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzaab.zzzw;
        if (i < list.size()) {
            list2 = this.zzaab.zzzw;
            return (Map.Entry) list2.get(this.pos);
        }
        return (Map.Entry) zzic().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzaag) {
            this.zzaag = false;
            this.zzaab.zzia();
            int i = this.pos;
            list = this.zzaab.zzzw;
            if (i >= list.size()) {
                zzic().remove();
                return;
            }
            zziw zziwVar = this.zzaab;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zziwVar.zzbv(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
