package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzek.class */
final class zzek implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzlf;
    private final /* synthetic */ zzei zzlg;

    private zzek(zzei zzeiVar) {
        List list;
        this.zzlg = zzeiVar;
        list = this.zzlg.zzla;
        this.pos = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzek(zzei zzeiVar, zzej zzejVar) {
        this(zzeiVar);
    }

    private final Iterator<Map.Entry<K, V>> zzcn() {
        Map map;
        if (this.zzlf == null) {
            map = this.zzlg.zzld;
            this.zzlf = map.entrySet().iterator();
        }
        return this.zzlf;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        if (this.pos > 0) {
            int i = this.pos;
            list = this.zzlg.zzla;
            if (i <= list.size()) {
                return true;
            }
        }
        return zzcn().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object obj;
        if (zzcn().hasNext()) {
            obj = zzcn().next();
        } else {
            list = this.zzlg.zzla;
            int i = this.pos - 1;
            this.pos = i;
            obj = list.get(i);
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
