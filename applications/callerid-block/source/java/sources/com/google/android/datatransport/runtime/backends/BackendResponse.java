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
    public static BackendResponse m9131a() {
        return new b(Status.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static BackendResponse m9128d(long j) {
        return new b(Status.OK, j);
    }

    /* renamed from: e */
    public static BackendResponse m9127e() {
        return new b(Status.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: b */
    public abstract long m9130b();

    /* renamed from: c */
    public abstract Status m9129c();
}
