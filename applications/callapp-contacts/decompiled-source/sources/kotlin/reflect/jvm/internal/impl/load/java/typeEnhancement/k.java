package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.a.i;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.load.java.s;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e;
import kotlin.reflect.jvm.internal.impl.load.java.v;
import kotlin.reflect.jvm.internal.impl.resolve.constants.j;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d f37966a;

    /* renamed from: b  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.c f37967b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.utils.e f37968c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final KotlinType f37969a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f37970b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f37971c;

        public a(KotlinType type, boolean z, boolean z2) {
            p.d(type, "type");
            this.f37969a = type;
            this.f37970b = z;
            this.f37971c = z2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b.class */
    public final class b {

        /* renamed from: b  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.descriptors.a.a f37973b;

        /* renamed from: c  reason: collision with root package name */
        private final KotlinType f37974c;

        /* renamed from: d  reason: collision with root package name */
        private final Collection<KotlinType> f37975d;
        private final boolean e;
        private final kotlin.reflect.jvm.internal.impl.load.java.lazy.g f;
        private final kotlin.reflect.jvm.internal.impl.load.java.a g;
        private final boolean h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a.class */
        public static final class a extends r implements Function1<Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e[] f37976a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e[] eVarArr) {
                super(1);
                this.f37976a = eVarArr;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e invoke(Integer num) {
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e eVar;
                int intValue = num.intValue();
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e[] eVarArr = this.f37976a;
                if (intValue >= 0 && intValue <= i.h(eVarArr)) {
                    return eVarArr[intValue];
                }
                e.a aVar = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e.f37920a;
                eVar = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e.f;
                return eVar;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$b.class */
        public static final class C0690b extends r implements Function1<UnwrappedType, Boolean> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0690b f37977a = new C0690b();

            C0690b() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Boolean invoke(UnwrappedType unwrappedType) {
                boolean z;
                kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = unwrappedType.getConstructor().getDeclarationDescriptor();
                if (declarationDescriptor != null) {
                    kotlin.reflect.jvm.internal.impl.c.e name = declarationDescriptor.getName();
                    kotlin.reflect.jvm.internal.impl.builtins.a.c cVar = kotlin.reflect.jvm.internal.impl.builtins.a.c.f37237a;
                    if (p.a(name, kotlin.reflect.jvm.internal.impl.builtins.a.c.a().e())) {
                        kotlin.reflect.jvm.internal.impl.c.b f = kotlin.reflect.jvm.internal.impl.resolve.b.a.f(declarationDescriptor);
                        kotlin.reflect.jvm.internal.impl.builtins.a.c cVar2 = kotlin.reflect.jvm.internal.impl.builtins.a.c.f37237a;
                        if (p.a(f, kotlin.reflect.jvm.internal.impl.builtins.a.c.a())) {
                            z = true;
                            return Boolean.valueOf(z);
                        }
                    }
                }
                z = false;
                return Boolean.valueOf(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$c.class */
        public static final class c extends r implements Function1<Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ r f37978a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Function1<Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> f37979b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            c(r rVar, Function1<? super Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> function1) {
                super(1);
                this.f37978a = rVar;
                this.f37979b = function1;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e invoke(Integer num) {
                int intValue = num.intValue();
                kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e eVar = this.f37978a.f37996a.get(Integer.valueOf(intValue));
                return eVar == null ? this.f37979b.invoke(Integer.valueOf(intValue)) : eVar;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(k this$0, kotlin.reflect.jvm.internal.impl.descriptors.a.a aVar, KotlinType fromOverride, Collection<? extends KotlinType> fromOverridden, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.g containerContext, kotlin.reflect.jvm.internal.impl.load.java.a containerApplicabilityType, boolean z2) {
            p.d(this$0, "this$0");
            p.d(fromOverride, "fromOverride");
            p.d(fromOverridden, "fromOverridden");
            p.d(containerContext, "containerContext");
            p.d(containerApplicabilityType, "containerApplicabilityType");
            k.this = this$0;
            this.f37973b = aVar;
            this.f37974c = fromOverride;
            this.f37975d = fromOverridden;
            this.e = z;
            this.f = containerContext;
            this.g = containerApplicabilityType;
            this.h = z2;
        }

        public /* synthetic */ b(kotlin.reflect.jvm.internal.impl.descriptors.a.a aVar, KotlinType kotlinType, Collection collection, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, kotlin.reflect.jvm.internal.impl.load.java.a aVar2, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(k.this, aVar, kotlinType, collection, z, gVar, aVar2, (i & 64) != 0 ? false : z2);
        }

        private static final <T> T a(List<kotlin.reflect.jvm.internal.impl.c.b> list, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, T t) {
            List<kotlin.reflect.jvm.internal.impl.c.b> list2 = list;
            boolean z = true;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                for (kotlin.reflect.jvm.internal.impl.c.b bVar : list2) {
                    if (gVar.a(bVar) != null) {
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.jvm.functions.Function1<java.lang.Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> a() {
            /*
                Method dump skipped, instructions count: 446
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.b.a():kotlin.jvm.functions.Function1");
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e a(kotlin.reflect.jvm.internal.impl.types.KotlinType r9) {
            /*
                Method dump skipped, instructions count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.b.a(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e");
        }

        /* JADX WARN: Removed duplicated region for block: B:91:0x0290  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0297  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e a(kotlin.reflect.jvm.internal.impl.types.KotlinType r8, java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.types.KotlinType> r9, kotlin.reflect.jvm.internal.impl.load.java.p r10, boolean r11, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 677
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.b.a(kotlin.reflect.jvm.internal.impl.types.KotlinType, java.util.Collection, kotlin.reflect.jvm.internal.impl.load.java.p, boolean, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e");
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x025e, code lost:
            if (r14.f37924a == kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NOT_NULL) goto L_0x02a8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0264, code lost:
            r18 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x02a5, code lost:
            if (kotlin.jvm.internal.p.a(r12, java.lang.Boolean.TRUE) != false) goto L_0x02a8;
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e a(kotlin.reflect.jvm.internal.impl.types.KotlinType r9, boolean r10, kotlin.reflect.jvm.internal.impl.load.java.p r11, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 832
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.b.a(kotlin.reflect.jvm.internal.impl.types.KotlinType, boolean, kotlin.reflect.jvm.internal.impl.load.java.p, kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e");
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
            if (r0.isEmpty() == false) goto L_0x00df;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor r3) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.b.a(kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g");
        }

        private static final void a(b bVar, ArrayList<n> arrayList, KotlinType kotlinType, kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, TypeParameterDescriptor typeParameterDescriptor) {
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g b2 = kotlin.reflect.jvm.internal.impl.load.java.lazy.a.b(gVar, kotlinType.getAnnotations());
            s a2 = b2.a();
            kotlin.reflect.jvm.internal.impl.load.java.p a3 = a2 == null ? null : a2.a(bVar.h ? kotlin.reflect.jvm.internal.impl.load.java.a.TYPE_PARAMETER_BOUNDS : kotlin.reflect.jvm.internal.impl.load.java.a.TYPE_USE);
            arrayList.add(new n(kotlinType, a3, typeParameterDescriptor, false));
            List<TypeProjection> arguments = kotlinType.getArguments();
            List<TypeParameterDescriptor> parameters = kotlinType.getConstructor().getParameters();
            p.b(parameters, "type.constructor.parameters");
            for (n nVar : kotlin.a.n.d((Iterable) arguments, (Iterable) parameters)) {
                TypeProjection typeProjection = (TypeProjection) nVar.f36810a;
                TypeParameterDescriptor typeParameterDescriptor2 = (TypeParameterDescriptor) nVar.f36811b;
                if (typeProjection.isStarProjection()) {
                    KotlinType type = typeProjection.getType();
                    p.b(type, "arg.type");
                    arrayList.add(new n(type, a3, typeParameterDescriptor2, true));
                } else {
                    KotlinType type2 = typeProjection.getType();
                    p.b(type2, "arg.type");
                    a(bVar, arrayList, type2, b2, typeParameterDescriptor2);
                }
            }
        }

        private final List<n> b(KotlinType kotlinType) {
            ArrayList arrayList = new ArrayList(1);
            a(this, arrayList, kotlinType, this.f, (TypeParameterDescriptor) null);
            return arrayList;
        }

        public final a a(r rVar) {
            Function1<Integer, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.e> a2 = a();
            a aVar = null;
            c cVar = rVar == null ? null : new c(rVar, a2);
            boolean contains = TypeUtils.contains(this.f37974c, C0690b.f37977a);
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d dVar = k.this.f37966a;
            KotlinType kotlinType = this.f37974c;
            if (cVar == null) {
                cVar = a2;
            }
            KotlinType a3 = dVar.a(kotlinType, cVar);
            if (a3 != null) {
                aVar = new a(a3, true, contains);
            }
            return aVar == null ? new a(this.f37974c, false, contains) : aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$c.class */
    public static final class c extends a {

        /* renamed from: d  reason: collision with root package name */
        final boolean f37980d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(KotlinType type, boolean z, boolean z2, boolean z3) {
            super(type, z2, z3);
            p.d(type, "type");
            this.f37980d = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$d.class */
    public static final class d extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f37981a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            aq extensionReceiverParameter = it2.getExtensionReceiverParameter();
            p.a(extensionReceiverParameter);
            KotlinType g = extensionReceiverParameter.g();
            p.b(g, "it.extensionReceiverParameter!!.type");
            return g;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$e.class */
    public static final class e extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f37982a = new e();

        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            KotlinType returnType = it2.getReturnType();
            p.a(returnType);
            return returnType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$f.class */
    public static final class f extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ba f37983a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(ba baVar) {
            super(1);
            this.f37983a = baVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b it2 = bVar;
            p.d(it2, "it");
            KotlinType g = it2.getValueParameters().get(this.f37983a.b()).g();
            p.b(g, "it.valueParameters[p.index].type");
            return g;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$g.class */
    public static final class g extends r implements Function1<UnwrappedType, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f37984a = new g();

        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(UnwrappedType unwrappedType) {
            UnwrappedType it2 = unwrappedType;
            p.d(it2, "it");
            return Boolean.valueOf(it2 instanceof RawType);
        }
    }

    public k(kotlin.reflect.jvm.internal.impl.load.java.c annotationTypeQualifierResolver, kotlin.reflect.jvm.internal.impl.utils.e javaTypeEnhancementState, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d typeEnhancement) {
        p.d(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        p.d(javaTypeEnhancementState, "javaTypeEnhancementState");
        p.d(typeEnhancement, "typeEnhancement");
        this.f37967b = annotationTypeQualifierResolver;
        this.f37968c = javaTypeEnhancementState;
        this.f37966a = typeEnhancement;
    }

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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final <D extends kotlin.reflect.jvm.internal.impl.descriptors.b> D a(D r9, kotlin.reflect.jvm.internal.impl.load.java.lazy.g r10) {
        /*
            Method dump skipped, instructions count: 1448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.a(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.load.java.lazy.g):kotlin.reflect.jvm.internal.impl.descriptors.b");
    }

    private final h a(kotlin.reflect.jvm.internal.impl.c.b bVar) {
        if (this.f37968c.f == kotlin.reflect.jvm.internal.impl.utils.g.IGNORE) {
            return null;
        }
        boolean z = this.f37968c.f == kotlin.reflect.jvm.internal.impl.utils.g.WARN;
        if (p.a(bVar, v.a())) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NULLABLE, z);
        }
        if (p.a(bVar, v.b())) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.FORCE_FLEXIBILITY, z);
        }
        return null;
    }

    private final h a(kotlin.reflect.jvm.internal.impl.c.b bVar, kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar, boolean z) {
        if (v.d().contains(bVar)) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NULLABLE, z);
        }
        if (v.g().contains(bVar)) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NOT_NULL, z);
        }
        if (p.a(bVar, v.e())) {
            return a(cVar, z);
        }
        if (p.a(bVar, v.h()) && this.f37968c.e) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NULLABLE, z);
        }
        if (p.a(bVar, v.i()) && this.f37968c.e) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NOT_NULL, z);
        }
        if (p.a(bVar, v.k())) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NOT_NULL, true);
        }
        if (p.a(bVar, v.j())) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NULLABLE, true);
        }
        return null;
    }

    private static h a(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar, boolean z) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> b2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.b(cVar);
        j jVar = b2 instanceof j ? (j) b2 : null;
        if (jVar == null) {
            return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NOT_NULL, z);
        }
        String a2 = jVar.f38255a.a();
        switch (a2.hashCode()) {
            case 73135176:
                if (!a2.equals("MAYBE")) {
                    return null;
                }
                break;
            case 74175084:
                if (!a2.equals("NEVER")) {
                    return null;
                }
                break;
            case 433141802:
                if (!a2.equals("UNKNOWN")) {
                    return null;
                }
                return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.FORCE_FLEXIBILITY, z);
            case 1933739535:
                if (a2.equals("ALWAYS")) {
                    return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NOT_NULL, z);
                }
                return null;
            default:
                return null;
        }
        return new h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g.NULLABLE, z);
    }

    private final b a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, kotlin.reflect.jvm.internal.impl.descriptors.a.a aVar, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, kotlin.reflect.jvm.internal.impl.load.java.a aVar2, Function1<? super kotlin.reflect.jvm.internal.impl.descriptors.b, ? extends KotlinType> function1) {
        KotlinType kotlinType = (KotlinType) function1.invoke(bVar);
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> overriddenDescriptors = bVar.getOverriddenDescriptors();
        p.b(overriddenDescriptors, "this.overriddenDescriptors");
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(collection, 10));
        for (kotlin.reflect.jvm.internal.impl.descriptors.b it2 : collection) {
            p.b(it2, "it");
            arrayList.add((KotlinType) function1.invoke(it2));
        }
        return new b(aVar, kotlinType, arrayList, z, kotlin.reflect.jvm.internal.impl.load.java.lazy.a.b(gVar, ((KotlinType) function1.invoke(bVar)).getAnnotations()), aVar2, false, 64, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
        if (r10 == null) goto L_0x000a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.b a(kotlin.reflect.jvm.internal.impl.descriptors.b r9, kotlin.reflect.jvm.internal.impl.descriptors.ba r10, kotlin.reflect.jvm.internal.impl.load.java.lazy.g r11, kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.descriptors.b, ? extends kotlin.reflect.jvm.internal.impl.types.KotlinType> r12) {
        /*
            r8 = this;
            r0 = r10
            kotlin.reflect.jvm.internal.impl.descriptors.a.a r0 = (kotlin.reflect.jvm.internal.impl.descriptors.a.a) r0
            r13 = r0
            r0 = r10
            if (r0 != 0) goto L_0x000f
        L_0x000a:
            r0 = r11
            r10 = r0
            goto L_0x0021
        L_0x000f:
            r0 = r11
            r1 = r10
            kotlin.reflect.jvm.internal.impl.descriptors.a.g r1 = r1.getAnnotations()
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g r0 = kotlin.reflect.jvm.internal.impl.load.java.lazy.a.b(r0, r1)
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0021
            goto L_0x000a
        L_0x0021:
            r0 = r8
            r1 = r9
            r2 = r13
            r3 = 0
            r4 = r10
            kotlin.reflect.jvm.internal.impl.load.java.a r5 = kotlin.reflect.jvm.internal.impl.load.java.a.VALUE_PARAMETER
            r6 = r12
            kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b r0 = r0.a(r1, r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k.a(kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.ba, kotlin.reflect.jvm.internal.impl.load.java.lazy.g, kotlin.jvm.functions.Function1):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.k$b");
    }

    private final h b(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar, boolean z, boolean z2) {
        h a2;
        kotlin.reflect.jvm.internal.impl.c.b b2 = cVar.b();
        if (b2 == null) {
            return null;
        }
        boolean z3 = (cVar instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e) && (((kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e) cVar).f37813b || z2) && !z;
        h a3 = a(b2);
        h hVar = a3;
        if (a3 == null) {
            h a4 = a(b2, cVar, z3);
            hVar = a4;
            if (a4 == null) {
                return null;
            }
        }
        if (hVar.f37925b || !(cVar instanceof kotlin.reflect.jvm.internal.impl.load.java.b.i) || !((kotlin.reflect.jvm.internal.impl.load.java.b.i) cVar).e()) {
            return hVar;
        }
        a2 = h.a(hVar.f37924a, true);
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends kotlin.reflect.jvm.internal.impl.descriptors.b> Collection<D> a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2, Collection<? extends D> platformSignatures) {
        p.d(c2, "c");
        p.d(platformSignatures, "platformSignatures");
        Collection<? extends D> collection = platformSignatures;
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(collection, 10));
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(a((k) ((kotlin.reflect.jvm.internal.impl.descriptors.b) it2.next()), c2));
        }
        return arrayList;
    }

    public final h a(kotlin.reflect.jvm.internal.impl.descriptors.a.c annotationDescriptor, boolean z, boolean z2) {
        h b2;
        h a2;
        p.d(annotationDescriptor, "annotationDescriptor");
        h b3 = b(annotationDescriptor, false, z2);
        if (b3 != null) {
            return b3;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a.c a3 = this.f37967b.a(annotationDescriptor);
        if (a3 == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.utils.g c2 = this.f37967b.c(annotationDescriptor);
        if (c2.isIgnore() || (b2 = b(a3, false, z2)) == null) {
            return null;
        }
        a2 = h.a(b2.f37924a, c2.isWarning());
        return a2;
    }
}
