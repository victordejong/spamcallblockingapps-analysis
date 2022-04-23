package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayi.class */
public final class ayi<T> {

    /* renamed from: a  reason: collision with root package name */
    public T f24004a;

    /* renamed from: b  reason: collision with root package name */
    public Executor f24005b;

    public ayi(T t, Executor executor) {
        this.f24004a = t;
        this.f24005b = executor;
    }

    public static <T> ayi<T> a(T t, Executor executor) {
        return new ayi<>(t, executor);
    }
}
