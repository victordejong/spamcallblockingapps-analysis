package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjs.class */
final class zzjs implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzjk zzwy;
    private Iterator<Map.Entry<K, V>> zzwz;
    private boolean zzxd;

    private zzjs(zzjk zzjkVar) {
        this.zzwy = zzjkVar;
        this.pos = -1;
    }

    public /* synthetic */ zzjs(zzjk zzjkVar, zzjj zzjjVar) {
        this(zzjkVar);
    }

    private final Iterator<Map.Entry<K, V>> zziw() {
        Map map;
        if (this.zzwz == null) {
            map = this.zzwy.zzwu;
            this.zzwz = map.entrySet().iterator();
        }
        return this.zzwz;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzwy.zzwt;
        if (i >= list.size()) {
            map = this.zzwy.zzwu;
            return !map.isEmpty() && zziw().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzxd = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzwy.zzwt;
        if (i < list.size()) {
            list2 = this.zzwy.zzwt;
            return (Map.Entry) list2.get(this.pos);
        }
        return (Map.Entry) zziw().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzxd) {
            this.zzxd = false;
            this.zzwy.zziu();
            int i = this.pos;
            list = this.zzwy.zzwt;
            if (i >= list.size()) {
                zziw().remove();
                return;
            }
            zzjk zzjkVar = this.zzwy;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzjkVar.zzbn(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
