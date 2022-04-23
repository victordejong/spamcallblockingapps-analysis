package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ii.class */
final class ii implements Iterator<Map.Entry> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ik f29123a;

    /* renamed from: b  reason: collision with root package name */
    private int f29124b = -1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29125c;

    /* renamed from: d  reason: collision with root package name */
    private Iterator<Map.Entry> f29126d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ii(ik ikVar, id idVar) {
        this.f29123a = ikVar;
    }

    private final Iterator<Map.Entry> a() {
        Map map;
        if (this.f29126d == null) {
            map = this.f29123a.f29130c;
            this.f29126d = map.entrySet().iterator();
        }
        return this.f29126d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f29124b + 1;
        list = this.f29123a.f29129b;
        if (i >= list.size()) {
            map = this.f29123a.f29130c;
            if (map.isEmpty()) {
                z = false;
            } else if (!a().hasNext()) {
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
        this.f29125c = true;
        int i = this.f29124b + 1;
        this.f29124b = i;
        list = this.f29123a.f29129b;
        if (i < list.size()) {
            list2 = this.f29123a.f29129b;
            entry = (Map.Entry) list2.get(this.f29124b);
        } else {
            entry = a().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f29125c) {
            this.f29125c = false;
            this.f29123a.e();
            int i = this.f29124b;
            list = this.f29123a.f29129b;
            if (i < list.size()) {
                ik ikVar = this.f29123a;
                int i2 = this.f29124b;
                this.f29124b = i2 - 1;
                ikVar.b(i2);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
