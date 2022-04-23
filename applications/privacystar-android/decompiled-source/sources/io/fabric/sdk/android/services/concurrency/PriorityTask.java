package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/PriorityTask.class */
public class PriorityTask implements Dependency<Task>, PriorityProvider, Task {
    private final List<Task> dependencies = new ArrayList();
    private final AtomicBoolean hasRun = new AtomicBoolean(false);
    private final AtomicReference<Throwable> throwable = new AtomicReference<>(null);

    public static boolean isProperDelegate(Object obj) {
        try {
            Task task = (Task) obj;
            PriorityProvider priorityProvider = (PriorityProvider) obj;
            boolean z = false;
            if (((Dependency) obj) != null) {
                z = false;
                if (task != null) {
                    z = false;
                    if (priorityProvider != null) {
                        z = true;
                    }
                }
            }
            return z;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public void addDependency(Task task) {
        synchronized (this) {
            this.dependencies.add(task);
        }
    }

    @Override // io.fabric.sdk.android.services.concurrency.Dependency
    public boolean areDependenciesMet() {
        for (Task task : getDependencies()) {
            if (!task.isFinished()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return Priority.compareTo(this, obj);
    }

    @Override // io.fabric.sdk.android.services.concurrency.Dependency
    public Collection<Task> getDependencies() {
        Collection<Task> unmodifiableCollection;
        synchronized (this) {
            unmodifiableCollection = Collections.unmodifiableCollection(this.dependencies);
        }
        return unmodifiableCollection;
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public Throwable getError() {
        return this.throwable.get();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public boolean isFinished() {
        return this.hasRun.get();
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public void setError(Throwable th) {
        this.throwable.set(th);
    }

    @Override // io.fabric.sdk.android.services.concurrency.Task
    public void setFinished(boolean z) {
        synchronized (this) {
            this.hasRun.set(z);
        }
    }
}
