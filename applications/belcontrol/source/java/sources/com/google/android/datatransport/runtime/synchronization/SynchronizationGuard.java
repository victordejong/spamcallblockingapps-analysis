package com.google.android.datatransport.runtime.synchronization;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/synchronization/SynchronizationGuard.class */
public interface SynchronizationGuard {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection.class */
    public interface CriticalSection<T> {
        T execute();
    }

    <T> T runCriticalSection(CriticalSection<T> criticalSection);
}
