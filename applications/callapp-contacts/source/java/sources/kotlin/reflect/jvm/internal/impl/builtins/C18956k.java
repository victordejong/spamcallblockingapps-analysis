package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19165k;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19186u;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.C19276f;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/k.class */
public final class C18956k {

    /* renamed from: a */
    private static final C19186u f64672a;

    /* renamed from: b */
    private static final C19186u f64673b;

    static {
        AbstractC18999ab errorModule = ErrorUtils.getErrorModule();
        C18524p.m3843b(errorModule, "getErrorModule()");
        C19186u c19186u = new C19186u(new C19165k(errorModule, C18954j.f64575e), EnumC19127e.INTERFACE, false, false, C18954j.f64577g.m2738e(), AbstractC19026at.f64759a, C19276f.f65120a);
        c19186u.m2545a(EnumC19222y.ABSTRACT);
        c19186u.m2546a(C19200r.f65006e);
        C19186u c19186u2 = c19186u;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        c19186u.m2547a(C18282n.m4176a(TypeParameterDescriptorImpl.createWithDefaultBound(c19186u2, AbstractC18983g.C18984a.m2705a(), false, Variance.IN_VARIANCE, C18966e.m2719a("T"), 0, C19276f.f65120a)));
        c19186u.m2549a();
        f64672a = c19186u;
        AbstractC18999ab errorModule2 = ErrorUtils.getErrorModule();
        C18524p.m3843b(errorModule2, "getErrorModule()");
        C19186u c19186u3 = new C19186u(new C19165k(errorModule2, C18954j.f64574d), EnumC19127e.INTERFACE, false, false, C18954j.f64578h.m2738e(), AbstractC19026at.f64759a, C19276f.f65120a);
        c19186u3.m2545a(EnumC19222y.ABSTRACT);
        c19186u3.m2546a(C19200r.f65006e);
        C19186u c19186u4 = c19186u3;
        AbstractC18983g.C18984a c18984a2 = AbstractC18983g.f64717a;
        c19186u3.m2547a(C18282n.m4176a(TypeParameterDescriptorImpl.createWithDefaultBound(c19186u4, AbstractC18983g.C18984a.m2705a(), false, Variance.IN_VARIANCE, C18966e.m2719a("T"), 0, C19276f.f65120a)));
        c19186u3.m2549a();
        f64673b = c19186u3;
    }

    /* renamed from: a */
    public static final SimpleType m2762a(KotlinType suspendFunType, boolean z) {
        SimpleType m2861a;
        C18524p.m3840d(suspendFunType, "suspendFunType");
        boolean m2856b = C18929f.m2856b(suspendFunType);
        if (!C20130x.f66532a || m2856b) {
            AbstractC18940g builtIns = TypeUtilsKt.getBuiltIns(suspendFunType);
            AbstractC18983g annotations = suspendFunType.getAnnotations();
            KotlinType m2854d = C18929f.m2854d(suspendFunType);
            List<TypeProjection> m2852f = C18929f.m2852f(suspendFunType);
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) m2852f, 10));
            for (TypeProjection typeProjection : m2852f) {
                arrayList.add(typeProjection.getType());
            }
            ArrayList arrayList2 = arrayList;
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
            TypeConstructor typeConstructor = z ? f64673b.getTypeConstructor() : f64672a.getTypeConstructor();
            C18524p.m3843b(typeConstructor, "if (isReleaseCoroutines) FAKE_CONTINUATION_CLASS_DESCRIPTOR_RELEASE.typeConstructor\n                    else FAKE_CONTINUATION_CLASS_DESCRIPTOR_EXPERIMENTAL.typeConstructor");
            List a = C18282n.m4143a((Collection<? extends SimpleType>) arrayList2, KotlinTypeFactory.simpleType$default(m2705a, typeConstructor, C18282n.m4176a(TypeUtilsKt.asTypeProjection(C18929f.m2853e(suspendFunType))), false, null, 16, null));
            SimpleType m2796h = TypeUtilsKt.getBuiltIns(suspendFunType).m2796h();
            C18524p.m3843b(m2796h, "suspendFunType.builtIns.nullableAnyType");
            m2861a = C18929f.m2861a(builtIns, annotations, m2854d, a, null, m2796h, false);
            return m2861a.makeNullableAsSpecified(suspendFunType.isMarkedNullable());
        }
        throw new AssertionError(C18524p.m3847a("This type should be suspend function type: ", (Object) suspendFunType));
    }

    /* renamed from: a */
    public static final boolean m2763a(C18961b c18961b, boolean z) {
        return z ? C18524p.m3850a(c18961b, C18954j.f64578h) : C18524p.m3850a(c18961b, C18954j.f64577g);
    }
}
