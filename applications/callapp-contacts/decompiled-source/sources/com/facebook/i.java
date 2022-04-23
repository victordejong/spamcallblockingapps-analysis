package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/facebook/i.class */
public final class i extends AbstractList<GraphRequest> {
    private static AtomicInteger g = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    Handler f19791a;

    /* renamed from: b  reason: collision with root package name */
    List<GraphRequest> f19792b;

    /* renamed from: c  reason: collision with root package name */
    int f19793c;

    /* renamed from: d  reason: collision with root package name */
    final String f19794d;
    List<a> e;
    String f;

    /* loaded from: classes3-dex2jar.jar:com/facebook/i$a.class */
    public interface a {
        void a();
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/i$b.class */
    public interface b extends a {
    }

    public i() {
        this.f19792b = new ArrayList();
        this.f19793c = 0;
        this.f19794d = Integer.valueOf(g.incrementAndGet()).toString();
        this.e = new ArrayList();
        this.f19792b = new ArrayList();
    }

    public i(i iVar) {
        this.f19792b = new ArrayList();
        this.f19793c = 0;
        this.f19794d = Integer.valueOf(g.incrementAndGet()).toString();
        this.e = new ArrayList();
        this.f19792b = new ArrayList(iVar);
        this.f19791a = iVar.f19791a;
        this.f19793c = iVar.f19793c;
        this.e = new ArrayList(iVar.e);
    }

    public i(Collection<GraphRequest> collection) {
        this.f19792b = new ArrayList();
        this.f19793c = 0;
        this.f19794d = Integer.valueOf(g.incrementAndGet()).toString();
        this.e = new ArrayList();
        this.f19792b = new ArrayList(collection);
    }

    public i(GraphRequest... graphRequestArr) {
        this.f19792b = new ArrayList();
        this.f19793c = 0;
        this.f19794d = Integer.valueOf(g.incrementAndGet()).toString();
        this.e = new ArrayList();
        this.f19792b = Arrays.asList(graphRequestArr);
    }

    /* renamed from: a */
    public final GraphRequest get(int i) {
        return this.f19792b.get(i);
    }

    public final h a() {
        return GraphRequest.b(this);
    }

    public final void a(a aVar) {
        if (!this.e.contains(aVar)) {
            this.e.add(aVar);
        }
    }

    /* renamed from: a */
    public final boolean add(GraphRequest graphRequest) {
        return this.f19792b.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        this.f19792b.add(i, (GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f19792b.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        return this.f19792b.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return this.f19792b.set(i, (GraphRequest) obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19792b.size();
    }
}
