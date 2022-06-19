package kotlin.reflect.jvm.internal.impl.p555g;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18950i;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/e.class */
final class C19316e implements AbstractC19305b {

    /* renamed from: a */
    public static final C19316e f65164a = new C19316e();

    /* renamed from: b */
    private static final String f65165b = "second parameter must be of type KProperty<*> or its supertype";

    private C19316e() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final String mo2294a() {
        return f65165b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final boolean mo2292a(AbstractC19219w functionDescriptor) {
        SimpleType simpleType;
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        AbstractC19050ba secondParameter = functionDescriptor.getValueParameters().get(1);
        C18950i.C18952b c18952b = C18950i.f64557a;
        C18524p.m3843b(secondParameter, "secondParameter");
        AbstractC18999ab module = C19756a.m1527c(secondParameter);
        C18524p.m3840d(module, "module");
        AbstractC19070d m2497b = C19216v.m2497b(module, C18954j.C18955a.f64634an);
        if (m2497b == null) {
            simpleType = null;
        } else {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
            List<TypeParameterDescriptor> parameters = m2497b.getTypeConstructor().getParameters();
            C18524p.m3843b(parameters, "kPropertyClass.typeConstructor.parameters");
            Object i = C18282n.m4115i((List<? extends Object>) parameters);
            C18524p.m3843b(i, "kPropertyClass.typeConstructor.parameters.single()");
            simpleType = KotlinTypeFactory.simpleNotNullType(m2705a, m2497b, C18282n.m4176a(new StarProjectionImpl((TypeParameterDescriptor) i)));
        }
        if (simpleType == null) {
            return false;
        }
        KotlinType g = secondParameter.mo2593g();
        C18524p.m3843b(g, "secondParameter.type");
        return TypeUtilsKt.isSubtypeOf(simpleType, TypeUtilsKt.makeNotNullable(g));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: b */
    public final String mo2293b(AbstractC19219w abstractC19219w) {
        return AbstractC19305b.C19306a.m2298a(this, abstractC19219w);
    }
}
