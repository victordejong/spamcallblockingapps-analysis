package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendRequest.class */
public abstract class BackendRequest {

    @AutoValue.Builder
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/BackendRequest$Builder.class */
    public static abstract class Builder {
        /* renamed from: a */
        public abstract BackendRequest mo15400a();

        /* renamed from: b */
        public abstract Builder mo15399b(Iterable<EventInternal> iterable);

        /* renamed from: c */
        public abstract Builder mo15398c(@Nullable byte[] bArr);
    }

    /* renamed from: a */
    public static Builder m15403a() {
        return new AutoValue_BackendRequest.Builder();
    }

    /* renamed from: b */
    public abstract Iterable<EventInternal> mo15402b();

    @Nullable
    /* renamed from: c */
    public abstract byte[] mo15401c();
}
