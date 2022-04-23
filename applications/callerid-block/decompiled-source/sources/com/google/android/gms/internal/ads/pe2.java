package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pe2.class */
final class pe2 implements Iterator<Map.Entry> {

    /* renamed from: b */
    private int f8116b = -1;

    /* renamed from: c */
    private boolean f8117c;

    /* renamed from: d */
    private Iterator<Map.Entry> f8118d;

    /* renamed from: e */
    final /* synthetic */ re2 f8119e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ pe2(re2 re2Var, ke2 ke2Var) {
        this.f8119e = re2Var;
    }

    /* renamed from: b */
    private final Iterator<Map.Entry> m6214b() {
        Map map;
        if (this.f8118d == null) {
            map = this.f8119e.f8333d;
            this.f8118d = map.entrySet().iterator();
        }
        return this.f8118d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f8116b + 1;
        list = this.f8119e.f8332c;
        if (i >= list.size()) {
            map = this.f8119e.f8333d;
            if (map.isEmpty()) {
                z = false;
            } else if (!m6214b().hasNext()) {
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
        Object obj;
        List list2;
        this.f8117c = true;
        int i = this.f8116b + 1;
        this.f8116b = i;
        list = this.f8119e.f8332c;
        if (i < list.size()) {
            list2 = this.f8119e.f8332c;
            obj = list2.get(this.f8116b);
        } else {
            obj = m6214b().next();
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f8117c) {
            this.f8117c = false;
            this.f8119e.m5967m();
            int i = this.f8116b;
            list = this.f8119e.f8332c;
            if (i < list.size()) {
                re2 re2Var = this.f8119e;
                int i2 = this.f8116b;
                this.f8116b = i2 - 1;
                re2Var.m5969k(i2);
                return;
            }
            m6214b().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
