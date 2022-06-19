package kotlin.reflect.jvm.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18502ai;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC20111p;
import kotlin.reflect.EnumC20115s;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19632i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u000eH\u0016J\u0010\u0010\"\u001a\u0006\u0012\u0002\b\u00030#*\u00020$H\u0002J\u0010\u0010%\u001a\u0006\u0012\u0002\b\u00030&*\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006("}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "Lkotlin/reflect/KTypeParameter;", "Lkotlin/reflect/jvm/internal/KClassifierImpl;", "container", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;", "(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;)V", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;", "isReified", "", "()Z", "name", "", "getName", "()Ljava/lang/String;", "upperBounds", "", "Lkotlin/reflect/KType;", "getUpperBounds", "()Ljava/util/List;", "upperBounds$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "variance", "Lkotlin/reflect/KVariance;", "getVariance", "()Lkotlin/reflect/KVariance;", "equals", "other", "", "hashCode", "", "toString", "getContainerClass", "Ljava/lang/Class;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;", "toKClassImpl", "Lkotlin/reflect/jvm/internal/KClassImpl;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.y */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/y.class */
public final class C20100y implements AbstractC20032j, AbstractC20111p {

    /* renamed from: a */
    static final /* synthetic */ KProperty[] f66501a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20100y.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};

    /* renamed from: b */
    final TypeParameterDescriptor f66502b;

    /* renamed from: c */
    private final C18622ad.C18623a f66503c = C18622ad.m3795b(new C20101a());

    /* renamed from: d */
    private final AbstractC18619aa f66504d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.y$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/y$a.class */
    public static final class C20101a extends AbstractC18526r implements Function0<List<? extends C20094w>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20101a() {
            super(0);
            C20100y.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends C20094w> invoke() {
            List<KotlinType> upperBounds = C20100y.this.f66502b.getUpperBounds();
            C18524p.m3843b(upperBounds, "descriptor.upperBounds");
            List<KotlinType> list = upperBounds;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (KotlinType kotlinType : list) {
                arrayList.add(new C20094w(kotlinType, null, 2, null));
            }
            return arrayList;
        }
    }

    public C20100y(AbstractC18619aa abstractC18619aa, TypeParameterDescriptor descriptor) {
        Object obj;
        C18670h<?> c18670h;
        Class<?> cls;
        C18524p.m3840d(descriptor, "descriptor");
        this.f66502b = descriptor;
        AbstractC18619aa abstractC18619aa2 = abstractC18619aa;
        if (abstractC18619aa == null) {
            AbstractC19193k containingDeclaration = this.f66502b.getContainingDeclaration();
            C18524p.m3843b(containingDeclaration, "descriptor.containingDeclaration");
            if (containingDeclaration instanceof AbstractC19070d) {
                obj = m1122a((AbstractC19070d) containingDeclaration);
            } else if (!(containingDeclaration instanceof AbstractC19039b)) {
                throw new C18620ab("Unknown type parameter container: ".concat(String.valueOf(containingDeclaration)));
            } else {
                AbstractC19193k containingDeclaration2 = ((AbstractC19039b) containingDeclaration).getContainingDeclaration();
                C18524p.m3843b(containingDeclaration2, "declaration.containingDeclaration");
                if (containingDeclaration2 instanceof AbstractC19070d) {
                    c18670h = m1122a((AbstractC19070d) containingDeclaration2);
                } else {
                    AbstractC19907g abstractC19907g = (AbstractC19907g) (!(containingDeclaration instanceof AbstractC19907g) ? null : containingDeclaration);
                    if (abstractC19907g == null) {
                        throw new C18620ab("Non-class callable descriptor must be deserialized: ".concat(String.valueOf(containingDeclaration)));
                    }
                    AbstractC19906f mo1277i = abstractC19907g.mo1277i();
                    C19632i c19632i = (C19632i) (!(mo1277i instanceof C19632i) ? null : mo1277i);
                    Object obj2 = c19632i != null ? c19632i.f65736c : null;
                    C19076f c19076f = (C19076f) (!(obj2 instanceof C19076f) ? null : obj2);
                    if (c19076f == null || (cls = c19076f.f64795b) == null) {
                        throw new C18620ab("Container of deserialized member is not resolved: ".concat(String.valueOf(abstractC19907g)));
                    }
                    AbstractC18551c m3895a = C18458a.m3895a(cls);
                    Objects.requireNonNull(m3895a, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
                    c18670h = (C18670h) m3895a;
                }
                obj = containingDeclaration.accept(new C18573a(c18670h), C20128v.f66529a);
            }
            C18524p.m3843b(obj, "when (val declaration = … $declaration\")\n        }");
            abstractC18619aa2 = (AbstractC18619aa) obj;
        }
        this.f66504d = abstractC18619aa2;
    }

    /* renamed from: a */
    private static C18670h<?> m1122a(AbstractC19070d abstractC19070d) {
        Class<?> m3758a = C18635aj.m3758a(abstractC19070d);
        C18670h<?> c18670h = (C18670h) (m3758a != null ? C18458a.m3895a(m3758a) : null);
        if (c18670h != null) {
            return c18670h;
        }
        throw new C18620ab("Type parameter container is not resolved: " + abstractC19070d.getContainingDeclaration());
    }

    @Override // kotlin.reflect.AbstractC20111p
    /* renamed from: a */
    public final List<KType> mo1113a() {
        return (List) this.f66503c.invoke();
    }

    @Override // kotlin.reflect.AbstractC20111p
    /* renamed from: b */
    public final String mo1112b() {
        String m2721a = this.f66502b.getName().m2721a();
        C18524p.m3843b(m2721a, "descriptor.name.asString()");
        return m2721a;
    }

    @Override // kotlin.reflect.AbstractC20111p
    /* renamed from: c */
    public final EnumC20115s mo1111c() {
        int i = C20102z.f66506a[this.f66502b.getVariance().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return EnumC20115s.IN;
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            return EnumC20115s.OUT;
        }
        return EnumC20115s.INVARIANT;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C20100y) {
            C20100y c20100y = (C20100y) obj;
            return C18524p.m3850a(this.f66504d, c20100y.f66504d) && C18524p.m3850a((Object) mo1112b(), (Object) c20100y.mo1112b());
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC20032j
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ AbstractC19129g mo1121f() {
        return this.f66502b;
    }

    public final int hashCode() {
        return (this.f66504d.hashCode() * 31) + mo1112b().hashCode();
    }

    public final String toString() {
        C18502ai.C18503a c18503a = C18502ai.f63595a;
        return C18502ai.C18503a.m3864a(this);
    }
}
