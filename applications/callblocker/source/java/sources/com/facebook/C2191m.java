package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.facebook.m */
/* loaded from: classes-dex2jar.jar:com/facebook/m.class */
public class C2191m extends AbstractList<C2102k> {

    /* renamed from: a */
    private static AtomicInteger f6405a = new AtomicInteger();

    /* renamed from: b */
    private Handler f6406b;

    /* renamed from: c */
    private List<C2102k> f6407c;

    /* renamed from: d */
    private int f6408d = 0;

    /* renamed from: e */
    private final String f6409e = Integer.valueOf(f6405a.incrementAndGet()).toString();

    /* renamed from: f */
    private List<AbstractC2192a> f6410f = new ArrayList();

    /* renamed from: g */
    private String f6411g;

    /* renamed from: com.facebook.m$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/m$a.class */
    public interface AbstractC2192a {
        /* renamed from: a */
        void mo14989a(C2191m c2191m);
    }

    /* renamed from: com.facebook.m$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/m$b.class */
    public interface AbstractC2193b extends AbstractC2192a {
        /* renamed from: a */
        void m14988a(C2191m c2191m, long j, long j2);
    }

    public C2191m() {
        this.f6407c = new ArrayList();
        this.f6407c = new ArrayList();
    }

    public C2191m(Collection<C2102k> collection) {
        this.f6407c = new ArrayList();
        this.f6407c = new ArrayList(collection);
    }

    public C2191m(C2102k... c2102kArr) {
        this.f6407c = new ArrayList();
        this.f6407c = Arrays.asList(c2102kArr);
    }

    /* renamed from: a */
    public int m15006a() {
        return this.f6408d;
    }

    /* renamed from: a */
    public final C2102k get(int i) {
        return this.f6407c.get(i);
    }

    /* renamed from: a */
    public final void add(int i, C2102k c2102k) {
        this.f6407c.add(i, c2102k);
    }

    /* renamed from: a */
    public final void m15003a(Handler handler) {
        this.f6406b = handler;
    }

    /* renamed from: a */
    public void m15001a(AbstractC2192a abstractC2192a) {
        if (!this.f6410f.contains(abstractC2192a)) {
            this.f6410f.add(abstractC2192a);
        }
    }

    /* renamed from: a */
    public final boolean add(C2102k c2102k) {
        return this.f6407c.add(c2102k);
    }

    /* renamed from: b */
    public final C2102k remove(int i) {
        return this.f6407c.remove(i);
    }

    /* renamed from: b */
    public final C2102k set(int i, C2102k c2102k) {
        return this.f6407c.set(i, c2102k);
    }

    /* renamed from: b */
    public final String m15000b() {
        return this.f6409e;
    }

    /* renamed from: c */
    public final Handler m14997c() {
        return this.f6406b;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f6407c.clear();
    }

    /* renamed from: d */
    public final List<C2102k> m14996d() {
        return this.f6407c;
    }

    /* renamed from: e */
    public final List<AbstractC2192a> m14995e() {
        return this.f6410f;
    }

    /* renamed from: f */
    public final String m14994f() {
        return this.f6411g;
    }

    /* renamed from: g */
    public final List<C2194n> m14993g() {
        return m14991i();
    }

    /* renamed from: h */
    public final AsyncTaskC2115l m14992h() {
        return m14990j();
    }

    /* renamed from: i */
    List<C2194n> m14991i() {
        return C2102k.m15312b(this);
    }

    /* renamed from: j */
    AsyncTaskC2115l m14990j() {
        return C2102k.m15307c(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6407c.size();
    }
}
