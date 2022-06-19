package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.facebook.i */
/* loaded from: classes3-dex2jar.jar:com/facebook/i.class */
public final class C10193i extends AbstractList<GraphRequest> {

    /* renamed from: g */
    private static AtomicInteger f33626g = new AtomicInteger();

    /* renamed from: a */
    Handler f33627a;

    /* renamed from: b */
    List<GraphRequest> f33628b;

    /* renamed from: c */
    int f33629c;

    /* renamed from: d */
    final String f33630d;

    /* renamed from: e */
    List<AbstractC10194a> f33631e;

    /* renamed from: f */
    String f33632f;

    /* renamed from: com.facebook.i$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/i$a.class */
    public interface AbstractC10194a {
        /* renamed from: a */
        void mo22729a();
    }

    /* renamed from: com.facebook.i$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/i$b.class */
    public interface AbstractC10195b extends AbstractC10194a {
    }

    public C10193i() {
        this.f33628b = new ArrayList();
        this.f33629c = 0;
        this.f33630d = Integer.valueOf(f33626g.incrementAndGet()).toString();
        this.f33631e = new ArrayList();
        this.f33628b = new ArrayList();
    }

    public C10193i(C10193i c10193i) {
        this.f33628b = new ArrayList();
        this.f33629c = 0;
        this.f33630d = Integer.valueOf(f33626g.incrementAndGet()).toString();
        this.f33631e = new ArrayList();
        this.f33628b = new ArrayList(c10193i);
        this.f33627a = c10193i.f33627a;
        this.f33629c = c10193i.f33629c;
        this.f33631e = new ArrayList(c10193i.f33631e);
    }

    public C10193i(Collection<GraphRequest> collection) {
        this.f33628b = new ArrayList();
        this.f33629c = 0;
        this.f33630d = Integer.valueOf(f33626g.incrementAndGet()).toString();
        this.f33631e = new ArrayList();
        this.f33628b = new ArrayList(collection);
    }

    public C10193i(GraphRequest... graphRequestArr) {
        this.f33628b = new ArrayList();
        this.f33629c = 0;
        this.f33630d = Integer.valueOf(f33626g.incrementAndGet()).toString();
        this.f33631e = new ArrayList();
        this.f33628b = Arrays.asList(graphRequestArr);
    }

    /* renamed from: a */
    public final GraphRequest get(int i) {
        return this.f33628b.get(i);
    }

    /* renamed from: a */
    public final AsyncTaskC10192h m23274a() {
        return GraphRequest.m23780b(this);
    }

    /* renamed from: a */
    public final void m23271a(AbstractC10194a abstractC10194a) {
        if (!this.f33631e.contains(abstractC10194a)) {
            this.f33631e.add(abstractC10194a);
        }
    }

    /* renamed from: a */
    public final boolean add(GraphRequest graphRequest) {
        return this.f33628b.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        this.f33628b.add(i, (GraphRequest) obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f33628b.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        return this.f33628b.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return this.f33628b.set(i, (GraphRequest) obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f33628b.size();
    }
}
