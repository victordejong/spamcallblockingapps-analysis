package kotlin.reflect.jvm.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.ai;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.c;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.i;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.p;
import kotlin.reflect.s;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u000eH\u0016J\u0010\u0010\"\u001a\u0006\u0012\u0002\b\u00030#*\u00020$H\u0002J\u0010\u0010%\u001a\u0006\u0012\u0002\b\u00030&*\u00020'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006("}, d2 = {"Lkotlin/reflect/jvm/internal/KTypeParameterImpl;", "Lkotlin/reflect/KTypeParameter;", "Lkotlin/reflect/jvm/internal/KClassifierImpl;", "container", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;", "(Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;)V", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/TypeParameterDescriptor;", "isReified", "", "()Z", "name", "", "getName", "()Ljava/lang/String;", "upperBounds", "", "Lkotlin/reflect/KType;", "getUpperBounds", "()Ljava/util/List;", "upperBounds$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "variance", "Lkotlin/reflect/KVariance;", "getVariance", "()Lkotlin/reflect/KVariance;", "equals", "other", "", "hashCode", "", "toString", "getContainerClass", "Ljava/lang/Class;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedMemberDescriptor;", "toKClassImpl", "Lkotlin/reflect/jvm/internal/KClassImpl;", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/y.class */
public final class y implements j, p {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty[] f38627a = {ac.a(new aa(ac.b(y.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};

    /* renamed from: b  reason: collision with root package name */
    final TypeParameterDescriptor f38628b;

    /* renamed from: c  reason: collision with root package name */
    private final ad.a f38629c = ad.b(new a());

    /* renamed from: d  reason: collision with root package name */
    private final aa f38630d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/y$a.class */
    static final class a extends r implements Function0<List<? extends w>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends w> invoke() {
            List<KotlinType> upperBounds = y.this.f38628b.getUpperBounds();
            kotlin.jvm.internal.p.b(upperBounds, "descriptor.upperBounds");
            List<KotlinType> list = upperBounds;
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            for (KotlinType kotlinType : list) {
                arrayList.add(new w(kotlinType, null, 2, null));
            }
            return arrayList;
        }
    }

    public y(aa aaVar, TypeParameterDescriptor descriptor) {
        Object obj;
        h<?> hVar;
        Class<?> cls;
        kotlin.jvm.internal.p.d(descriptor, "descriptor");
        this.f38628b = descriptor;
        aa aaVar2 = aaVar;
        if (aaVar == null) {
            k containingDeclaration = this.f38628b.getContainingDeclaration();
            kotlin.jvm.internal.p.b(containingDeclaration, "descriptor.containingDeclaration");
            if (containingDeclaration instanceof d) {
                obj = a((d) containingDeclaration);
            } else if (containingDeclaration instanceof b) {
                k containingDeclaration2 = ((b) containingDeclaration).getContainingDeclaration();
                kotlin.jvm.internal.p.b(containingDeclaration2, "declaration.containingDeclaration");
                if (containingDeclaration2 instanceof d) {
                    hVar = a((d) containingDeclaration2);
                } else {
                    o oVar = null;
                    g gVar = (g) (!(containingDeclaration instanceof g) ? null : containingDeclaration);
                    if (gVar != null) {
                        f i = gVar.i();
                        i iVar = (i) (!(i instanceof i) ? null : i);
                        oVar = iVar != null ? iVar.f38076c : null;
                        if (!(oVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d.a.f)) {
                        }
                        kotlin.reflect.jvm.internal.impl.descriptors.d.a.f fVar = (kotlin.reflect.jvm.internal.impl.descriptors.d.a.f) oVar;
                        if (fVar == null || (cls = fVar.f37437b) == null) {
                            throw new ab("Container of deserialized member is not resolved: ".concat(String.valueOf(gVar)));
                        }
                        c a2 = kotlin.jvm.a.a(cls);
                        Objects.requireNonNull(a2, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
                        hVar = (h) a2;
                    } else {
                        throw new ab("Non-class callable descriptor must be deserialized: ".concat(String.valueOf(containingDeclaration)));
                    }
                }
                obj = containingDeclaration.accept(new kotlin.reflect.jvm.internal.a(hVar), v.f38654a);
            } else {
                throw new ab("Unknown type parameter container: ".concat(String.valueOf(containingDeclaration)));
            }
            kotlin.jvm.internal.p.b(obj, "when (val declaration = … $declaration\")\n        }");
            aaVar2 = (aa) obj;
        }
        this.f38630d = aaVar2;
    }

    private static h<?> a(d dVar) {
        Class<?> a2 = aj.a(dVar);
        h<?> hVar = (h) (a2 != null ? kotlin.jvm.a.a(a2) : null);
        if (hVar != null) {
            return hVar;
        }
        throw new ab("Type parameter container is not resolved: " + dVar.getContainingDeclaration());
    }

    @Override // kotlin.reflect.p
    public final List<KType> a() {
        return (List) this.f38629c.invoke();
    }

    @Override // kotlin.reflect.p
    public final String b() {
        String a2 = this.f38628b.getName().a();
        kotlin.jvm.internal.p.b(a2, "descriptor.name.asString()");
        return a2;
    }

    @Override // kotlin.reflect.p
    public final s c() {
        int i = z.f38632a[this.f38628b.getVariance().ordinal()];
        if (i == 1) {
            return s.INVARIANT;
        }
        if (i == 2) {
            return s.IN;
        }
        if (i == 3) {
            return s.OUT;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return kotlin.jvm.internal.p.a(this.f38630d, yVar.f38630d) && kotlin.jvm.internal.p.a((Object) b(), (Object) yVar.b());
    }

    @Override // kotlin.reflect.jvm.internal.j
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.g f() {
        return this.f38628b;
    }

    public final int hashCode() {
        return (this.f38630d.hashCode() * 31) + b().hashCode();
    }

    public final String toString() {
        ai.a aVar = ai.f36786a;
        return ai.a.a(this);
    }
}
