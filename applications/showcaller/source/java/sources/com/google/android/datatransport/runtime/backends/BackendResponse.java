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
    public static BackendResponse m21844a() {
        return new C4758b(Status.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static BackendResponse m21843d(long j) {
        return new C4758b(Status.OK, j);
    }

    /* renamed from: e */
    public static BackendResponse m21842e() {
        return new C4758b(Status.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: b */
    public abstract long mo21841b();

    /* renamed from: c */
    public abstract Status mo21840c();
}
