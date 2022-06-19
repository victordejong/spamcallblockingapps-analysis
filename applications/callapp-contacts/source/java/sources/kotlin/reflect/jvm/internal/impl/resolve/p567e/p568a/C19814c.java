package kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/a/c.class */
public final class C19814c implements AbstractC19815d, AbstractC19818g {

    /* renamed from: a */
    private final AbstractC19070d f65985a;

    /* renamed from: b */
    private final C19814c f65986b;

    /* renamed from: c */
    private final AbstractC19070d f65987c;

    public C19814c(AbstractC19070d classDescriptor, C19814c c19814c) {
        C18524p.m3840d(classDescriptor, "classDescriptor");
        this.f65985a = classDescriptor;
        this.f65986b = c19814c == null ? this : c19814c;
        this.f65987c = classDescriptor;
    }

    /* renamed from: c */
    public SimpleType mo1437a() {
        SimpleType defaultType = this.f65985a.getDefaultType();
        C18524p.m3843b(defaultType, "classDescriptor.defaultType");
        return defaultType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19818g
    /* renamed from: b */
    public final AbstractC19070d mo1435b() {
        return this.f65985a;
    }

    public final boolean equals(Object obj) {
        AbstractC19070d abstractC19070d = this.f65985a;
        C19814c c19814c = obj instanceof C19814c ? (C19814c) obj : null;
        return C18524p.m3850a(abstractC19070d, c19814c == null ? null : c19814c.f65985a);
    }

    public final int hashCode() {
        return this.f65985a.hashCode();
    }

    public final String toString() {
        return "Class{" + mo1437a() + '}';
    }
}
