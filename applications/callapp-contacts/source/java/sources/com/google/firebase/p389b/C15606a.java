package com.google.firebase.p389b;

import com.google.firebase.components.C15656z;
/* renamed from: com.google.firebase.b.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/b/a.class */
public final class C15606a<T> {

    /* renamed from: a */
    public final Class<T> f55988a;

    /* renamed from: b */
    public final T f55989b;

    public C15606a(Class<T> cls, T t) {
        this.f55988a = (Class) C15656z.m8492a(cls);
        this.f55989b = (T) C15656z.m8492a(t);
    }

    public final String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f55988a, this.f55989b);
    }
}
