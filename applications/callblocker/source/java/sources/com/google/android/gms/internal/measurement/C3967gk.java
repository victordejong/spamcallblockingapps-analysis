package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.gk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gk.class */
final class C3967gk implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f18215a;

    /* renamed from: b */
    private Iterator<Map.Entry<K, V>> f18216b;

    /* renamed from: c */
    private final /* synthetic */ C3965gi f18217c;

    private C3967gk(C3965gi c3965gi) {
        List list;
        this.f18217c = c3965gi;
        list = this.f18217c.f18208b;
        this.f18215a = list.size();
    }

    public /* synthetic */ C3967gk(C3965gi c3965gi, C3964gh c3964gh) {
        this(c3965gi);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m5346a() {
        Map map;
        if (this.f18216b == null) {
            map = this.f18217c.f18212f;
            this.f18216b = map.entrySet().iterator();
        }
        return this.f18216b;
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
            int r0 = r0.f18215a
            if (r0 <= 0) goto L1a
            r0 = r3
            int r0 = r0.f18215a
            r1 = r3
            com.google.android.gms.internal.measurement.gi r1 = r1.f18217c
            java.util.List r1 = com.google.android.gms.internal.measurement.C3965gi.m5355b(r1)
            int r1 = r1.size()
            if (r0 <= r1) goto L26
        L1a:
            r0 = r3
            java.util.Iterator r0 = r0.m5346a()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3967gk.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Map.Entry entry;
        if (m5346a().hasNext()) {
            entry = (Map.Entry) m5346a().next();
        } else {
            list = this.f18217c.f18208b;
            int i = this.f18215a - 1;
            this.f18215a = i;
            entry = (Map.Entry) list.get(i);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
