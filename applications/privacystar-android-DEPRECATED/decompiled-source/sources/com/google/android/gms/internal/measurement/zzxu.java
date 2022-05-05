package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxu.class */
final class zzxu implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzccg;
    private final /* synthetic */ zzxm zzcch;
    private boolean zzccl;

    private zzxu(zzxm zzxmVar) {
        this.zzcch = zzxmVar;
        this.pos = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzxu(zzxm zzxmVar, zzxn zzxnVar) {
        this(zzxmVar);
    }

    private final Iterator<Map.Entry<K, V>> zzyb() {
        Map map;
        if (this.zzccg == null) {
            map = this.zzcch.zzccc;
            this.zzccg = map.entrySet().iterator();
        }
        return this.zzccg;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.pos + 1;
        list = this.zzcch.zzccb;
        if (i < list.size()) {
            return true;
        }
        map = this.zzcch.zzccc;
        return !map.isEmpty() && zzyb().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzccl = true;
        int i = this.pos + 1;
        this.pos = i;
        list = this.zzcch.zzccb;
        if (i >= list.size()) {
            return (Map.Entry) zzyb().next();
        }
        list2 = this.zzcch.zzccb;
        return (Map.Entry) list2.get(this.pos);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (!this.zzccl) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzccl = false;
        this.zzcch.zzxz();
        int i = this.pos;
        list = this.zzcch.zzccb;
        if (i < list.size()) {
            zzxm zzxmVar = this.zzcch;
            int i2 = this.pos;
            this.pos = i2 - 1;
            zzxmVar.zzbv(i2);
            return;
        }
        zzyb().remove();
    }
}
