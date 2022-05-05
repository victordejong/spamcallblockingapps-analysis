package io.fabric.sdk.android.services.persistence;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/persistence/SerializationStrategy.class */
public interface SerializationStrategy<T> {
    T deserialize(String str);

    String serialize(T t);
}
