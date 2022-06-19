package io.objectbox.query;

import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.p503c.AbstractC17958a;
import io.objectbox.p503c.AbstractC17959b;
import io.objectbox.p503c.AbstractC17961d;
import io.objectbox.p503c.C17960c;
import io.objectbox.p503c.C17968k;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: io.objectbox.query.e */
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/e.class */
public final class C17987e<T> implements AbstractC17959b<List<T>> {

    /* renamed from: a */
    private final Query<T> f62854a;

    /* renamed from: b */
    private final C17944a<T> f62855b;

    /* renamed from: c */
    private final Set<AbstractC17958a<List<T>>> f62856c = new CopyOnWriteArraySet();

    /* renamed from: d */
    private AbstractC17958a<Class<T>> f62857d;

    /* renamed from: e */
    private AbstractC17961d f62858e;

    public C17987e(Query<T> query, C17944a<T> c17944a) {
        this.f62854a = query;
        this.f62855b = c17944a;
    }

    /* renamed from: a */
    public /* synthetic */ void m4593a() {
        List<T> m4628c = this.f62854a.m4628c();
        for (AbstractC17958a<List<T>> abstractC17958a : this.f62856c) {
            abstractC17958a.onData(m4628c);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m4592a(AbstractC17958a abstractC17958a) {
        abstractC17958a.onData(this.f62854a.m4628c());
    }

    /* renamed from: a */
    public /* synthetic */ void m4590a(Class cls) {
        this.f62855b.f62707a.m4729c(new Runnable() { // from class: io.objectbox.query._$$Lambda$e$KAIEAGNhRB5PshKBAevJYCg7rE4
            @Override // java.lang.Runnable
            public final void run() {
                C17987e.this.m4593a();
            }
        });
    }

    @Override // io.objectbox.p503c.AbstractC17959b
    /* renamed from: a */
    public final void mo4591a(AbstractC17958a<List<T>> abstractC17958a, Object obj) {
        synchronized (this) {
            BoxStore boxStore = this.f62855b.f62707a;
            if (this.f62857d == null) {
                this.f62857d = new AbstractC17958a() { // from class: io.objectbox.query._$$Lambda$e$ZMIOlQTiiKKlz5MQIOHz15qs024
                    @Override // io.objectbox.p503c.AbstractC17958a
                    public final void onData(Object obj2) {
                        C17987e.this.m4590a((Class) obj2);
                    }
                };
            }
            if (this.f62856c.isEmpty()) {
                if (this.f62858e != null) {
                    throw new IllegalStateException("Existing subscription found");
                }
                C17968k c17968k = new C17968k(boxStore.f62684h, this.f62855b.f62708b, boxStore.f62683g);
                c17968k.f62752c = true;
                c17968k.f62753d = true;
                this.f62858e = c17968k.m4677a(this.f62857d);
            }
            this.f62856c.add(abstractC17958a);
        }
    }

    @Override // io.objectbox.p503c.AbstractC17959b
    /* renamed from: b */
    public final void mo4589b(AbstractC17958a<List<T>> abstractC17958a, Object obj) {
        synchronized (this) {
            C17960c.m4681a(this.f62856c, abstractC17958a);
            if (this.f62856c.isEmpty()) {
                this.f62858e.mo4680a();
                this.f62858e = null;
            }
        }
    }

    @Override // io.objectbox.p503c.AbstractC17959b
    /* renamed from: c */
    public final void mo4588c(final AbstractC17958a<List<T>> abstractC17958a, Object obj) {
        this.f62855b.f62707a.m4729c(new Runnable() { // from class: io.objectbox.query._$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg
            @Override // java.lang.Runnable
            public final void run() {
                C17987e.this.m4592a(abstractC17958a);
            }
        });
    }
}
