package io.fabric.sdk.android.services.persistence;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/persistence/PersistenceStrategy.class */
public interface PersistenceStrategy<T> {
    void clear();

    T restore();

    void save(T t);
}
