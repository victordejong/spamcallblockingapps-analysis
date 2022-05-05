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

    /* renamed from: a */
    public static BackendResponse m15397a() {
        return new AutoValue_BackendResponse(Status.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static BackendResponse m15394d(long j) {
        return new AutoValue_BackendResponse(Status.OK, j);
    }

    /* renamed from: e */
    public static BackendResponse m15393e() {
        return new AutoValue_BackendResponse(Status.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: b */
    public abstract long mo15396b();

    /* renamed from: c */
    public abstract Status mo15395c();
}
