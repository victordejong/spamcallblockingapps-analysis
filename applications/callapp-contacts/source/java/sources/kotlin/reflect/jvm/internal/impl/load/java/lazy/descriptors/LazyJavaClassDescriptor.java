package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.C20130x;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18923j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19128f;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19021ar;
import kotlin.reflect.jvm.internal.impl.descriptors.C19034ay;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19159e;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.C19516r;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.load.java.C19598z;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19498e;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19370d;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18964d;
import kotlin.reflect.jvm.internal.impl.p545c.EnumC18969h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19801s;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19831f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor.class */
public final class LazyJavaClassDescriptor extends AbstractC19159e implements AbstractC19370d {

    /* renamed from: a */
    public static final C19439a f65348a = new C19439a(null);

    /* renamed from: q */
    private static final Set<String> f65349q = C18255ap.m4239a((Object[]) new String[]{"equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString"});

    /* renamed from: b */
    public final AbstractC19398g f65350b;

    /* renamed from: c */
    public final C19501g f65351c;

    /* renamed from: d */
    private final C19501g f65352d;

    /* renamed from: e */
    private final AbstractC19070d f65353e;

    /* renamed from: f */
    private final EnumC19127e f65354f;

    /* renamed from: g */
    private final EnumC19222y f65355g;

    /* renamed from: h */
    private final AbstractC19064bf f65356h;

    /* renamed from: i */
    private final boolean f65357i;

    /* renamed from: j */
    private final LazyJavaClassTypeConstructor f65358j;

    /* renamed from: k */
    private final C19455f f65359k;

    /* renamed from: l */
    private final C19021ar<C19455f> f65360l;

    /* renamed from: m */
    private final C19831f f65361m;

    /* renamed from: n */
    private final C19494j f65362n;

    /* renamed from: o */
    private final AbstractC18983g f65363o;

    /* renamed from: p */
    private final AbstractC19296i<List<TypeParameterDescriptor>> f65364p;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor.class */
    public final class LazyJavaClassTypeConstructor extends AbstractClassTypeConstructor {
        private final AbstractC19296i<List<TypeParameterDescriptor>> parameters;
        final /* synthetic */ LazyJavaClassDescriptor this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$a.class */
        public static final class C19438a extends AbstractC18526r implements Function0<List<? extends TypeParameterDescriptor>> {

