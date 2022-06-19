package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenw.class */
final class zzenw implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzeno zzius;
    private Iterator<Map.Entry<K, V>> zziut;
    private boolean zziux;

    private zzenw(zzeno zzenoVar) {
        this.zzius = zzenoVar;
        this.pos = -1;
    }

    public /* synthetic */ zzenw(zzeno zzenoVar, zzenn zzennVar) {
        this(zzenoVar);
    }

    private final Iterator<Map.Entry<K, V>> zzbkv() {
        Map map;
        if (this.zziut == null) {
            map = this.zzius.zziuo;
            this.zziut = map.entrySet().iterator();
        }
        return this.zziut;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzius.zziun;
        if (i >= list.size()) {
            map = this.zzius.zziuo;
            return !map.isEmpty() && zzbkv().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zziux = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzius.zziun;
        if (i < list.size()) {
            list2 = this.zzius.zziun;
            return (Map.Entry) list2.get(this.pos);
        }
        return (Map.Entry) zzbkv().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zziux) {
            this.zziux = false;
            this.zzius.zzbkt();
            int i = this.pos;
            list = this.zzius.zziun;
            if (i >= list.size()) {
                zzbkv().remove();
                return;
            }
            zzeno zzenoVar = this.zzius;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzenoVar.zzhv(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
