package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.p531g.C18395q;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ay */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay.class */
public final class C19034ay {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ay$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay$a.class */
    public static final class C19035a extends AbstractC18526r implements Function1<AbstractC19193k, Boolean> {

        /* renamed from: a */
        public static final C19035a f64762a = new C19035a();

        C19035a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19193k abstractC19193k) {
            AbstractC19193k it2 = abstractC19193k;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(it2 instanceof AbstractC18973a);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ay$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay$b.class */
    public static final class C19036b extends AbstractC18526r implements Function1<AbstractC19193k, Boolean> {

        /* renamed from: a */
        public static final C19036b f64763a = new C19036b();

        C19036b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19193k abstractC19193k) {
            AbstractC19193k it2 = abstractC19193k;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(!(it2 instanceof AbstractC19192j));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ay$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ay$c.class */
    public static final class C19037c extends AbstractC18526r implements Function1<AbstractC19193k, AbstractC18378h<? extends TypeParameterDescriptor>> {

        /* renamed from: a */
        public static final C19037c f64764a = new C19037c();

        C19037c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18378h<? extends TypeParameterDescriptor> invoke(AbstractC19193k abstractC19193k) {
            AbstractC19193k it2 = abstractC19193k;
            C18524p.m3840d(it2, "it");
            List<TypeParameterDescriptor> typeParameters = ((AbstractC18973a) it2).getTypeParameters();
            C18524p.m3843b(typeParameters, "it as CallableDescriptor).typeParameters");
            return C18282n.m4106p(typeParameters);
        }
    }

    /* renamed from: a */
    public static final List<TypeParameterDescriptor> m2690a(AbstractC19130h abstractC19130h) {
        AbstractC19070d abstractC19070d;
        List<TypeParameterDescriptor> list;
        C18524p.m3840d(abstractC19130h, "<this>");
        List<TypeParameterDescriptor> declaredTypeParameters = abstractC19130h.getDeclaredTypeParameters();
        C18524p.m3843b(declaredTypeParameters, "declaredTypeParameters");
        if (abstractC19130h.isInner() || (abstractC19130h.getContainingDeclaration() instanceof AbstractC18973a)) {
            AbstractC19130h abstractC19130h2 = abstractC19130h;
            AbstractC18378h<AbstractC19193k> takeWhile = C19756a.m1525e(abstractC19130h2);
            C19035a predicate = C19035a.f64762a;
            C18524p.m3840d(takeWhile, "$this$takeWhile");
            C18524p.m3840d(predicate, "predicate");
            List f = C18381k.m4012f(C18381k.m4017c(C18381k.m4020a((AbstractC18378h) new C18395q(takeWhile, predicate), (Function1) C19036b.f64763a), C19037c.f64764a));
            Iterator<AbstractC19193k> mo3908a = C19756a.m1525e(abstractC19130h2).mo3908a();
            while (true) {
                if (!mo3908a.hasNext()) {
                    abstractC19070d = null;
                    break;
                }
                abstractC19070d = mo3908a.next();
                if (abstractC19070d instanceof AbstractC19070d) {
                    break;
                }
            }
            AbstractC19070d abstractC19070d2 = abstractC19070d;
            if (abstractC19070d2 == null) {
                list = null;
            } else {
                TypeConstructor typeConstructor = abstractC19070d2.getTypeConstructor();
                list = typeConstructor == null ? null : typeConstructor.getParameters();
            }
            C18297z c18297z = list;
            if (list == null) {
                c18297z = C18297z.f63400a;
            }
            if (f.isEmpty() && c18297z.isEmpty()) {
                List<TypeParameterDescriptor> declaredTypeParameters2 = abstractC19130h.getDeclaredTypeParameters();
                C18524p.m3843b(declaredTypeParameters2, "declaredTypeParameters");
                return declaredTypeParameters2;
            }
            List<TypeParameterDescriptor> b = C18282n.m4135b((Collection) f, (Iterable) c18297z);
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) b, 10));
            for (TypeParameterDescriptor it2 : b) {
                C18524p.m3843b(it2, "it");
                arrayList.add(new CapturedTypeParameterDescriptor(it2, abstractC19130h2, declaredTypeParameters.size()));
            }
            return C18282n.m4135b((Collection) declaredTypeParameters, (Iterable) arrayList);
        }
        return declaredTypeParameters;
    }

    /* renamed from: a */
    public static final C19015al m2689a(KotlinType kotlinType, AbstractC19130h abstractC19130h, int i) {
        AbstractC19130h abstractC19130h2 = null;
        if (abstractC19130h != null) {
            AbstractC19130h abstractC19130h3 = abstractC19130h;
            if (ErrorUtils.isError(abstractC19130h3)) {
                return null;
            }
            int size = abstractC19130h.getDeclaredTypeParameters().size() + i;
            if (abstractC19130h.isInner()) {
                List<TypeProjection> subList = kotlinType.getArguments().subList(i, size);
                AbstractC19193k containingDeclaration = abstractC19130h.getContainingDeclaration();
                if (containingDeclaration instanceof AbstractC19130h) {
                    abstractC19130h2 = (AbstractC19130h) containingDeclaration;
                }
                return new C19015al(abstractC19130h, subList, m2689a(kotlinType, abstractC19130h2, size));
            }
            boolean z = size == kotlinType.getArguments().size() || C19807d.m1466b(abstractC19130h3);
            if (!C20130x.f66532a || z) {
                return new C19015al(abstractC19130h, kotlinType.getArguments().subList(i, kotlinType.getArguments().size()), null);
            }
            throw new AssertionError((kotlinType.getArguments().size() - size) + " trailing arguments were found in " + kotlinType + " type");
        }
        return null;
    }
}
