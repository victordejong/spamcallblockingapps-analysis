package io.objectbox.query;

import io.objectbox.BoxStore;
import io.objectbox.a;
import io.objectbox.c.b;
import io.objectbox.c.c;
import io.objectbox.c.d;
import io.objectbox.c.k;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/e.class */
public final class e<T> implements b<List<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final Query<T> f36263a;

    /* renamed from: b  reason: collision with root package name */
    private final a<T> f36264b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<io.objectbox.c.a<List<T>>> f36265c = new CopyOnWriteArraySet();

    /* renamed from: d  reason: collision with root package name */
    private io.objectbox.c.a<Class<T>> f36266d;
    private d e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Query<T> query, a<T> aVar) {
        this.f36263a = query;
        this.f36264b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        List<T> c2 = this.f36263a.c();
        for (io.objectbox.c.a<List<T>> aVar : this.f36265c) {
            aVar.onData(c2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(io.objectbox.c.a aVar) {
        aVar.onData(this.f36263a.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Class cls) {
        this.f36264b.f36185a.c(new Runnable() { // from class: io.objectbox.query._$$Lambda$e$KAIEAGNhRB5PshKBAevJYCg7rE4
            @Override // java.lang.Runnable
            public final void run() {
                e.this.a();
            }
        });
    }

    @Override // io.objectbox.c.b
    public final void a(io.objectbox.c.a<List<T>> aVar, Object obj) {
        synchronized (this) {
            BoxStore boxStore = this.f36264b.f36185a;
            if (this.f36266d == null) {
                this.f36266d = new io.objectbox.c.a() { // from class: io.objectbox.query._$$Lambda$e$ZMIOlQTiiKKlz5MQIOHz15qs024
                    @Override // io.objectbox.c.a
                    public final void onData(Object obj2) {
                        e.this.a((Class) obj2);
                    }
                };
            }
            if (this.f36265c.isEmpty()) {
                if (this.e == null) {
                    k kVar = new k(boxStore.h, this.f36264b.f36186b, boxStore.g);
                    kVar.f36209c = true;
                    kVar.f36210d = true;
                    this.e = kVar.a(this.f36266d);
                } else {
                    throw new IllegalStateException("Existing subscription found");
                }
            }
            this.f36265c.add(aVar);
        }
    }

    @Override // io.objectbox.c.b
    public final void b(io.objectbox.c.a<List<T>> aVar, Object obj) {
        synchronized (this) {
            c.a(this.f36265c, aVar);
            if (this.f36265c.isEmpty()) {
                this.e.a();
                this.e = null;
            }
        }
    }

    @Override // io.objectbox.c.b
    public final void c(final io.objectbox.c.a<List<T>> aVar, Object obj) {
        this.f36264b.f36185a.c(new Runnable() { // from class: io.objectbox.query._$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg
            @Override // java.lang.Runnable
            public final void run() {
                e.this.a(aVar);
            }
        });
    }
}
