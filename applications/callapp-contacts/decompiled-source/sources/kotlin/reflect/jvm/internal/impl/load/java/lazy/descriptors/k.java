package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k.class */
public abstract class k extends i {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g c2) {
        super(c2, null, 2, null);
        p.d(c2, "c");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final aq a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final i.a a(q method, List<? extends TypeParameterDescriptor> methodTypeParameters, KotlinType returnType, List<? extends ba> valueParameters) {
        p.d(method, "method");
        p.d(methodTypeParameters, "methodTypeParameters");
        p.d(returnType, "returnType");
        p.d(valueParameters, "valueParameters");
        return new i.a(returnType, null, valueParameters, methodTypeParameters, false, z.f36608a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected void a(e name, Collection<an> result) {
        p.d(name, "name");
        p.d(result, "result");
    }
}
