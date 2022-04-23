package kotlin.reflect.jvm.internal.impl.resolve.e.a;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/c.class */
public final class c implements d, g {

    /* renamed from: a  reason: collision with root package name */
    private final d f38270a;

    /* renamed from: b  reason: collision with root package name */
    private final c f38271b;

    /* renamed from: c  reason: collision with root package name */
    private final d f38272c;

    public c(d classDescriptor, c cVar) {
        p.d(classDescriptor, "classDescriptor");
        this.f38270a = classDescriptor;
        this.f38271b = cVar == null ? this : cVar;
        this.f38272c = classDescriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public SimpleType a() {
        SimpleType defaultType = this.f38270a.getDefaultType();
        p.b(defaultType, "classDescriptor.defaultType");
        return defaultType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a.g
    public final d b() {
        return this.f38270a;
    }

    public final boolean equals(Object obj) {
        d dVar = this.f38270a;
        boolean z = obj instanceof c;
        d dVar2 = null;
        c cVar = z ? (c) obj : null;
        if (cVar != null) {
            dVar2 = cVar.f38270a;
        }
        return p.a(dVar, dVar2);
    }

    public final int hashCode() {
        return this.f38270a.hashCode();
    }

    public final String toString() {
        return "Class{" + a() + '}';
    }
}
