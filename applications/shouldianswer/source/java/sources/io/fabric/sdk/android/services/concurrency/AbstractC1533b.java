package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
/* renamed from: io.fabric.sdk.android.services.concurrency.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/b.class */
public interface AbstractC1533b<T> {
    void addDependency(T t);

    boolean areDependenciesMet();

    Collection<T> getDependencies();
}
