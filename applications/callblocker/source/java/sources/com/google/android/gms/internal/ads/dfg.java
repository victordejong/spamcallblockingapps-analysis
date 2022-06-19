package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfg.class */
final class dfg implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f14206a;

    /* renamed from: b */
    private Iterator<Map.Entry<K, V>> f14207b;

    /* renamed from: c */
    private final /* synthetic */ dfe f14208c;

    private dfg(dfe dfeVar) {
        List list;
        this.f14208c = dfeVar;
        list = this.f14208c.f14196b;
        this.f14206a = list.size();
    }

    public /* synthetic */ dfg(dfe dfeVar, dfh dfhVar) {
        this(dfeVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m9764a() {
        Map map;
        if (this.f14207b == null) {
            map = this.f14208c.f14200f;
            this.f14207b = map.entrySet().iterator();
        }
        return this.f14207b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r0 > r1.size()) goto L6;
     */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasNext() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f14206a
            if (r0 <= 0) goto L1a
            r0 = r3
            int r0 = r0.f14206a
            r1 = r3
            com.google.android.gms.internal.ads.dfe r1 = r1.f14208c
            java.util.List r1 = com.google.android.gms.internal.ads.dfe.m9829b(r1)
            int r1 = r1.size()
            if (r0 <= r1) goto L26
        L1a:
            r0 = r3
            java.util.Iterator r0 = r0.m9764a()
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L2a
        L26:
            r0 = 1
            r4 = r0
        L28:
            r0 = r4
            return r0
        L2a:
            r0 = 0
            r4 = r0
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dfg.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Map.Entry entry;
        if (m9764a().hasNext()) {
            entry = (Map.Entry) m9764a().next();
        } else {
            list = this.f14208c.f14196b;
            int i = this.f14206a - 1;
            this.f14206a = i;
            entry = (Map.Entry) list.get(i);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
