package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18361c;
import kotlin.p530f.C18363d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19159e;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19165k;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ad */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad.class */
public final class C19001ad {

    /* renamed from: a */
    final AbstractC19302n f64733a;

    /* renamed from: b */
    final AbstractC18999ab f64734b;

    /* renamed from: c */
    final AbstractC19294g<C18961b, AbstractC19006ae> f64735c;

    /* renamed from: d */
    private final AbstractC19294g<C19002a, AbstractC19070d> f64736d;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ad$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$a.class */
    public static final class C19002a {

        /* renamed from: a */
        final C18960a f64737a;

        /* renamed from: b */
        final List<Integer> f64738b;

        public C19002a(C18960a classId, List<Integer> typeParametersCount) {
            C18524p.m3840d(classId, "classId");
            C18524p.m3840d(typeParametersCount, "typeParametersCount");
            this.f64737a = classId;
            this.f64738b = typeParametersCount;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C19002a)) {
                return false;
            }
            C19002a c19002a = (C19002a) obj;
            return C18524p.m3850a(this.f64737a, c19002a.f64737a) && C18524p.m3850a(this.f64738b, c19002a.f64738b);
        }

        public final int hashCode() {
            return (this.f64737a.hashCode() * 31) + this.f64738b.hashCode();
        }

        public final String toString() {
            return "ClassRequest(classId=" + this.f64737a + ", typeParametersCount=" + this.f64738b + ')';
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ad$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$b.class */
    public static final class C19003b extends AbstractC19159e {

        /* renamed from: a */
        private final boolean f64739a;

        /* renamed from: b */
        private final List<TypeParameterDescriptor> f64740b;

        /* renamed from: c */
        private final ClassTypeConstructorImpl f64741c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19003b(AbstractC19302n storageManager, AbstractC19193k container, C18966e name, boolean z, int i) {
            super(storageManager, container, name, AbstractC19026at.f64759a, false);
            C18524p.m3840d(storageManager, "storageManager");
            C18524p.m3840d(container, "container");
            C18524p.m3840d(name, "name");
            this.f64739a = z;
            C18361c b = C18363d.m4052b(0, i);
            ArrayList arrayList = new ArrayList(C18282n.m4163a(b, 10));
            Iterator<Integer> it2 = b.iterator();
            while (it2.hasNext()) {
                int mo4059a = ((AbstractC18245ag) it2).mo4059a();
                AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(this, AbstractC18983g.C18984a.m2705a(), false, Variance.INVARIANT, C18966e.m2719a(C18524p.m3847a("T", (Object) Integer.valueOf(mo4059a))), mo4059a, storageManager));
            }
            this.f64740b = arrayList;
            this.f64741c = new ClassTypeConstructorImpl(this, C19034ay.m2690a(this), C18255ap.m4240a(C19756a.m1527c(this).getBuiltIns().m2798g()), storageManager);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
        public final AbstractC18983g getAnnotations() {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            return AbstractC18983g.C18984a.m2705a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final AbstractC19070d getCompanionObjectDescriptor() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final Collection<AbstractC19065c> getConstructors() {
            return C18240ab.f63351a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
        public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
            return this.f64740b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final EnumC19127e getKind() {
            return EnumC19127e.CLASS;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
        public final EnumC19222y getModality() {
            return EnumC19222y.FINAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final Collection<AbstractC19070d> getSealedSubclasses() {
            return C18297z.f63400a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final /* bridge */ /* synthetic */ AbstractC19834h getStaticScope() {
            return AbstractC19834h.C19838c.f66035a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
        public final /* bridge */ /* synthetic */ TypeConstructor getTypeConstructor() {
            return this.f64741c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
        public final /* synthetic */ AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            return AbstractC19834h.C19838c.f66035a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final AbstractC19065c getUnsubstitutedPrimaryConstructor() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
        public final AbstractC19213s getVisibility() {
            AbstractC19213s PUBLIC = C19200r.f65006e;
            C18524p.m3843b(PUBLIC, "PUBLIC");
            return PUBLIC;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
        public final boolean isActual() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final boolean isCompanionObject() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final boolean isData() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
        public final boolean isExpect() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19159e, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
        public final boolean isExternal() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final boolean isFun() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final boolean isInline() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
        public final boolean isInner() {
            return this.f64739a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
        public final boolean isValue() {
            return false;
        }

        public final String toString() {
            return "class " + getName() + " (not found)";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ad$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$c.class */
    public static final class C19004c extends AbstractC18526r implements Function1<C19002a, AbstractC19070d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19004c() {
            super(1);
            C19001ad.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19070d invoke(C19002a c19002a) {
            AbstractC19006ae abstractC19006ae;
            C19002a dstr$classId$typeParametersCount = c19002a;
            C18524p.m3840d(dstr$classId$typeParametersCount, "$dstr$classId$typeParametersCount");
            C18960a c18960a = dstr$classId$typeParametersCount.f64737a;
            List<Integer> list = dstr$classId$typeParametersCount.f64738b;
            if (!c18960a.f64682a) {
                C18960a m2750d = c18960a.m2750d();
                AbstractC19070d m2699a = m2750d == null ? null : C19001ad.this.m2699a(m2750d, C18282n.m4122f((Iterable) list));
                if (m2699a == null) {
                    AbstractC19294g<C18961b, AbstractC19006ae> abstractC19294g = C19001ad.this.f64735c;
                    C18961b m2758a = c18960a.m2758a();
                    C18524p.m3843b(m2758a, "classId.packageFqName");
                    abstractC19006ae = abstractC19294g.invoke(m2758a);
                } else {
                    abstractC19006ae = m2699a;
                }
                boolean m2749e = c18960a.m2749e();
                AbstractC19302n abstractC19302n = C19001ad.this.f64733a;
                AbstractC19128f abstractC19128f = abstractC19006ae;
                C18966e m2751c = c18960a.m2751c();
                C18524p.m3843b(m2751c, "classId.shortClassName");
                Integer num = (Integer) C18282n.m4121f((List<? extends Object>) list);
                return new C19003b(abstractC19302n, abstractC19128f, m2751c, m2749e, num == null ? 0 : num.intValue());
            }
            throw new UnsupportedOperationException(C18524p.m3847a("Unresolved local class: ", (Object) c18960a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ad$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$d.class */
    public static final class C19005d extends AbstractC18526r implements Function1<C18961b, AbstractC19006ae> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19005d() {
            super(1);
            C19001ad.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19006ae invoke(C18961b c18961b) {
            C18961b fqName = c18961b;
            C18524p.m3840d(fqName, "fqName");
            return new C19165k(C19001ad.this.f64734b, fqName);
        }
    }

    public C19001ad(AbstractC19302n storageManager, AbstractC18999ab module) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(module, "module");
        this.f64733a = storageManager;
        this.f64734b = module;
        this.f64735c = storageManager.mo2310a(new C19005d());
        this.f64736d = storageManager.mo2310a(new C19004c());
    }

    /* renamed from: a */
    public final AbstractC19070d m2699a(C18960a classId, List<Integer> typeParametersCount) {
        C18524p.m3840d(classId, "classId");
        C18524p.m3840d(typeParametersCount, "typeParametersCount");
        return this.f64736d.invoke(new C19002a(classId, typeParametersCount));
    }
}
