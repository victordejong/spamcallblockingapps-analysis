package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzeq.class */
final class zzeq implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzlf;
    private final /* synthetic */ zzei zzlg;
    private boolean zzlk;

    private zzeq(zzei zzeiVar) {
        this.zzlg = zzeiVar;
        this.pos = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzeq(zzei zzeiVar, zzej zzejVar) {
        this(zzeiVar);
    }

    private final Iterator<Map.Entry<K, V>> zzcn() {
        Map map;
        if (this.zzlf == null) {
            map = this.zzlg.zzlb;
            this.zzlf = map.entrySet().iterator();
        }
        return this.zzlf;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzlg.zzla;
        if (i < list.size()) {
            return true;
        }
        map = this.zzlg.zzlb;
        return !map.isEmpty() && zzcn().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object next;
        List list2;
        this.zzlk = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzlg.zzla;
        if (i < list.size()) {
            list2 = this.zzlg.zzla;
            next = list2.get(this.pos);
        } else {
            next = zzcn().next();
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (!this.zzlk) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzlk = false;
        this.zzlg.zzcl();
        int i = this.pos;
        list = this.zzlg.zzla;
        if (i < list.size()) {
            zzei zzeiVar = this.zzlg;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzeiVar.zzag(i2);
            return;
        }
        zzcn().remove();
    }
}
