package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfm.class */
final class dfm implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f14212a;

    /* renamed from: b */
    private boolean f14213b;

    /* renamed from: c */
    private Iterator<Map.Entry<K, V>> f14214c;

    /* renamed from: d */
    private final /* synthetic */ dfe f14215d;

    private dfm(dfe dfeVar) {
        this.f14215d = dfeVar;
        this.f14212a = -1;
    }

    public /* synthetic */ dfm(dfe dfeVar, dfh dfhVar) {
        this(dfeVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m9760a() {
        Map map;
        if (this.f14214c == null) {
            map = this.f14215d.f14197c;
            this.f14214c = map.entrySet().iterator();
        }
        return this.f14214c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        boolean z;
        Map map;
        int i = this.f14212a + 1;
        list = this.f14215d.f14196b;
        if (i >= list.size()) {
            map = this.f14215d.f14197c;
            if (map.isEmpty() || !m9760a().hasNext()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Map.Entry entry;
        List list2;
        this.f14213b = true;
        int i = this.f14212a + 1;
        this.f14212a = i;
        list = this.f14215d.f14196b;
        if (i < list.size()) {
            list2 = this.f14215d.f14196b;
            entry = (Map.Entry) list2.get(this.f14212a);
        } else {
            entry = (Map.Entry) m9760a().next();
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (!this.f14213b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f14213b = false;
        this.f14215d.m9822f();
        int i = this.f14212a;
        list = this.f14215d.f14196b;
        if (i >= list.size()) {
            m9760a().remove();
            return;
        }
        dfe dfeVar = this.f14215d;
        int i2 = this.f14212a;
        this.f14212a = i2 - 1;
        dfeVar.m9827c(i2);
    }
}
