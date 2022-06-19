package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: io.fabric.sdk.android.services.concurrency.j */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/j.class */
public class C1543j implements AbstractC1533b<AbstractC1546l>, AbstractC1542i, AbstractC1546l {
    private final List<AbstractC1546l> dependencies = new ArrayList();
    private final AtomicBoolean hasRun = new AtomicBoolean(false);
    private final AtomicReference<Throwable> throwable = new AtomicReference<>(null);

    public static boolean isProperDelegate(Object obj) {
        boolean z;
        try {
            AbstractC1546l abstractC1546l = (AbstractC1546l) obj;
            AbstractC1542i abstractC1542i = (AbstractC1542i) obj;
            z = false;
            if (((AbstractC1533b) obj) != null) {
                z = false;
                if (abstractC1546l != null) {
                    z = false;
                    if (abstractC1542i != null) {
                        z = true;
                    }
                }
            }
        } catch (ClassCastException e) {
            z = false;
        }
        return z;
    }

    public void addDependency(AbstractC1546l abstractC1546l) {
        synchronized (this) {
            this.dependencies.add(abstractC1546l);
        }
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1533b
    public boolean areDependenciesMet() {
        for (AbstractC1546l abstractC1546l : getDependencies()) {
            if (!abstractC1546l.isFinished()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return EnumC1536e.m3350a(this, obj);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1533b
    public Collection<AbstractC1546l> getDependencies() {
        Collection<AbstractC1546l> unmodifiableCollection;
        synchronized (this) {
            unmodifiableCollection = Collections.unmodifiableCollection(this.dependencies);
        }
        return unmodifiableCollection;
    }

    public Throwable getError() {
        return this.throwable.get();
    }

    public EnumC1536e getPriority() {
        return EnumC1536e.NORMAL;
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public boolean isFinished() {
        return this.hasRun.get();
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public void setError(Throwable th) {
        this.throwable.set(th);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public void setFinished(boolean z) {
        synchronized (this) {
            this.hasRun.set(z);
        }
    }
}
