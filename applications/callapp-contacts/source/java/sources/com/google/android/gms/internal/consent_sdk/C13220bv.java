package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.consent_sdk.bv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bv.class */
public final class C13220bv {
    /* renamed from: a */
    public static <T> T m13553a(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    /* renamed from: a */
    public static <T> T m13551a(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: a */
    public static <T> void m13552a(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }
}
