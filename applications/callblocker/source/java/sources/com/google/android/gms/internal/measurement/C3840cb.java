package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.cb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cb.class */
public final class C3840cb {
    /* renamed from: a */
    public static <T> AbstractC3836by<T> m5846a(AbstractC3836by<T> abstractC3836by) {
        C3839ca c3839ca = abstractC3836by;
        if (!(abstractC3836by instanceof C3842cd)) {
            c3839ca = abstractC3836by instanceof C3839ca ? abstractC3836by : abstractC3836by instanceof Serializable ? new C3839ca(abstractC3836by) : new C3842cd(abstractC3836by);
        }
        return c3839ca;
    }

    /* renamed from: a */
    public static <T> AbstractC3836by<T> m5845a(@NullableDecl T t) {
        return new C3841cc(t);
    }
}
