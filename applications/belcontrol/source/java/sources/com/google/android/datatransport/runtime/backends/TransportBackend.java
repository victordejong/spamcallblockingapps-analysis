package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.EventInternal;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/TransportBackend.class */
public interface TransportBackend {
    EventInternal decorate(EventInternal eventInternal);

    BackendResponse send(BackendRequest backendRequest);
}
