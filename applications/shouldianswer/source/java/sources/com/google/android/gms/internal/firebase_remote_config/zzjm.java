package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjm.class */
final class zzjm implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzjk zzwy;
    private Iterator<Map.Entry<K, V>> zzwz;

    private zzjm(zzjk zzjkVar) {
        List list;
        this.zzwy = zzjkVar;
        list = this.zzwy.zzwt;
        this.pos = list.size();
    }

    public /* synthetic */ zzjm(zzjk zzjkVar, zzjj zzjjVar) {
        this(zzjkVar);
    }

    private final Iterator<Map.Entry<K, V>> zziw() {
        Map map;
        if (this.zzwz == null) {
            map = this.zzwy.zzww;
            this.zzwz = map.entrySet().iterator();
        }
        return this.zzwz;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.pos;
        if (i > 0) {
            list = this.zzwy.zzwt;
            if (i <= list.size()) {
                return true;
            }
        }
        return zziw().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zziw().hasNext()) {
            return (Map.Entry) zziw().next();
        }
        list = this.zzwy.zzwt;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
