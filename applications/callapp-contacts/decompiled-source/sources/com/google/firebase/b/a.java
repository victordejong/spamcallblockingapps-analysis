package com.google.firebase.b;

import com.google.firebase.components.z;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/b/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Class<T> f32214a;

    /* renamed from: b  reason: collision with root package name */
    public final T f32215b;

    public a(Class<T> cls, T t) {
        this.f32214a = (Class) z.a(cls);
        this.f32215b = (T) z.a(t);
    }

    public final String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f32214a, this.f32215b);
    }
}
