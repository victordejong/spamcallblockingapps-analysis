package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.runtime.backends.C4755a;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.runtime.backends.f */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/f.class */
public abstract class AbstractC4762f {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.runtime.backends.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/f$a.class */
    public static abstract class AbstractC4763a {
        /* renamed from: a */
        public abstract AbstractC4762f mo21836a();

        /* renamed from: b */
        public abstract AbstractC4763a mo21835b(Iterable<AbstractC4664h> iterable);

        /* renamed from: c */
        public abstract AbstractC4763a mo21834c(byte[] bArr);
    }

    /* renamed from: a */
    public static AbstractC4763a m21839a() {
        return new C4755a.C4757b();
    }

    /* renamed from: b */
    public abstract Iterable<AbstractC4664h> mo21838b();

    /* renamed from: c */
    public abstract byte[] mo21837c();
}
