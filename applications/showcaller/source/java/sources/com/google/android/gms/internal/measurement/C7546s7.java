package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.s7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s7.class */
final class C7546s7 implements Iterator<Map.Entry> {

    /* renamed from: d */
    private int f34678d = -1;

    /* renamed from: e */
    private boolean f34679e;

    /* renamed from: f */
    private Iterator<Map.Entry> f34680f;

    /* renamed from: g */
    final /* synthetic */ C7572u7 f34681g;

    public /* synthetic */ C7546s7(C7572u7 c7572u7, C7478n7 c7478n7) {
        this.f34681g = c7572u7;
    }

    /* renamed from: a */
    private final Iterator<Map.Entry> m6916a() {
        Map map;
        if (this.f34680f == null) {
            map = this.f34681g.f34709f;
            this.f34680f = map.entrySet().iterator();
        }
        return this.f34680f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f34678d + 1;
        list = this.f34681g.f34708e;
        if (i >= list.size()) {
            map = this.f34681g.f34709f;
            if (map.isEmpty()) {
                z = false;
            } else if (!m6916a().hasNext()) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        Map.Entry entry;
        List list2;
        this.f34679e = true;
        int i = this.f34678d + 1;
        this.f34678d = i;
        list = this.f34681g.f34708e;
        if (i < list.size()) {
            list2 = this.f34681g.f34708e;
            entry = (Map.Entry) list2.get(this.f34678d);
        } else {
            entry = m6916a().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f34679e) {
            this.f34679e = false;
            this.f34681g.m6866m();
            int i = this.f34678d;
            list = this.f34681g.f34708e;
            if (i >= list.size()) {
                m6916a().remove();
                return;
            }
            C7572u7 c7572u7 = this.f34681g;
            int i2 = this.f34678d;
            this.f34678d = i2 - 1;
            c7572u7.m6868k(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
