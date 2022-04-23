package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bt.class */
public final class bt<T> implements bq<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final bt<Object> f28770a = new bt<>(null);

    /* renamed from: b  reason: collision with root package name */
    private final T f28771b;

    private bt(T t) {
        this.f28771b = t;
    }

    public static <T> bq<T> a(T t) {
        return new bt(bv.a(t, "instance cannot be null"));
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final T a() {
        return this.f28771b;
    }
}
