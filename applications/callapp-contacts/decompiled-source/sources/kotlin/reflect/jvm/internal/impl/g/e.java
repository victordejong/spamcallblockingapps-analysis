package kotlin.reflect.jvm.internal.impl.g;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.i;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.g.b;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/e.class */
final class e implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final e f37681a = new e();

    /* renamed from: b  reason: collision with root package name */
    private static final String f37682b = "second parameter must be of type KProperty<*> or its supertype";

    private e() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String a() {
        return f37682b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final boolean a(w functionDescriptor) {
        SimpleType simpleType;
        p.d(functionDescriptor, "functionDescriptor");
        ba secondParameter = functionDescriptor.getValueParameters().get(1);
        i.b bVar = i.f37310a;
        p.b(secondParameter, "secondParameter");
        ab module = a.c(secondParameter);
        p.d(module, "module");
        d b2 = v.b(module, j.a.an);
        if (b2 == null) {
            simpleType = null;
        } else {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            g.a aVar = g.f37361a;
            g a2 = g.a.a();
            List<TypeParameterDescriptor> parameters = b2.getTypeConstructor().getParameters();
            p.b(parameters, "kPropertyClass.typeConstructor.parameters");
            Object i = n.i((List<? extends Object>) parameters);
            p.b(i, "kPropertyClass.typeConstructor.parameters.single()");
            simpleType = KotlinTypeFactory.simpleNotNullType(a2, b2, n.a(new StarProjectionImpl((TypeParameterDescriptor) i)));
        }
        if (simpleType == null) {
            return false;
        }
        KotlinType g = secondParameter.g();
        p.b(g, "secondParameter.type");
        return TypeUtilsKt.isSubtypeOf(simpleType, TypeUtilsKt.makeNotNullable(g));
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String b(w wVar) {
        return b.a.a(this, wVar);
    }
}