            /* renamed from: a */
            final /* synthetic */ LazyJavaClassDescriptor f65365a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19438a(LazyJavaClassDescriptor lazyJavaClassDescriptor) {
                super(0);
                this.f65365a = lazyJavaClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends TypeParameterDescriptor> invoke() {
                return C19034ay.m2690a(this.f65365a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LazyJavaClassTypeConstructor(LazyJavaClassDescriptor this$0) {
            super(this$0.f65351c.f65480a.f65318a);
            C18524p.m3840d(this$0, "this$0");
            this.this$0 = this$0;
            this.parameters = this$0.f65351c.f65480a.f65318a.mo2313a(new C19438a(this$0));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
            if ((!r7.f64686b.f64691a.isEmpty() && r7.m2742b(kotlin.reflect.jvm.internal.impl.builtins.C18954j.f64582l)) != false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.types.KotlinType getPurelyImplementedSupertype() {
            /*
                Method dump skipped, instructions count: 405
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.LazyJavaClassTypeConstructor.getPurelyImplementedSupertype():kotlin.reflect.jvm.internal.impl.types.KotlinType");
        }

        private final C18961b getPurelyImplementsFqNameFromAnnotation() {
            AbstractC18983g annotations = this.this$0.getAnnotations();
            C18961b PURELY_IMPLEMENTS_ANNOTATION = C19585u.f65621o;
            C18524p.m3843b(PURELY_IMPLEMENTS_ANNOTATION, "PURELY_IMPLEMENTS_ANNOTATION");
            AbstractC18977c mo1340a = annotations.mo1340a(PURELY_IMPLEMENTS_ANNOTATION);
            if (mo1340a == null) {
                return null;
            }
            Object e = C18282n.m4124e(mo1340a.mo2041c().values());
            C19801s c19801s = e instanceof C19801s ? (C19801s) e : null;
            String str = c19801s == null ? null : (String) c19801s.mo1489a();
            if (str == null) {
                return null;
            }
            boolean z = false;
            if (str != null) {
                EnumC18969h enumC18969h = EnumC18969h.BEGINNING;
                int i = 0;
                while (true) {
                    if (i < str.length()) {
                        char charAt = str.charAt(i);
                        int i2 = i + 1;
                        int i3 = C18964d.C18965a.f64695a[enumC18969h.ordinal()];
                        if (i3 == 1 || i3 == 2) {
                            z = false;
                            if (!Character.isJavaIdentifierPart(charAt)) {
                                break;
                            }
                            enumC18969h = EnumC18969h.MIDDLE;
                            i = i2;
                        } else if (i3 != 3) {
                            i = i2;
                        } else if (charAt == '.') {
                            enumC18969h = EnumC18969h.AFTER_DOT;
                            i = i2;
                        } else {
                            i = i2;
                            if (!Character.isJavaIdentifierPart(charAt)) {
                                z = false;
                                break;
                            }
                        }
                    } else {
                        z = false;
                        if (enumC18969h != EnumC18969h.AFTER_DOT) {
                            z = true;
                        }
                    }
                }
            }
            if (z) {
                return new C18961b(str);
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection<KotlinType> computeSupertypes() {
            Collection<AbstractC19401j> mo2215f = this.this$0.f65350b.mo2215f();
            ArrayList arrayList = new ArrayList(mo2215f.size());
            ArrayList arrayList2 = new ArrayList(0);
            KotlinType purelyImplementedSupertype = getPurelyImplementedSupertype();
            Iterator<AbstractC19401j> it2 = mo2215f.iterator();
            while (true) {
                TypeConstructor typeConstructor = null;
                if (!it2.hasNext()) {
                    break;
                }
                AbstractC19401j next = it2.next();
                KotlinType transformJavaType = this.this$0.f65351c.f65483d.transformJavaType(next, JavaTypeResolverKt.toAttributes$default(EnumC19365k.SUPERTYPE, false, null, 3, null));
                C19501g unused = this.this$0.f65351c;
                if (transformJavaType.getConstructor().getDeclarationDescriptor() instanceof C19001ad.C19003b) {
                    arrayList2.add(next);
                }
                TypeConstructor constructor = transformJavaType.getConstructor();
                if (purelyImplementedSupertype != null) {
                    typeConstructor = purelyImplementedSupertype.getConstructor();
                }
                if (!C18524p.m3850a(constructor, typeConstructor) && !AbstractC18940g.m2781o(transformJavaType)) {
                    arrayList.add(transformJavaType);
                }
            }
            ArrayList arrayList3 = arrayList;
            AbstractC19070d abstractC19070d = this.this$0.f65353e;
            C19999a.m1208a(arrayList3, abstractC19070d == null ? null : C18923j.m2866a(abstractC19070d, this.this$0).buildSubstitutor().substitute(abstractC19070d.getDefaultType(), Variance.INVARIANT));
            C19999a.m1208a(arrayList3, purelyImplementedSupertype);
            if (!arrayList2.isEmpty()) {
                AbstractC19955o abstractC19955o = this.this$0.f65351c.f65480a.f65323f;
                AbstractC19070d declarationDescriptor = getDeclarationDescriptor();
                ArrayList<AbstractC19414w> arrayList4 = arrayList2;
                ArrayList arrayList5 = new ArrayList(C18282n.m4163a((Iterable) arrayList4, 10));
                for (AbstractC19414w abstractC19414w : arrayList4) {
                    arrayList5.add(((AbstractC19401j) abstractC19414w).mo2201f());
                }
                abstractC19955o.mo1251a(declarationDescriptor, arrayList5);
            }
            return arrayList3.isEmpty() ^ true ? C18282n.m4118h((Iterable) arrayList) : C18282n.m4176a(this.this$0.f65351c.f65480a.f65332o.getBuiltIns().m2798g());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final AbstractC19070d getDeclarationDescriptor() {
            return this.this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return this.parameters.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final AbstractC19031aw getSupertypeLoopChecker() {
            return this.this$0.f65351c.f65480a.f65330m;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        public final String toString() {
            String m2721a = this.this$0.getName().m2721a();
            C18524p.m3843b(m2721a, "name.asString()");
            return m2721a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a.class */
    public static final class C19439a {
        private C19439a() {
        }

        public /* synthetic */ C19439a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$b.class */
    public static final class C19440b extends AbstractC18526r implements Function0<List<? extends TypeParameterDescriptor>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19440b() {
            super(0);
            LazyJavaClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends TypeParameterDescriptor> invoke() {
            List<AbstractC19415x> i = LazyJavaClassDescriptor.this.f65350b.mo2177i();
            LazyJavaClassDescriptor lazyJavaClassDescriptor = LazyJavaClassDescriptor.this;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) i, 10));
            for (AbstractC19415x abstractC19415x : i) {
                TypeParameterDescriptor mo2067a = lazyJavaClassDescriptor.f65351c.f65481b.mo2067a(abstractC19415x);
                if (mo2067a == null) {
                    throw new AssertionError("Parameter " + abstractC19415x + " surely belongs to class " + lazyJavaClassDescriptor.f65350b + ", so it must be resolved");
                }
                arrayList.add(mo2067a);
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$c.class */
    public static final class C19441c extends AbstractC18526r implements Function1<KotlinTypeRefiner, C19455f> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19441c() {
            super(1);
            LazyJavaClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C19455f invoke(KotlinTypeRefiner kotlinTypeRefiner) {
            KotlinTypeRefiner it2 = kotlinTypeRefiner;
            C18524p.m3840d(it2, "it");
            C19501g c19501g = LazyJavaClassDescriptor.this.f65351c;
            LazyJavaClassDescriptor lazyJavaClassDescriptor = LazyJavaClassDescriptor.this;
            return new C19455f(c19501g, lazyJavaClassDescriptor, lazyJavaClassDescriptor.f65350b, LazyJavaClassDescriptor.this.f65353e != null, LazyJavaClassDescriptor.this.f65359k);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor(C19501g outerContext, AbstractC19193k containingDeclaration, AbstractC19398g jClass, AbstractC19070d abstractC19070d) {
        super(outerContext.f65480a.f65318a, containingDeclaration, jClass.mo2183h(), outerContext.f65480a.f65327j.mo2236a(jClass), false);
        EnumC19222y enumC19222y;
        C18524p.m3840d(outerContext, "outerContext");
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(jClass, "jClass");
        this.f65352d = outerContext;
        this.f65350b = jClass;
        this.f65353e = abstractC19070d;
        C19501g m2159a = C19429a.m2159a(outerContext, (AbstractC19128f) this, (AbstractC19416y) jClass, 4);
        this.f65351c = m2159a;
        m2159a.f65480a.f65324g.mo2272a(jClass);
        boolean z = C20130x.f66532a;
        this.f65354f = jClass.mo2212k() ? EnumC19127e.ANNOTATION_CLASS : jClass.mo2213j() ? EnumC19127e.INTERFACE : jClass.mo2211l() ? EnumC19127e.ENUM_CLASS : EnumC19127e.CLASS;
        if (jClass.mo2212k() || jClass.mo2211l()) {
            enumC19222y = EnumC19222y.FINAL;
        } else {
            EnumC19222y.C19223a c19223a = EnumC19222y.Companion;
            enumC19222y = EnumC19222y.C19223a.m2496a(jClass.mo2187n() || jClass.mo2213j(), !jClass.mo2186o());
        }
        this.f65355g = enumC19222y;
        this.f65356h = jClass.mo2184q();
        this.f65357i = jClass.mo2208s() != null && !jClass.mo2185p();
        this.f65358j = new LazyJavaClassTypeConstructor(this);
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this;
        C19455f c19455f = new C19455f(m2159a, lazyJavaClassDescriptor, jClass, abstractC19070d != null, null, 16, null);
        this.f65359k = c19455f;
        C19021ar.C19022a c19022a = C19021ar.f64750a;
        this.f65360l = C19021ar.C19022a.m2692a(lazyJavaClassDescriptor, m2159a.f65480a.f65318a, m2159a.f65480a.f65338u.getKotlinTypeRefiner(), new C19441c());
        this.f65361m = new C19831f(c19455f);
        this.f65362n = new C19494j(m2159a, jClass, this);
        this.f65363o = C19498e.m2071a(m2159a, jClass);
        this.f65364p = m2159a.f65480a.f65318a.mo2313a(new C19440b());
    }

    public /* synthetic */ LazyJavaClassDescriptor(C19501g c19501g, AbstractC19193k abstractC19193k, AbstractC19398g abstractC19398g, AbstractC19070d abstractC19070d, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19501g, abstractC19193k, abstractC19398g, (i & 8) != 0 ? null : abstractC19070d);
    }

    /* renamed from: a */
    public final C19455f m2153a() {
        return (C19455f) super.getUnsubstitutedMemberScope();
    }

    /* renamed from: b */
    public final List<AbstractC19065c> getConstructors() {
        return this.f65359k.f65396b.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        return this.f65363o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final AbstractC19070d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.f65364p.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final EnumC19127e getKind() {
        return this.f65354f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final EnumC19222y getModality() {
        return this.f65355g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final Collection<AbstractC19070d> getSealedSubclasses() {
        if (this.f65355g == EnumC19222y.SEALED) {
            JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, null, 3, null);
            Collection<AbstractC19401j> mo2210m = this.f65350b.mo2210m();
            ArrayList arrayList = new ArrayList();
            for (AbstractC19401j abstractC19401j : mo2210m) {
                AbstractC19129g declarationDescriptor = this.f65351c.f65483d.transformJavaType(abstractC19401j, attributes$default).getConstructor().getDeclarationDescriptor();
                AbstractC19070d abstractC19070d = declarationDescriptor instanceof AbstractC19070d ? (AbstractC19070d) declarationDescriptor : null;
                if (abstractC19070d != null) {
                    arrayList.add(abstractC19070d);
                }
            }
            return arrayList;
        }
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final AbstractC19834h getStaticScope() {
        return this.f65362n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public final TypeConstructor getTypeConstructor() {
        return this.f65358j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19137a, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final AbstractC19834h getUnsubstitutedInnerClassesScope() {
        return this.f65361m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19137a, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ AbstractC19834h getUnsubstitutedMemberScope() {
        return (C19455f) super.getUnsubstitutedMemberScope();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public final /* synthetic */ AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.f65360l.m2694a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final AbstractC19213s getVisibility() {
        if (!C18524p.m3850a(this.f65356h, C19200r.f65002a) || this.f65350b.mo2208s() != null) {
            return C19598z.m1955a(this.f65356h);
        }
        AbstractC19213s abstractC19213s = C19516r.f65503a;
        C18524p.m3843b(abstractC19213s, "{\n            JavaDescriptorVisibilities.PACKAGE_VISIBILITY\n        }");
        return abstractC19213s;
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
        return this.f65357i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isValue() {
        return false;
    }

    public final String toString() {
        return C18524p.m3847a("Lazy Java class ", (Object) C19756a.m1531a((AbstractC19193k) this));
    }
}
