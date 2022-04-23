package org.apache.commons.lang3.builder;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f39146a;

    /* renamed from: b  reason: collision with root package name */
    private final int f39147b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Object obj) {
        this.f39147b = System.identityHashCode(obj);
        this.f39146a = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f39147b == eVar.f39147b && this.f39146a == eVar.f39146a;
    }

    public final int hashCode() {
        return this.f39147b;
    }
}
