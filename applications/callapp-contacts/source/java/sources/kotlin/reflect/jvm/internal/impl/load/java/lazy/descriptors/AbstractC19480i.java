package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.C20126t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19215u;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.C19598z;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19498e;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19372f;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19375g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.C19857i;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19822c;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i.class */
public abstract class AbstractC19480i extends AbstractC19839i {

    /* renamed from: c */
    static final /* synthetic */ KProperty<Object>[] f65439c = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC19480i.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC19480i.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC19480i.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};

    /* renamed from: a */
    private final AbstractC19296i<Collection<AbstractC19193k>> f65440a;

    /* renamed from: b */
    private final AbstractC19294g<C18966e, Collection<AbstractC19025as>> f65441b;

    /* renamed from: d */
    final C19501g f65442d;

    /* renamed from: e */
    final AbstractC19480i f65443e;

    /* renamed from: f */
    final AbstractC19296i<AbstractC19446b> f65444f;

    /* renamed from: h */
    private final AbstractC19295h<C18966e, AbstractC19017an> f65445h;

    /* renamed from: i */
    private final AbstractC19294g<C18966e, Collection<AbstractC19025as>> f65446i;

    /* renamed from: j */
    private final AbstractC19296i f65447j;

    /* renamed from: k */
    private final AbstractC19296i f65448k;

    /* renamed from: l */
    private final AbstractC19296i f65449l;

    /* renamed from: m */
    private final AbstractC19294g<C18966e, List<AbstractC19017an>> f65450m;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a.class */
    public static final class C19481a {

        /* renamed from: a */
        final KotlinType f65451a;

        /* renamed from: b */
        final KotlinType f65452b;

        /* renamed from: c */
        final List<AbstractC19050ba> f65453c;

        /* renamed from: d */
        final List<TypeParameterDescriptor> f65454d;

        /* renamed from: e */
        final boolean f65455e;

        /* renamed from: f */
        final List<String> f65456f;

        /* JADX WARN: Multi-variable type inference failed */
        public C19481a(KotlinType returnType, KotlinType kotlinType, List<? extends AbstractC19050ba> valueParameters, List<? extends TypeParameterDescriptor> typeParameters, boolean z, List<String> errors) {
            C18524p.m3840d(returnType, "returnType");
            C18524p.m3840d(valueParameters, "valueParameters");
            C18524p.m3840d(typeParameters, "typeParameters");
            C18524p.m3840d(errors, "errors");
            this.f65451a = returnType;
            this.f65452b = kotlinType;
            this.f65453c = valueParameters;
            this.f65454d = typeParameters;
            this.f65455e = z;
            this.f65456f = errors;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C19481a)) {
                return false;
            }
            C19481a c19481a = (C19481a) obj;
            return C18524p.m3850a(this.f65451a, c19481a.f65451a) && C18524p.m3850a(this.f65452b, c19481a.f65452b) && C18524p.m3850a(this.f65453c, c19481a.f65453c) && C18524p.m3850a(this.f65454d, c19481a.f65454d) && this.f65455e == c19481a.f65455e && C18524p.m3850a(this.f65456f, c19481a.f65456f);
        }

        public final int hashCode() {
            int hashCode = this.f65451a.hashCode();
            KotlinType kotlinType = this.f65452b;
            int hashCode2 = kotlinType == null ? 0 : kotlinType.hashCode();
            int hashCode3 = this.f65453c.hashCode();
            int hashCode4 = this.f65454d.hashCode();
            boolean z = this.f65455e;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i) * 31) + this.f65456f.hashCode();
        }

        public final String toString() {
            return "MethodSignatureData(returnType=" + this.f65451a + ", receiverType=" + this.f65452b + ", valueParameters=" + this.f65453c + ", typeParameters=" + this.f65454d + ", hasStableParameterNames=" + this.f65455e + ", errors=" + this.f65456f + ')';
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b.class */
    public static final class C19482b {

        /* renamed from: a */
        final List<AbstractC19050ba> f65457a;

        /* renamed from: b */
        final boolean f65458b;

        /* JADX WARN: Multi-variable type inference failed */
        public C19482b(List<? extends AbstractC19050ba> descriptors, boolean z) {
            C18524p.m3840d(descriptors, "descriptors");
            this.f65457a = descriptors;
            this.f65458b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$c.class */
    public static final class C19483c extends AbstractC18526r implements Function0<Collection<? extends AbstractC19193k>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19483c() {
            super(0);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends AbstractC19193k> invoke() {
            AbstractC19480i abstractC19480i = AbstractC19480i.this;
            C19825d c19825d = C19825d.f65995d;
            AbstractC19834h.C19835a c19835a = AbstractC19834h.f66031g;
            return abstractC19480i.m2084c(c19825d, AbstractC19834h.C19835a.m1414a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$d.class */
    public static final class C19484d extends AbstractC18526r implements Function0<Set<? extends C18966e>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19484d() {
            super(0);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends C18966e> invoke() {
            return AbstractC19480i.this.mo2078a(C19825d.f66000i, (Function1<? super C18966e, Boolean>) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e.class */
    public static final class C19485e extends AbstractC18526r implements Function1<C18966e, AbstractC19017an> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19485e() {
            super(1);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19017an invoke(C18966e c18966e) {
            C18966e name = c18966e;
            C18524p.m3840d(name, "name");
            if (AbstractC19480i.this.f65443e != null) {
                return (AbstractC19017an) AbstractC19480i.this.f65443e.f65445h.invoke(name);
            }
            AbstractC19405n mo2145b = AbstractC19480i.this.f65444f.invoke().mo2145b(name);
            if (mo2145b != null && !mo2145b.mo2195e()) {
                return AbstractC19480i.m2088a(AbstractC19480i.this, mo2145b);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f.class */
    public static final class C19486f extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19486f() {
            super(1);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e name = c18966e;
            C18524p.m3840d(name, "name");
            if (AbstractC19480i.this.f65443e != null) {
                return (Collection) AbstractC19480i.this.f65443e.f65441b.invoke(name);
            }
            ArrayList arrayList = new ArrayList();
            for (AbstractC19408q abstractC19408q : AbstractC19480i.this.f65444f.invoke().mo2147a(name)) {
                C19372f m2091a = AbstractC19480i.this.m2091a(abstractC19408q);
                if (AbstractC19480i.this.mo2093a(m2091a)) {
                    AbstractC19480i.this.f65442d.f65480a.f65324g.mo2269a(abstractC19408q, m2091a);
                    arrayList.add(m2091a);
                }
            }
            ArrayList arrayList2 = arrayList;
            AbstractC19480i.this.mo2086b(arrayList2, name);
            return arrayList2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$g.class */
    public static final class C19487g extends AbstractC18526r implements Function0<AbstractC19446b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19487g() {
            super(0);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19446b invoke() {
            return AbstractC19480i.this.mo2075c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$h.class */
    public static final class C19488h extends AbstractC18526r implements Function0<Set<? extends C18966e>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19488h() {
            super(0);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends C18966e> invoke() {
            return AbstractC19480i.this.mo2076b(C19825d.f66002k, (Function1<? super C18966e, Boolean>) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$i.class */
    public static final class C19489i extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19489i() {
            super(1);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
            C18966e name = c18966e;
            C18524p.m3840d(name, "name");
            LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) AbstractC19480i.this.f65441b.invoke(name));
            AbstractC19480i.m2094a(linkedHashSet);
            LinkedHashSet linkedHashSet2 = linkedHashSet;
            AbstractC19480i.this.mo2082a(linkedHashSet2, name);
            return C18282n.m4118h(AbstractC19480i.this.f65442d.f65480a.f65335r.m2017a(AbstractC19480i.this.f65442d, linkedHashSet2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$j */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j.class */
    public static final class C19490j extends AbstractC18526r implements Function1<C18966e, List<? extends AbstractC19017an>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19490j() {
            super(1);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ List<? extends AbstractC19017an> invoke(C18966e c18966e) {
            C18966e name = c18966e;
            C18524p.m3840d(name, "name");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            C19999a.m1208a(arrayList2, AbstractC19480i.this.f65445h.invoke(name));
            AbstractC19480i.this.mo2073a(name, arrayList2);
            return C19807d.m1455k(AbstractC19480i.this.mo2077b()) ? C18282n.m4118h((Iterable) arrayList) : C18282n.m4118h(AbstractC19480i.this.f65442d.f65480a.f65335r.m2017a(AbstractC19480i.this.f65442d, arrayList2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$k */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$k.class */
    public static final class C19491k extends AbstractC18526r implements Function0<Set<? extends C18966e>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19491k() {
            super(0);
            AbstractC19480i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends C18966e> invoke() {
            return AbstractC19480i.this.mo2079a(C19825d.f66003l);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$l */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l.class */
    public static final class C19492l extends AbstractC18526r implements Function0<AbstractC19781g<?>> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19405n f65469b;

        /* renamed from: c */
        final /* synthetic */ PropertyDescriptorImpl f65470c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19492l(AbstractC19405n abstractC19405n, PropertyDescriptorImpl propertyDescriptorImpl) {
            super(0);
            AbstractC19480i.this = r4;
            this.f65469b = abstractC19405n;
            this.f65470c = propertyDescriptorImpl;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19781g<?> invoke() {
            return AbstractC19480i.this.f65442d.f65480a.f65325h.mo2275a(this.f65469b, this.f65470c);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$m */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$m.class */
    public static final class C19493m extends AbstractC18526r implements Function1<AbstractC19025as, AbstractC18973a> {

        /* renamed from: a */
        public static final C19493m f65471a = new C19493m();

        C19493m() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18973a invoke(AbstractC19025as abstractC19025as) {
            AbstractC19025as abstractC19025as2 = abstractC19025as;
            C18524p.m3840d(abstractC19025as2, "<this>");
            return abstractC19025as2;
        }
    }

    public AbstractC19480i(C19501g c, AbstractC19480i abstractC19480i) {
        C18524p.m3840d(c, "c");
        this.f65442d = c;
        this.f65443e = abstractC19480i;
        this.f65440a = c.f65480a.f65318a.mo2312a(new C19483c(), C18297z.f63400a);
        this.f65444f = c.f65480a.f65318a.mo2313a(new C19487g());
        this.f65441b = c.f65480a.f65318a.mo2310a(new C19486f());
        this.f65445h = c.f65480a.f65318a.mo2307b(new C19485e());
        this.f65446i = c.f65480a.f65318a.mo2310a(new C19489i());
        this.f65447j = c.f65480a.f65318a.mo2313a(new C19488h());
        this.f65448k = c.f65480a.f65318a.mo2313a(new C19491k());
        this.f65449l = c.f65480a.f65318a.mo2313a(new C19484d());
        this.f65450m = c.f65480a.f65318a.mo2310a(new C19490j());
    }

    public /* synthetic */ AbstractC19480i(C19501g c19501g, AbstractC19480i abstractC19480i, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19501g, (i & 2) != 0 ? null : abstractC19480i);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC19017an m2088a(AbstractC19480i abstractC19480i, AbstractC19405n abstractC19405n) {
        boolean o = abstractC19405n.mo2186o();
        C19375g m2251a = C19375g.m2251a(abstractC19480i.mo2077b(), C19498e.m2071a(abstractC19480i.f65442d, abstractC19405n), EnumC19222y.FINAL, C19598z.m1955a(abstractC19405n.mo2184q()), !o, abstractC19405n.mo2183h(), abstractC19480i.f65442d.f65480a.f65327j.mo2236a(abstractC19405n), m2092a(abstractC19405n));
        C18524p.m3843b(m2251a, "create(\n            ownerDescriptor, annotations, Modality.FINAL, field.visibility.toDescriptorVisibility(), isVar, field.name,\n            c.components.sourceElementFactory.source(field), /* isConst = */ field.isFinalStatic\n        )");
        C19375g c19375g = m2251a;
        c19375g.m2630a((C19189x) null, (AbstractC19019ap) null, (AbstractC19215u) null, (AbstractC19215u) null);
        KotlinType transformJavaType = abstractC19480i.f65442d.f65483d.transformJavaType(abstractC19405n.mo2194g(), JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, null, 3, null));
        if (AbstractC18940g.m2805d(transformJavaType) || AbstractC18940g.m2776s(transformJavaType)) {
            m2092a(abstractC19405n);
        }
        c19375g.m2627a(transformJavaType, C18297z.f63400a, abstractC19480i.mo2074a(), (AbstractC19020aq) null);
        if (C19807d.m1480a(c19375g, c19375g.mo2593g())) {
            c19375g.m2597a(abstractC19480i.f65442d.f65480a.f65318a.mo2308b(new C19492l(abstractC19405n, c19375g)));
        }
        C19375g c19375g2 = c19375g;
        abstractC19480i.f65442d.f65480a.f65324g.mo2270a(abstractC19405n, c19375g2);
        return c19375g2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x022c A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i.C19482b m2087a(kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g r16, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w r17, java.util.List<? extends kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z> r18) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i.m2087a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g, kotlin.reflect.jvm.internal.impl.descriptors.w, java.util.List):kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i$b");
    }

    /* renamed from: a */
    public static KotlinType m2090a(AbstractC19408q method, C19501g c) {
        C18524p.m3840d(method, "method");
        C18524p.m3840d(c, "c");
        return c.f65483d.transformJavaType(method.mo2188l(), JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, method.mo2192j().mo2212k(), null, 2, null));
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2094a(Set set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String m1848a = C19657t.m1848a((AbstractC19025as) obj, false, false, 2);
            Object obj2 = linkedHashMap.get(m1848a);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(m1848a, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() != 1) {
                List list2 = list;
                Collection m1395a = C19857i.m1395a(list2, C19493m.f65471a);
                set.removeAll(list2);
                set.addAll(m1395a);
            }
        }
    }

    /* renamed from: a */
    private static boolean m2092a(AbstractC19405n abstractC19405n) {
        return abstractC19405n.mo2186o() && abstractC19405n.mo2185p();
    }

    /* renamed from: a */
    protected abstract Set<C18966e> mo2079a(C19825d c19825d);

    /* renamed from: a */
    protected abstract Set<C18966e> mo2078a(C19825d c19825d, Function1<? super C18966e, Boolean> function1);

    /* renamed from: a */
    protected abstract AbstractC19020aq mo2074a();

    /* renamed from: a */
    public final C19372f m2091a(AbstractC19408q method) {
        AbstractC19020aq abstractC19020aq;
        C18524p.m3840d(method, "method");
        C19372f m2253a = C19372f.m2253a(mo2077b(), C19498e.m2071a(this.f65442d, method), method.mo2183h(), this.f65442d.f65480a.f65327j.mo2236a(method), this.f65444f.invoke().mo2143c(method.mo2183h()) != null && method.mo2191e().isEmpty());
        C18524p.m3843b(m2253a, "createJavaMethod(\n            ownerDescriptor, annotations, method.name, c.components.sourceElementFactory.source(method),\n            declaredMemberIndex().findRecordComponentByName(method.name) != null && method.valueParameters.isEmpty()\n        )");
        C19501g m2158a = C19429a.m2158a(this.f65442d, m2253a, method, 0);
        List<AbstractC19415x> i = method.mo2177i();
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) i, 10));
        for (AbstractC19415x abstractC19415x : i) {
            TypeParameterDescriptor mo2067a = m2158a.f65481b.mo2067a(abstractC19415x);
            C18524p.m3851a(mo2067a);
            arrayList.add(mo2067a);
        }
        ArrayList arrayList2 = arrayList;
        C19482b m2087a = m2087a(m2158a, m2253a, method.mo2191e());
        C19481a mo2072a = mo2072a(method, arrayList2, m2090a(method, m2158a), m2087a.f65457a);
        KotlinType kotlinType = mo2072a.f65452b;
        if (kotlinType == null) {
            abstractC19020aq = null;
        } else {
            C19372f c19372f = m2253a;
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC19020aq = C19762c.m1522a(c19372f, kotlinType, AbstractC18983g.C18984a.m2705a());
        }
        AbstractC19020aq mo2074a = mo2074a();
        List<TypeParameterDescriptor> list = mo2072a.f65454d;
        List<AbstractC19050ba> list2 = mo2072a.f65453c;
        KotlinType kotlinType2 = mo2072a.f65451a;
        EnumC19222y.C19223a c19223a = EnumC19222y.Companion;
        m2253a.initialize(abstractC19020aq, mo2074a, list, list2, kotlinType2, EnumC19222y.C19223a.m2496a(method.mo2187n(), !method.mo2186o()), C19598z.m1955a(method.mo2184q()), mo2072a.f65452b != null ? C18247ai.m4258a(C20126t.m1103a(C19372f.f65284a, C18282n.m4123e((List<? extends Object>) m2087a.f65457a))) : C18247ai.m4257a());
        m2253a.m2252a(mo2072a.f65455e, m2087a.f65458b);
        if (!mo2072a.f65456f.isEmpty()) {
            m2158a.f65480a.f65322e.mo2267a(m2253a, mo2072a.f65456f);
        }
        return m2253a;
    }

    /* renamed from: a */
    protected abstract C19481a mo2072a(AbstractC19408q abstractC19408q, List<? extends TypeParameterDescriptor> list, KotlinType kotlinType, List<? extends AbstractC19050ba> list2);

    /* renamed from: a */
    protected abstract void mo2082a(Collection<AbstractC19025as> collection, C18966e c18966e);

    /* renamed from: a */
    protected abstract void mo2073a(C18966e c18966e, Collection<AbstractC19017an> collection);

    /* renamed from: a */
    protected boolean mo2093a(C19372f c19372f) {
        C18524p.m3840d(c19372f, "<this>");
        return true;
    }

    /* renamed from: b */
    protected abstract Set<C18966e> mo2076b(C19825d c19825d, Function1<? super C18966e, Boolean> function1);

    /* renamed from: b */
    protected abstract AbstractC19193k mo2077b();

    /* renamed from: b */
    protected void mo2086b(Collection<AbstractC19025as> result, C18966e name) {
        C18524p.m3840d(result, "result");
        C18524p.m3840d(name, "name");
    }

    /* renamed from: c */
    protected final List<AbstractC19193k> m2084c(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        int i;
        int i2;
        int i3;
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        EnumC18698d enumC18698d = EnumC18698d.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        C19825d.C19826a c19826a = C19825d.f65994a;
        i = C19825d.f66013v;
        if (kindFilter.m1428a(i)) {
            for (C18966e c18966e : mo2078a(kindFilter, nameFilter)) {
                if (nameFilter.invoke(c18966e).booleanValue()) {
                    C19999a.m1208a(linkedHashSet, getContributedClassifier(c18966e, enumC18698d));
                }
            }
        }
        C19825d.C19826a c19826a2 = C19825d.f65994a;
        i2 = C19825d.f66010s;
        if (kindFilter.m1428a(i2) && !kindFilter.f66018b.contains(AbstractC19822c.C19823a.f65991a)) {
            for (C18966e c18966e2 : mo2076b(kindFilter, nameFilter)) {
                if (nameFilter.invoke(c18966e2).booleanValue()) {
                    linkedHashSet.addAll(getContributedFunctions(c18966e2, enumC18698d));
                }
            }
        }
        C19825d.C19826a c19826a3 = C19825d.f65994a;
        i3 = C19825d.f66011t;
        if (kindFilter.m1428a(i3) && !kindFilter.f66018b.contains(AbstractC19822c.C19823a.f65991a)) {
            for (C18966e c18966e3 : mo2079a(kindFilter)) {
                if (nameFilter.invoke(c18966e3).booleanValue()) {
                    linkedHashSet.addAll(getContributedVariables(c18966e3, enumC18698d));
                }
            }
        }
        return C18282n.m4118h(linkedHashSet);
    }

    /* renamed from: c */
    protected abstract AbstractC19446b mo2075c();

    /* renamed from: d */
    public final AbstractC19296i<Collection<AbstractC19193k>> m2083d() {
        return this.f65440a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getClassifierNames() {
        return (Set) C19301m.m2316a(this.f65449l, f65439c[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        return this.f65440a.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return !getFunctionNames().contains(name) ? C18297z.f63400a : this.f65446i.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return !getVariableNames().contains(name) ? C18297z.f63400a : this.f65450m.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getFunctionNames() {
        return (Set) C19301m.m2316a(this.f65447j, f65439c[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getVariableNames() {
        return (Set) C19301m.m2316a(this.f65448k, f65439c[1]);
    }

    public String toString() {
        return C18524p.m3847a("Lazy scope for ", (Object) mo2077b());
    }
}
