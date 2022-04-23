package com.moat.analytics.mobile.mpub.p522a.p524b;

import java.util.NoSuchElementException;
/* renamed from: com.moat.analytics.mobile.mpub.a.b.a */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/a/b/a.class */
public final class C8615a<T> {

    /* renamed from: a */
    public static final C8615a<?> f33430a = new C8615a<>();

    /* renamed from: b */
    public final T f33431b;

    public C8615a() {
        this.f33431b = null;
    }

    public C8615a(T t) {
        if (t != null) {
            this.f33431b = t;
            return;
        }
        throw new NullPointerException("Optional of null value.");
    }

    /* renamed from: a */
    public static <T> C8615a<T> m4987a() {
        return (C8615a<T>) f33430a;
    }

    /* renamed from: a */
    public static <T> C8615a<T> m4986a(T t) {
        return new C8615a<>(t);
    }

    /* renamed from: b */
    public static <T> C8615a<T> m4984b(T t) {
        return t == null ? m4987a() : m4986a(t);
    }

    /* renamed from: b */
    public T m4985b() {
        T t = this.f33431b;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public T m4982c(T t) {
        T t2 = this.f33431b;
        if (t2 != null) {
            t = t2;
        }
        return t;
    }

    /* renamed from: c */
    public boolean m4983c() {
        return this.f33431b != null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8615a)) {
            return false;
        }
        T t = this.f33431b;
        T t2 = ((C8615a) obj).f33431b;
        boolean z = true;
        if (t != t2) {
            z = (t == null || t2 == null || !t.equals(t2)) ? false : true;
        }
        return z;
    }

    public int hashCode() {
        T t = this.f33431b;
        return t == null ? 0 : t.hashCode();
    }

    public String toString() {
        T t = this.f33431b;
        return t != null ? String.format("Optional[%s]", t) : "Optional.empty";
    }
}
