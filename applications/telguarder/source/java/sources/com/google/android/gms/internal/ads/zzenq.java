package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenq.class */
final class zzenq implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzeno zzius;
    private Iterator<Map.Entry<K, V>> zziut;

    private zzenq(zzeno zzenoVar) {
        List list;
        this.zzius = zzenoVar;
        list = zzenoVar.zziun;
        this.pos = list.size();
    }

    public /* synthetic */ zzenq(zzeno zzenoVar, zzenn zzennVar) {
        this(zzenoVar);
    }

    private final Iterator<Map.Entry<K, V>> zzbkv() {
        Map map;
        if (this.zziut == null) {
            map = this.zzius.zziuq;
            this.zziut = map.entrySet().iterator();
        }
        return this.zziut;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.pos;
        if (i > 0) {
            list = this.zzius.zziun;
            if (i <= list.size()) {
                return true;
            }
        }
        return zzbkv().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (zzbkv().hasNext()) {
            return (Map.Entry) zzbkv().next();
        }
        list = this.zzius.zziun;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
