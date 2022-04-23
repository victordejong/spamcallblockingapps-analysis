package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.u;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.f;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final u f37324a;

    /* renamed from: b  reason: collision with root package name */
    private static final u f37325b;

    static {
        ab errorModule = ErrorUtils.getErrorModule();
        p.b(errorModule, "getErrorModule()");
        u uVar = new u(new kotlin.reflect.jvm.internal.impl.descriptors.impl.k(errorModule, j.e), e.INTERFACE, false, false, j.g.e(), at.f37401a, f.f37640a);
        uVar.a(y.ABSTRACT);
        uVar.a(r.e);
        u uVar2 = uVar;
        g.a aVar = g.f37361a;
        uVar.a(n.a(TypeParameterDescriptorImpl.createWithDefaultBound(uVar2, g.a.a(), false, Variance.IN_VARIANCE, kotlin.reflect.jvm.internal.impl.c.e.a("T"), 0, f.f37640a)));
        uVar.a();
        f37324a = uVar;
        ab errorModule2 = ErrorUtils.getErrorModule();
        p.b(errorModule2, "getErrorModule()");
        u uVar3 = new u(new kotlin.reflect.jvm.internal.impl.descriptors.impl.k(errorModule2, j.f37319d), e.INTERFACE, false, false, j.h.e(), at.f37401a, f.f37640a);
        uVar3.a(y.ABSTRACT);
        uVar3.a(r.e);
        u uVar4 = uVar3;
        g.a aVar2 = g.f37361a;
        uVar3.a(n.a(TypeParameterDescriptorImpl.createWithDefaultBound(uVar4, g.a.a(), false, Variance.IN_VARIANCE, kotlin.reflect.jvm.internal.impl.c.e.a("T"), 0, f.f37640a)));
        uVar3.a();
        f37325b = uVar3;
    }

    public static final SimpleType a(KotlinType suspendFunType, boolean z) {
        SimpleType a2;
        p.d(suspendFunType, "suspendFunType");
        boolean b2 = f.b(suspendFunType);
        if (!x.f38657a || b2) {
            g builtIns = TypeUtilsKt.getBuiltIns(suspendFunType);
            g annotations = suspendFunType.getAnnotations();
            KotlinType d2 = f.d(suspendFunType);
            List<TypeProjection> f = f.f(suspendFunType);
            ArrayList arrayList = new ArrayList(n.a((Iterable) f, 10));
            for (TypeProjection typeProjection : f) {
                arrayList.add(typeProjection.getType());
            }
            ArrayList arrayList2 = arrayList;
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            g.a aVar = g.f37361a;
            g a3 = g.a.a();
            TypeConstructor typeConstructor = z ? f37325b.getTypeConstructor() : f37324a.getTypeConstructor();
            p.b(typeConstructor, "if (isReleaseCoroutines) FAKE_CONTINUATION_CLASS_DESCRIPTOR_RELEASE.typeConstructor\n                    else FAKE_CONTINUATION_CLASS_DESCRIPTOR_EXPERIMENTAL.typeConstructor");
            List a4 = n.a((Collection<? extends SimpleType>) arrayList2, KotlinTypeFactory.simpleType$default(a3, typeConstructor, n.a(TypeUtilsKt.asTypeProjection(f.e(suspendFunType))), false, null, 16, null));
            SimpleType h = TypeUtilsKt.getBuiltIns(suspendFunType).h();
            p.b(h, "suspendFunType.builtIns.nullableAnyType");
            a2 = f.a(builtIns, annotations, d2, a4, null, h, false);
            return a2.makeNullableAsSpecified(suspendFunType.isMarkedNullable());
        }
        throw new AssertionError(p.a("This type should be suspend function type: ", (Object) suspendFunType));
    }

    public static final boolean a(b bVar, boolean z) {
        return z ? p.a(bVar, j.h) : p.a(bVar, j.g);
    }
}
