package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.C18538n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18894c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.C19381c;
import kotlin.reflect.jvm.internal.impl.load.java.C19514p;
import kotlin.reflect.jvm.internal.impl.load.java.C19520s;
import kotlin.reflect.jvm.internal.impl.load.java.C19586v;
import kotlin.reflect.jvm.internal.impl.load.java.EnumC19343a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19451e;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19377i;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19528e;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.utils.C20017e;
import kotlin.reflect.jvm.internal.impl.utils.EnumC20021g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k.class */
public final class C19563k {

    /* renamed from: a */
    final C19525d f65568a;

    /* renamed from: b */
    private final C19381c f65569b;

    /* renamed from: c */
    private final C20017e f65570c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a.class */
    public static class C19564a {

        /* renamed from: a */
        public final KotlinType f65571a;

        /* renamed from: b */
        final boolean f65572b;

        /* renamed from: c */
        final boolean f65573c;

        public C19564a(KotlinType type, boolean z, boolean z2) {
            C18524p.m3840d(type, "type");
            this.f65571a = type;
            this.f65572b = z;
            this.f65573c = z2;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b.class */
    public final class C19565b {

        /* renamed from: b */
        private final AbstractC18975a f65575b;

        /* renamed from: c */
        private final KotlinType f65576c;

        /* renamed from: d */
        private final Collection<KotlinType> f65577d;

        /* renamed from: e */
        private final boolean f65578e;

        /* renamed from: f */
        private final C19501g f65579f;

        /* renamed from: g */
        private final EnumC19343a f65580g;

        /* renamed from: h */
        private final boolean f65581h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a.class */
        public static final class C19566a extends AbstractC18526r implements Function1<Integer, C19528e> {

            /* renamed from: a */
            final /* synthetic */ C19528e[] f65582a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19566a(C19528e[] c19528eArr) {
                super(1);
                this.f65582a = c19528eArr;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ C19528e invoke(Integer num) {
                C19528e c19528e;
                int intValue = num.intValue();
                C19528e[] c19528eArr = this.f65582a;
                if (intValue < 0 || intValue > C18273i.m4184h(c19528eArr)) {
                    C19528e.C19529a c19529a = C19528e.f65520a;
                    c19528e = C19528e.f65521f;
                    return c19528e;
                }
                return c19528eArr[intValue];
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$b.class */
        public static final class C19567b extends AbstractC18526r implements Function1<UnwrappedType, Boolean> {

            /* renamed from: a */
            public static final C19567b f65583a = new C19567b();

            C19567b() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Boolean invoke(UnwrappedType unwrappedType) {
                boolean z;
                AbstractC19129g declarationDescriptor = unwrappedType.getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor != null) {
                    C18966e name = declarationDescriptor.getName();
                    C18894c c18894c = C18894c.f64450a;
                    if (C18524p.m3850a(name, C18894c.m2910a().m2738e())) {
                        C18961b m1524f = C19756a.m1524f(declarationDescriptor);
                        C18894c c18894c2 = C18894c.f64450a;
                        if (C18524p.m3850a(m1524f, C18894c.m2910a())) {
                            z = true;
                            return Boolean.valueOf(z);
                        }
                    }
                }
                z = false;
                return Boolean.valueOf(z);
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$c.class */
        public static final class C19568c extends AbstractC18526r implements Function1<Integer, C19528e> {

            /* renamed from: a */
            final /* synthetic */ C19582r f65584a;

            /* renamed from: b */
            final /* synthetic */ Function1<Integer, C19528e> f65585b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C19568c(C19582r c19582r, Function1<? super Integer, C19528e> function1) {
                super(1);
                this.f65584a = c19582r;
                this.f65585b = function1;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ C19528e invoke(Integer num) {
                int intValue = num.intValue();
                C19528e c19528e = this.f65584a.f65602a.get(Integer.valueOf(intValue));
                return c19528e == null ? this.f65585b.invoke(Integer.valueOf(intValue)) : c19528e;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C19565b(C19563k this$0, AbstractC18975a abstractC18975a, KotlinType fromOverride, Collection<? extends KotlinType> fromOverridden, boolean z, C19501g containerContext, EnumC19343a containerApplicabilityType, boolean z2) {
            C18524p.m3840d(this$0, "this$0");
            C18524p.m3840d(fromOverride, "fromOverride");
            C18524p.m3840d(fromOverridden, "fromOverridden");
            C18524p.m3840d(containerContext, "containerContext");
            C18524p.m3840d(containerApplicabilityType, "containerApplicabilityType");
            C19563k.this = this$0;
            this.f65575b = abstractC18975a;
            this.f65576c = fromOverride;
            this.f65577d = fromOverridden;
            this.f65578e = z;
            this.f65579f = containerContext;
            this.f65580g = containerApplicabilityType;
            this.f65581h = z2;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ C19565b(AbstractC18975a abstractC18975a, KotlinType kotlinType, Collection collection, boolean z, C19501g c19501g, EnumC19343a enumC19343a, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(r11, abstractC18975a, kotlinType, collection, z, c19501g, enumC19343a, (i & 64) != 0 ? false : z2);
            C19563k.this = r11;
        }

        /* renamed from: a */
        private static final <T> T m2014a(List<C18961b> list, AbstractC18983g abstractC18983g, T t) {
            boolean z;
            List<C18961b> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (C18961b c18961b : list2) {
                    if (abstractC18983g.mo1340a(c18961b) != null) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z) {
                return t;
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00d9  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.jvm.functions.Function1<java.lang.Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19528e> m2015a() {
            /*
                Method dump skipped, instructions count: 446
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.C19565b.m2015a():kotlin.jvm.functions.Function1");
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19528e m2010a(kotlin.reflect.jvm.internal.impl.types.KotlinType r9) {
            /*
                Method dump skipped, instructions count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.C19565b.m2010a(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e");
        }

        /* JADX WARN: Removed duplicated region for block: B:91:0x0290  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0297  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19528e m2009a(kotlin.reflect.jvm.internal.impl.types.KotlinType r8, java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.types.KotlinType> r9, kotlin.reflect.jvm.internal.impl.load.java.C19514p r10, boolean r11, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 677
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.C19565b.m2009a(kotlin.reflect.jvm.internal.impl.types.KotlinType, java.util.Collection, kotlin.reflect.jvm.internal.impl.load.java.p, boolean, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e");
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x025e, code lost:
            if (r14.f65526a == kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.EnumC19531g.NOT_NULL) goto L116;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0264, code lost:
            r18 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x02a5, code lost:
            if (kotlin.jvm.internal.C18524p.m3850a(r12, java.lang.Boolean.TRUE) != false) goto L116;
         */
        /* JADX WARN: Removed duplicated region for block: B:102:0x026a  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x02af  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x02b5  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x02da  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x02fb  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x030b  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x031e  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x0324  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x0132 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x014a  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x024a  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0256  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19528e m2008a(kotlin.reflect.jvm.internal.impl.types.KotlinType r9, boolean r10, kotlin.reflect.jvm.internal.impl.load.java.C19514p r11, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 832
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.C19565b.m2008a(kotlin.reflect.jvm.internal.impl.types.KotlinType, boolean, kotlin.reflect.jvm.internal.impl.load.java.p, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e");
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
            if (r0.isEmpty() == false) goto L37;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.EnumC19531g m2013a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r3) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.C19565b.m2013a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g");
        }

        /* renamed from: a */
        private static final void m2012a(C19565b c19565b, ArrayList<C19578n> arrayList, KotlinType kotlinType, C19501g c19501g, TypeParameterDescriptor typeParameterDescriptor) {
            C19501g m2156b = C19429a.m2156b(c19501g, kotlinType.getAnnotations());
            C19520s m2069a = m2156b.m2069a();
            C19514p m2049a = m2069a == null ? null : m2069a.m2049a(c19565b.f65581h ? EnumC19343a.TYPE_PARAMETER_BOUNDS : EnumC19343a.TYPE_USE);
            arrayList.add(new C19578n(kotlinType, m2049a, typeParameterDescriptor, false));
            List<TypeProjection> arguments = kotlinType.getArguments();
            List<TypeParameterDescriptor> parameters = kotlinType.getConstructor().getParameters();
            C18524p.m3843b(parameters, "type.constructor.parameters");
            for (C18538n c18538n : C18282n.m4127d((Iterable) arguments, (Iterable) parameters)) {
                TypeProjection typeProjection = (TypeProjection) c18538n.f63624a;
                TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) c18538n.f63625b;
                if (typeProjection.isStarProjection()) {
                    KotlinType type = typeProjection.getType();
                    C18524p.m3843b(type, "arg.type");
                    arrayList.add(new C19578n(type, m2049a, typeParameterDescriptor2, true));
                } else {
                    KotlinType type2 = typeProjection.getType();
                    C18524p.m3843b(type2, "arg.type");
                    m2012a(c19565b, arrayList, type2, m2156b, typeParameterDescriptor2);
                }
            }
        }

        /* renamed from: b */
        private final List<C19578n> m2007b(KotlinType kotlinType) {
            ArrayList arrayList = new ArrayList(1);
            m2012a(this, arrayList, kotlinType, this.f65579f, (TypeParameterDescriptor) null);
            return arrayList;
        }

        /* renamed from: a */
        public final C19564a m2011a(C19582r c19582r) {
            Function1<Integer, C19528e> m2015a = m2015a();
            C19568c c19568c = c19582r == null ? null : new C19568c(c19582r, m2015a);
            boolean contains = TypeUtils.contains(this.f65576c, C19567b.f65583a);
            C19525d c19525d = C19563k.this.f65568a;
            KotlinType kotlinType = this.f65576c;
            if (c19568c == null) {
                c19568c = m2015a;
            }
            KotlinType m2037a = c19525d.m2037a(kotlinType, c19568c);
            C19564a c19564a = m2037a == null ? null : new C19564a(m2037a, true, contains);
            return c19564a == null ? new C19564a(this.f65576c, false, contains) : c19564a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c.class */
    public static final class C19569c extends C19564a {

        /* renamed from: d */
        final boolean f65586d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19569c(KotlinType type, boolean z, boolean z2, boolean z3) {
            super(type, z2, z3);
            C18524p.m3840d(type, "type");
            this.f65586d = z;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$d.class */
    public static final class C19570d extends AbstractC18526r implements Function1<AbstractC19039b, KotlinType> {

        /* renamed from: a */
        public static final C19570d f65587a = new C19570d();

        C19570d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            AbstractC19020aq extensionReceiverParameter = it2.getExtensionReceiverParameter();
            C18524p.m3851a(extensionReceiverParameter);
            KotlinType g = extensionReceiverParameter.mo2593g();
            C18524p.m3843b(g, "it.extensionReceiverParameter!!.type");
            return g;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$e.class */
    public static final class C19571e extends AbstractC18526r implements Function1<AbstractC19039b, KotlinType> {

        /* renamed from: a */
        public static final C19571e f65588a = new C19571e();

        C19571e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            KotlinType returnType = it2.getReturnType();
            C18524p.m3851a(returnType);
            return returnType;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$f.class */
    public static final class C19572f extends AbstractC18526r implements Function1<AbstractC19039b, KotlinType> {

        /* renamed from: a */
        final /* synthetic */ AbstractC19050ba f65589a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19572f(AbstractC19050ba abstractC19050ba) {
            super(1);
            this.f65589a = abstractC19050ba;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            KotlinType g = it2.getValueParameters().get(this.f65589a.mo2610b()).mo2593g();
            C18524p.m3843b(g, "it.valueParameters[p.index].type");
            return g;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$g.class */
    public static final class C19573g extends AbstractC18526r implements Function1<UnwrappedType, Boolean> {

        /* renamed from: a */
        public static final C19573g f65590a = new C19573g();

        C19573g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(UnwrappedType unwrappedType) {
            UnwrappedType it2 = unwrappedType;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(it2 instanceof RawType);
        }
    }

    public C19563k(C19381c annotationTypeQualifierResolver, C20017e javaTypeEnhancementState, C19525d typeEnhancement) {
        C18524p.m3840d(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        C18524p.m3840d(javaTypeEnhancementState, "javaTypeEnhancementState");
        C18524p.m3840d(typeEnhancement, "typeEnhancement");
        this.f65569b = annotationTypeQualifierResolver;
        this.f65570c = javaTypeEnhancementState;
        this.f65568a = typeEnhancement;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x056a A[LOOP:3: B:183:0x0560->B:185:0x056a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e6  */
    /* JADX WARN: Type inference failed for: r0v16, types: [kotlin.reflect.jvm.internal.impl.descriptors.b] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final <D extends kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b> D m2018a(D r9, kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g r10) {
        /*
            Method dump skipped, instructions count: 1448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.m2018a(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.load.java.lazy.g):kotlin.reflect.jvm.internal.impl.descriptors.b");
    }

    /* renamed from: a */
    private final C19532h m2024a(C18961b c18961b) {
        if (this.f65570c.f66371f == EnumC20021g.IGNORE) {
            return null;
        }
        boolean z = this.f65570c.f66371f == EnumC20021g.WARN;
        if (C18524p.m3850a(c18961b, C19586v.m1988a())) {
            return new C19532h(EnumC19531g.NULLABLE, z);
        }
        if (!C18524p.m3850a(c18961b, C19586v.m1987b())) {
            return null;
        }
        return new C19532h(EnumC19531g.FORCE_FLEXIBILITY, z);
    }

    /* renamed from: a */
    private final C19532h m2023a(C18961b c18961b, AbstractC18977c abstractC18977c, boolean z) {
        if (C19586v.m1985d().contains(c18961b)) {
            return new C19532h(EnumC19531g.NULLABLE, z);
        }
        if (C19586v.m1982g().contains(c18961b)) {
            return new C19532h(EnumC19531g.NOT_NULL, z);
        }
        if (C18524p.m3850a(c18961b, C19586v.m1984e())) {
            return m2022a(abstractC18977c, z);
        }
        if (C18524p.m3850a(c18961b, C19586v.m1981h()) && this.f65570c.f66370e) {
            return new C19532h(EnumC19531g.NULLABLE, z);
        }
        if (C18524p.m3850a(c18961b, C19586v.m1980i()) && this.f65570c.f66370e) {
            return new C19532h(EnumC19531g.NOT_NULL, z);
        }
        if (C18524p.m3850a(c18961b, C19586v.m1978k())) {
            return new C19532h(EnumC19531g.NOT_NULL, true);
        }
        if (!C18524p.m3850a(c18961b, C19586v.m1979j())) {
            return null;
        }
        return new C19532h(EnumC19531g.NULLABLE, true);
    }

    /* renamed from: a */
    private static C19532h m2022a(AbstractC18977c abstractC18977c, boolean z) {
        AbstractC19781g<?> m1530b = C19756a.m1530b(abstractC18977c);
        C19786j c19786j = m1530b instanceof C19786j ? (C19786j) m1530b : null;
        if (c19786j == null) {
            return new C19532h(EnumC19531g.NOT_NULL, z);
        }
        String m2721a = c19786j.f65970a.m2721a();
        switch (m2721a.hashCode()) {
            case 73135176:
                if (!m2721a.equals("MAYBE")) {
                    return null;
                }
                break;
            case 74175084:
                if (!m2721a.equals("NEVER")) {
                    return null;
                }
                break;
            case 433141802:
                if (m2721a.equals("UNKNOWN")) {
                    return new C19532h(EnumC19531g.FORCE_FLEXIBILITY, z);
                }
                return null;
            case 1933739535:
                if (!m2721a.equals("ALWAYS")) {
                    return null;
                }
                return new C19532h(EnumC19531g.NOT_NULL, z);
            default:
                return null;
        }
        return new C19532h(EnumC19531g.NULLABLE, z);
    }

    /* renamed from: a */
    private final C19565b m2020a(AbstractC19039b abstractC19039b, AbstractC18975a abstractC18975a, boolean z, C19501g c19501g, EnumC19343a enumC19343a, Function1<? super AbstractC19039b, ? extends KotlinType> function1) {
        KotlinType invoke = function1.invoke(abstractC19039b);
        Collection<? extends AbstractC19039b> overriddenDescriptors = abstractC19039b.getOverriddenDescriptors();
        C18524p.m3843b(overriddenDescriptors, "this.overriddenDescriptors");
        Collection<? extends AbstractC19039b> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(collection, 10));
        for (AbstractC19039b it2 : collection) {
            C18524p.m3843b(it2, "it");
            arrayList.add(function1.invoke(it2));
        }
        return new C19565b(abstractC18975a, invoke, arrayList, z, C19429a.m2156b(c19501g, function1.invoke(abstractC19039b).getAnnotations()), enumC19343a, false, 64, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
        if (r10 == null) goto L4;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.C19565b m2019a(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b r9, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba r10, kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g r11, kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, ? extends kotlin.reflect.jvm.internal.impl.types.KotlinType> r12) {
        /*
            r8 = this;
            r0 = r10
            kotlin.reflect.jvm.internal.impl.descriptors.a.a r0 = (kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a) r0
            r13 = r0
            r0 = r10
            if (r0 != 0) goto Lf
        La:
            r0 = r11
            r10 = r0
            goto L21
        Lf:
            r0 = r11
            r1 = r10
            kotlin.reflect.jvm.internal.impl.descriptors.a.g r1 = r1.getAnnotations()
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g r0 = kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a.m2156b(r0, r1)
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L21
            goto La
        L21:
            r0 = r8
            r1 = r9
            r2 = r13
            r3 = 0
            r4 = r10
            kotlin.reflect.jvm.internal.impl.load.java.a r5 = kotlin.reflect.jvm.internal.impl.load.java.EnumC19343a.VALUE_PARAMETER
            r6 = r12
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b r0 = r0.m2020a(r1, r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19563k.m2019a(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.ba, kotlin.reflect.jvm.internal.impl.load.java.lazy.g, kotlin.jvm.functions.Function1):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b");
    }

    /* renamed from: b */
    private final C19532h m2016b(AbstractC18977c abstractC18977c, boolean z, boolean z2) {
        C19532h m2030a;
        C18961b mo2042b = abstractC18977c.mo2042b();
        if (mo2042b == null) {
            return null;
        }
        boolean z3 = (abstractC18977c instanceof C19451e) && (((C19451e) abstractC18977c).f65384b || z2) && !z;
        C19532h m2024a = m2024a(mo2042b);
        C19532h c19532h = m2024a;
        if (m2024a == null) {
            C19532h m2023a = m2023a(mo2042b, abstractC18977c, z3);
            c19532h = m2023a;
            if (m2023a == null) {
                return null;
            }
        }
        if (c19532h.f65527b || !(abstractC18977c instanceof AbstractC19377i) || !((AbstractC19377i) abstractC18977c).mo2133e()) {
            return c19532h;
        }
        m2030a = C19532h.m2030a(c19532h.f65526a, true);
        return m2030a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <D extends AbstractC19039b> Collection<D> m2017a(C19501g c, Collection<? extends D> platformSignatures) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(platformSignatures, "platformSignatures");
        Collection<? extends D> collection = platformSignatures;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(collection, 10));
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(m2018a((C19563k) ((AbstractC19039b) it2.next()), c));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final C19532h m2021a(AbstractC18977c annotationDescriptor, boolean z, boolean z2) {
        C19532h m2016b;
        C19532h m2030a;
        C18524p.m3840d(annotationDescriptor, "annotationDescriptor");
        C19532h m2016b2 = m2016b(annotationDescriptor, false, z2);
        if (m2016b2 != null) {
            return m2016b2;
        }
        AbstractC18977c m2246a = this.f65569b.m2246a(annotationDescriptor);
        if (m2246a == null) {
            return null;
        }
        EnumC20021g m2241c = this.f65569b.m2241c(annotationDescriptor);
        if (m2241c.isIgnore() || (m2016b = m2016b(m2246a, false, z2)) == null) {
            return null;
        }
        m2030a = C19532h.m2030a(m2016b.f65526a, m2241c.isWarning());
        return m2030a;
    }
}
