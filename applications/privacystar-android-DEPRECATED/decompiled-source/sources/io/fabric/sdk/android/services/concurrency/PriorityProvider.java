package io.fabric.sdk.android.services.concurrency;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/PriorityProvider.class */
public interface PriorityProvider<T> extends Comparable<T> {
    Priority getPriority();
}
