package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ii */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ii.class */
final class C13577ii implements Iterator<Map.Entry> {

    /* renamed from: a */
    final /* synthetic */ C13579ik f50838a;

    /* renamed from: b */
    private int f50839b = -1;

    /* renamed from: c */
    private boolean f50840c;

    /* renamed from: d */
    private Iterator<Map.Entry> f50841d;

    public /* synthetic */ C13577ii(C13579ik c13579ik, C13572id c13572id) {
        this.f50838a = c13579ik;
    }

    /* renamed from: a */
    private final Iterator<Map.Entry> m12589a() {
        Map map;
        if (this.f50841d == null) {
            map = this.f50838a.f50845c;
            this.f50841d = map.entrySet().iterator();
        }
        return this.f50841d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f50839b + 1;
        list = this.f50838a.f50844b;
        if (i >= list.size()) {
            map = this.f50838a.f50845c;
            if (map.isEmpty()) {
                z = false;
            } else if (!m12589a().hasNext()) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Map.Entry next() {
        List list;
        Map.Entry entry;
        List list2;
        this.f50840c = true;
        int i = this.f50839b + 1;
        this.f50839b = i;
        list = this.f50838a.f50844b;
        if (i < list.size()) {
            list2 = this.f50838a.f50844b;
            entry = (Map.Entry) list2.get(this.f50839b);
        } else {
            entry = m12589a().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f50840c) {
            this.f50840c = false;
            this.f50838a.m12576e();
            int i = this.f50839b;
            list = this.f50838a.f50844b;
            if (i >= list.size()) {
                m12589a().remove();
                return;
            }
            C13579ik c13579ik = this.f50838a;
            int i2 = this.f50839b;
            this.f50839b = i2 - 1;
            c13579ik.m12581b(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
