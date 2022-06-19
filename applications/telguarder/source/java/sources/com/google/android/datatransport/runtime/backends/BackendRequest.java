package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendRequest.class */
public abstract class BackendRequest {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendRequest$Builder.class */
    public static abstract class Builder {
        public abstract BackendRequest build();

        public abstract Builder setEvents(Iterable<EventInternal> iterable);

        public abstract Builder setExtras(byte[] bArr);
    }

    public static Builder builder() {
        return new AutoValue_BackendRequest.Builder();
    }

    public static BackendRequest create(Iterable<EventInternal> iterable) {
        return builder().setEvents(iterable).build();
    }

    public abstract Iterable<EventInternal> getEvents();

    public abstract byte[] getExtras();
}
