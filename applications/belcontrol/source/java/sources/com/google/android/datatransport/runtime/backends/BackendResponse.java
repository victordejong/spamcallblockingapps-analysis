package com.google.android.datatransport.runtime.backends;

import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendResponse.class */
public abstract class BackendResponse {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendResponse$Status.class */
    public enum Status {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    public static BackendResponse fatalError() {
        return new AutoValue_BackendResponse(Status.FATAL_ERROR, -1L);
    }

    /* renamed from: ok */
    public static BackendResponse m4449ok(long j) {
        return new AutoValue_BackendResponse(Status.OK, j);
    }

    public static BackendResponse transientError() {
        return new AutoValue_BackendResponse(Status.TRANSIENT_ERROR, -1L);
    }

    public abstract long getNextRequestWaitMillis();

    public abstract Status getStatus();
}
