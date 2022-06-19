package org.apache.commons.lang3.builder;
/* renamed from: org.apache.commons.lang3.builder.e */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/e.class */
final class C20736e {

    /* renamed from: a */
    private final Object f67213a;

    /* renamed from: b */
    private final int f67214b;

    public C20736e(Object obj) {
        this.f67214b = System.identityHashCode(obj);
        this.f67213a = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C20736e)) {
            return false;
        }
        C20736e c20736e = (C20736e) obj;
        return this.f67214b == c20736e.f67214b && this.f67213a == c20736e.f67213a;
    }

    public final int hashCode() {
        return this.f67214b;
    }
}
