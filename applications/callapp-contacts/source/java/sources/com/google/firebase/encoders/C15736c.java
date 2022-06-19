package com.google.firebase.encoders;

import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.firebase.encoders.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/c.class */
public final class C15736c {

    /* renamed from: a */
    private final String f56086a;

    /* renamed from: b */
    private final Map<Class<?>, Object> f56087b;

    private C15736c(String str, Map<Class<?>, Object> map) {
        this.f56086a = str;
        this.f56087b = map;
    }

    /* renamed from: a */
    public static C15736c m8470a(String str) {
        return new C15736c(str, Collections.emptyMap());
    }

    /* renamed from: a */
    public final String m8471a() {
        return this.f56086a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C15736c)) {
            return false;
        }
        C15736c c15736c = (C15736c) obj;
        return this.f56086a.equals(c15736c.f56086a) && this.f56087b.equals(c15736c.f56087b);
    }

    public final int hashCode() {
        return (this.f56086a.hashCode() * 31) + this.f56087b.hashCode();
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f56086a + ", properties=" + this.f56087b.values() + "}";
    }
}
