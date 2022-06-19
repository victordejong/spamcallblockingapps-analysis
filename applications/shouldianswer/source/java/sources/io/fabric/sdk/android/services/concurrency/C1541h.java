package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: io.fabric.sdk.android.services.concurrency.h */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/h.class */
public class C1541h<V> extends FutureTask<V> implements AbstractC1533b<AbstractC1546l>, AbstractC1542i, AbstractC1546l {

    /* renamed from: b */
    final Object f4195b;

    public C1541h(Runnable runnable, V v) {
        super(runnable, v);
        this.f4195b = m3343a(runnable);
    }

    public C1541h(Callable<V> callable) {
        super(callable);
        this.f4195b = m3343a(callable);
    }

    /* renamed from: a */
    public AbstractC1533b mo3345a() {
        return (AbstractC1533b) this.f4195b;
    }

    /* renamed from: a */
    protected AbstractC1533b m3343a(Object obj) {
        return C1543j.isProperDelegate(obj) ? (AbstractC1533b) obj : new C1543j();
    }

    /* renamed from: a */
    public void addDependency(AbstractC1546l abstractC1546l) {
        ((AbstractC1533b) ((AbstractC1542i) mo3345a())).addDependency(abstractC1546l);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1533b
    public boolean areDependenciesMet() {
        return ((AbstractC1533b) ((AbstractC1542i) mo3345a())).areDependenciesMet();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((AbstractC1542i) mo3345a()).compareTo(obj);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1533b
    public Collection<AbstractC1546l> getDependencies() {
        return ((AbstractC1533b) ((AbstractC1542i) mo3345a())).getDependencies();
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1542i
    public EnumC1536e getPriority() {
        return ((AbstractC1542i) mo3345a()).getPriority();
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public boolean isFinished() {
        return ((AbstractC1546l) ((AbstractC1542i) mo3345a())).isFinished();
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public void setError(Throwable th) {
        ((AbstractC1546l) ((AbstractC1542i) mo3345a())).setError(th);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public void setFinished(boolean z) {
        ((AbstractC1546l) ((AbstractC1542i) mo3345a())).setFinished(z);
    }
}
