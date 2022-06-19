package com.google.firebase.encoders;

import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.firebase.encoders.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/b.class */
public final class C9152b {

    /* renamed from: a */
    private final String f39460a;

    /* renamed from: b */
    private final Map<Class<?>, Object> f39461b;

    private C9152b(String str, Map<Class<?>, Object> map) {
        this.f39460a = str;
        this.f39461b = map;
    }

    /* renamed from: b */
    public static C9152b m1710b(String str) {
        return new C9152b(str, Collections.emptyMap());
    }

    /* renamed from: a */
    public String m1711a() {
        return this.f39460a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9152b)) {
            return false;
        }
        C9152b c9152b = (C9152b) obj;
        if (!this.f39460a.equals(c9152b.f39460a) || !this.f39461b.equals(c9152b.f39461b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.f39460a.hashCode() * 31) + this.f39461b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f39460a + ", properties=" + this.f39461b.values() + "}";
    }
}
