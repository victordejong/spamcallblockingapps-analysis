package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/i.class */
public final class C19080i implements AbstractC19955o {

    /* renamed from: a */
    public static final C19080i f64800a = new C19080i();

    private C19080i() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o
    /* renamed from: a */
    public final void mo1252a(AbstractC19039b descriptor) {
        C18524p.m3840d(descriptor, "descriptor");
        throw new IllegalStateException(C18524p.m3847a("Cannot infer visibility for ", (Object) descriptor));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o
    /* renamed from: a */
    public final void mo1251a(AbstractC19070d descriptor, List<String> unresolvedSuperClasses) {
        C18524p.m3840d(descriptor, "descriptor");
        C18524p.m3840d(unresolvedSuperClasses, "unresolvedSuperClasses");
        throw new IllegalStateException("Incomplete hierarchy for class " + descriptor.getName() + ", unresolved classes " + unresolvedSuperClasses);
    }
}
