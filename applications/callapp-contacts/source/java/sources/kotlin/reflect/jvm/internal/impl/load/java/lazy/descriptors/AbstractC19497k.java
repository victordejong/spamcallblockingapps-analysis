package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k.class */
public abstract class AbstractC19497k extends AbstractC19480i {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19497k(C19501g c) {
        super(c, null, 2, null);
        C18524p.m3840d(c, "c");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final AbstractC19020aq mo2074a() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final AbstractC19480i.C19481a mo2072a(AbstractC19408q method, List<? extends TypeParameterDescriptor> methodTypeParameters, KotlinType returnType, List<? extends AbstractC19050ba> valueParameters) {
        C18524p.m3840d(method, "method");
        C18524p.m3840d(methodTypeParameters, "methodTypeParameters");
        C18524p.m3840d(returnType, "returnType");
        C18524p.m3840d(valueParameters, "valueParameters");
        return new AbstractC19480i.C19481a(returnType, null, valueParameters, methodTypeParameters, false, C18297z.f63400a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected void mo2073a(C18966e name, Collection<AbstractC19017an> result) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(result, "result");
    }
}
