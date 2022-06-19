package com.google.android.gms.internal.consent_sdk;
/* renamed from: com.google.android.gms.internal.consent_sdk.bt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bt.class */
public final class C13218bt<T> implements AbstractC13215bq<T> {

    /* renamed from: a */
    private static final C13218bt<Object> f50401a = new C13218bt<>(null);

    /* renamed from: b */
    private final T f50402b;

    private C13218bt(T t) {
        this.f50402b = t;
    }

    /* renamed from: a */
    public static <T> AbstractC13215bq<T> m13554a(T t) {
        return new C13218bt(C13220bv.m13551a(t, "instance cannot be null"));
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final T mo13528a() {
        return this.f50402b;
    }
}
