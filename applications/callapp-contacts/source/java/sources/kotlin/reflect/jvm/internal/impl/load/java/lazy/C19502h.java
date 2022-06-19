package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/h.class */
public final class C19502h implements AbstractC19506k {

    /* renamed from: a */
    final C19501g f65485a;

    /* renamed from: b */
    final AbstractC19193k f65486b;

    /* renamed from: c */
    final int f65487c;

    /* renamed from: d */
    final Map<AbstractC19415x, Integer> f65488d;

    /* renamed from: e */
    private final AbstractC19295h<AbstractC19415x, LazyJavaTypeParameterDescriptor> f65489e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/h$a.class */
    public static final class C19503a extends AbstractC18526r implements Function1<AbstractC19415x, LazyJavaTypeParameterDescriptor> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19503a() {
            super(1);
            C19502h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ LazyJavaTypeParameterDescriptor invoke(AbstractC19415x abstractC19415x) {
            AbstractC19415x typeParameter = abstractC19415x;
            C18524p.m3840d(typeParameter, "typeParameter");
            Integer num = C19502h.this.f65488d.get(typeParameter);
            if (num == null) {
                return null;
            }
            C19502h c19502h = C19502h.this;
            int intValue = num.intValue();
            C19501g c19501g = c19502h.f65485a;
            C19502h typeParameterResolver = c19502h;
            C18524p.m3840d(c19501g, "<this>");
            C18524p.m3840d(typeParameterResolver, "typeParameterResolver");
            return new LazyJavaTypeParameterDescriptor(C19429a.m2156b(new C19501g(c19501g.f65480a, typeParameterResolver, c19501g.f65482c), c19502h.f65486b.getAnnotations()), typeParameter, c19502h.f65487c + intValue, c19502h.f65486b);
        }
    }

    public C19502h(C19501g c, AbstractC19193k containingDeclaration, AbstractC19416y typeParameterOwner, int i) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(typeParameterOwner, "typeParameterOwner");
        this.f65485a = c;
        this.f65486b = containingDeclaration;
        this.f65487c = i;
        this.f65488d = C19999a.m1210a(typeParameterOwner.mo2177i());
        this.f65489e = c.f65480a.f65318a.mo2307b(new C19503a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.AbstractC19506k
    /* renamed from: a */
    public final TypeParameterDescriptor mo2067a(AbstractC19415x javaTypeParameter) {
        C18524p.m3840d(javaTypeParameter, "javaTypeParameter");
        LazyJavaTypeParameterDescriptor invoke = this.f65489e.invoke(javaTypeParameter);
        return invoke == null ? this.f65485a.f65481b.mo2067a(javaTypeParameter) : invoke;
    }
}
