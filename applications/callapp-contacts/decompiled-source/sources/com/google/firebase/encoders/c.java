package com.google.firebase.encoders;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f32301a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Object> f32302b;

    private c(String str, Map<Class<?>, Object> map) {
        this.f32301a = str;
        this.f32302b = map;
    }

    public static c a(String str) {
        return new c(str, Collections.emptyMap());
    }

    public final String a() {
        return this.f32301a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f32301a.equals(cVar.f32301a) && this.f32302b.equals(cVar.f32302b);
    }

    public final int hashCode() {
        return (this.f32301a.hashCode() * 31) + this.f32302b.hashCode();
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f32301a + ", properties=" + this.f32302b.values() + "}";
    }
}
