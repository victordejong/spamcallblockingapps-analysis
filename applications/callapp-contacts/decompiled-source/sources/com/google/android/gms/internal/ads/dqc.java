package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqc.class */
final class dqc implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a  reason: collision with root package name */
    private int f27097a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27098b;

    /* renamed from: c  reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f27099c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ dpu f27100d;

    private dqc(dpu dpuVar) {
        this.f27100d = dpuVar;
        this.f27097a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dqc(dpu dpuVar, dpt dptVar) {
        this(dpuVar);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f27099c == null) {
            map = this.f27100d.f27085c;
            this.f27099c = map.entrySet().iterator();
        }
        return this.f27099c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f27097a + 1;
        list = this.f27100d.f27084b;
        if (i < list.size()) {
            return true;
        }
        map = this.f27100d.f27085c;
        return !map.isEmpty() && a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f27098b = true;
        int i = this.f27097a + 1;
        this.f27097a = i;
        list = this.f27100d.f27084b;
        if (i >= list.size()) {
            return (Map.Entry) a().next();
        }
        list2 = this.f27100d.f27084b;
        return (Map.Entry) list2.get(this.f27097a);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f27098b) {
            this.f27098b = false;
            this.f27100d.f();
            int i = this.f27097a;
            list = this.f27100d.f27084b;
            if (i < list.size()) {
                dpu dpuVar = this.f27100d;
                int i2 = this.f27097a;
                this.f27097a = i2 - 1;
                dpuVar.c(i2);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
