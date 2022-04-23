package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.g.h;
import kotlin.g.k;
import kotlin.g.q;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.resolve.d;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay.class */
public final class ay {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay$a.class */
    public static final class a extends r implements Function1<k, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37404a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(k kVar) {
            k it2 = kVar;
            p.d(it2, "it");
            return Boolean.valueOf(it2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay$b.class */
    public static final class b extends r implements Function1<k, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37405a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(k kVar) {
            k it2 = kVar;
            p.d(it2, "it");
            return Boolean.valueOf(!(it2 instanceof j));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay$c.class */
    public static final class c extends r implements Function1<k, h<? extends TypeParameterDescriptor>> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37406a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ h<? extends TypeParameterDescriptor> invoke(k kVar) {
            k it2 = kVar;
            p.d(it2, "it");
            List<TypeParameterDescriptor> typeParameters = ((kotlin.reflect.jvm.internal.impl.descriptors.a) it2).getTypeParameters();
            p.b(typeParameters, "it as CallableDescriptor).typeParameters");
            return n.p(typeParameters);
        }
    }

    public static final List<TypeParameterDescriptor> a(h hVar) {
        k kVar;
        List<TypeParameterDescriptor> list;
        p.d(hVar, "<this>");
        List<TypeParameterDescriptor> declaredTypeParameters = hVar.getDeclaredTypeParameters();
        p.b(declaredTypeParameters, "declaredTypeParameters");
        if (!(hVar.isInner() || (hVar.getContainingDeclaration() instanceof kotlin.reflect.jvm.internal.impl.descriptors.a))) {
            return declaredTypeParameters;
        }
        h hVar2 = hVar;
        h<k> takeWhile = kotlin.reflect.jvm.internal.impl.resolve.b.a.e(hVar2);
        a predicate = a.f37404a;
        p.d(takeWhile, "$this$takeWhile");
        p.d(predicate, "predicate");
        List f = k.f(k.c(k.a((h) new q(takeWhile, predicate), (Function1) b.f37405a), c.f37406a));
        Iterator<k> a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.e(hVar2).a();
        while (true) {
            if (!a2.hasNext()) {
                kVar = null;
                break;
            }
            kVar = a2.next();
            if (kVar instanceof d) {
                break;
            }
        }
        d dVar = (d) kVar;
        if (dVar == null) {
            list = null;
        } else {
            TypeConstructor typeConstructor = dVar.getTypeConstructor();
            list = typeConstructor == null ? null : typeConstructor.getParameters();
        }
        z zVar = list;
        if (list == null) {
            zVar = z.f36608a;
        }
        if (!f.isEmpty() || !zVar.isEmpty()) {
            List<TypeParameterDescriptor> b2 = n.b((Collection) f, (Iterable) zVar);
            ArrayList arrayList = new ArrayList(n.a((Iterable) b2, 10));
            for (TypeParameterDescriptor it2 : b2) {
                p.b(it2, "it");
                arrayList.add(new CapturedTypeParameterDescriptor(it2, hVar2, declaredTypeParameters.size()));
            }
            return n.b((Collection) declaredTypeParameters, (Iterable) arrayList);
        }
        List<TypeParameterDescriptor> declaredTypeParameters2 = hVar.getDeclaredTypeParameters();
        p.b(declaredTypeParameters2, "declaredTypeParameters");
        return declaredTypeParameters2;
    }

    public static final al a(KotlinType kotlinType, h hVar, int i) {
        h hVar2 = null;
        if (hVar == null) {
            return null;
        }
        h hVar3 = hVar;
        if (ErrorUtils.isError(hVar3)) {
            return null;
        }
        int size = hVar.getDeclaredTypeParameters().size() + i;
        if (!hVar.isInner()) {
            boolean z = size == kotlinType.getArguments().size() || d.b(hVar3);
            if (!x.f38657a || z) {
                return new al(hVar, kotlinType.getArguments().subList(i, kotlinType.getArguments().size()), null);
            }
            throw new AssertionError((kotlinType.getArguments().size() - size) + " trailing arguments were found in " + kotlinType + " type");
        }
        List<TypeProjection> subList = kotlinType.getArguments().subList(i, size);
        k containingDeclaration = hVar.getContainingDeclaration();
        if (containingDeclaration instanceof h) {
            hVar2 = (h) containingDeclaration;
        }
        return new al(hVar, subList, a(kotlinType, hVar2, size));
    }
}
