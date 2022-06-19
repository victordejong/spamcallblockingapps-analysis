package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* renamed from: com.google.android.gms.internal.measurement.eo */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/eo.class */
public final class C13475eo {
    /* renamed from: a */
    public static <T> AbstractC13471ek<T> m12893a(AbstractC13471ek<T> abstractC13471ek) {
        if ((abstractC13471ek instanceof C13473em) || (abstractC13471ek instanceof C13472el)) {
            return abstractC13471ek;
        }
        return abstractC13471ek instanceof Serializable ? new C13472el(abstractC13471ek) : new C13473em(abstractC13471ek);
    }

    /* renamed from: a */
    public static <T> AbstractC13471ek<T> m12892a(T t) {
        return new C13474en(t);
    }
}
