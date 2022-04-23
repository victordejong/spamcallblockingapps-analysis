package com.moat.analytics.mobile.inm.p519a.p521b;

import java.util.NoSuchElementException;
/* renamed from: com.moat.analytics.mobile.inm.a.b.a */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/a/b/a.class */
public final class C8534a<T> {

    /* renamed from: a */
    public static final C8534a<?> f33213a = new C8534a<>();

    /* renamed from: b */
    public final T f33214b;

    public C8534a() {
        this.f33214b = null;
    }

    public C8534a(T t) {
        if (t != null) {
            this.f33214b = t;
            return;
        }
        throw new NullPointerException("Optional of null value.");
    }

    /* renamed from: a */
    public static <T> C8534a<T> m5243a() {
        return (C8534a<T>) f33213a;
    }

    /* renamed from: a */
    public static <T> C8534a<T> m5242a(T t) {
        return new C8534a<>(t);
    }

    /* renamed from: b */
    public static <T> C8534a<T> m5240b(T t) {
        return t == null ? m5243a() : m5242a(t);
    }

    /* renamed from: b */
    public final T m5241b() {
        T t = this.f33214b;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public final T m5238c(T t) {
        T t2 = this.f33214b;
        return t2 != null ? t2 : t;
    }

    /* renamed from: c */
    public final boolean m5239c() {
        return this.f33214b != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8534a)) {
            return false;
        }
        T t = this.f33214b;
        T t2 = ((C8534a) obj).f33214b;
        if (t != t2) {
            return (t == null || t2 == null || !t.equals(t2)) ? false : true;
        }
        return true;
    }

    public final int hashCode() {
        T t = this.f33214b;
        if (t == null) {
            return 0;
        }
        return t.hashCode();
    }

    public final String toString() {
        T t = this.f33214b;
        return t != null ? String.format("Optional[%s]", t) : "Optional.empty";
    }
}
