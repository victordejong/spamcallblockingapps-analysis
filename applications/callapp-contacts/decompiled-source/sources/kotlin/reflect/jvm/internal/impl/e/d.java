package kotlin.reflect.jvm.internal.impl.e;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.al;
import kotlin.reflect.jvm.internal.impl.descriptors.am;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.ay;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.resolve.constants.o;
import kotlin.reflect.jvm.internal.impl.types.AbbreviatedType;
import kotlin.reflect.jvm.internal.impl.types.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnresolvedType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.WrappedType;
import kotlin.v;
import kotlin.x;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d.class */
public final class d extends kotlin.reflect.jvm.internal.impl.e.c implements kotlin.reflect.jvm.internal.impl.e.f {
    final kotlin.reflect.jvm.internal.impl.e.g l;
    private final Lazy m;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$a.class */
    final class a implements m<v, StringBuilder> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f37615a;

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$a$a.class */
        public final /* synthetic */ class C0678a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f37616a;

            static {
                int[] iArr = new int[l.values().length];
                iArr[l.PRETTY.ordinal()] = 1;
                iArr[l.DEBUG.ordinal()] = 2;
                iArr[l.NONE.ordinal()] = 3;
                f37616a = iArr;
            }
        }

        public a(d this$0) {
            p.d(this$0, "this$0");
            this.f37615a = this$0;
        }

        private final void a(am amVar, StringBuilder sb, String str) {
            int i = C0678a.f37616a[this.f37615a.e().ordinal()];
            if (i == 1) {
                d.a(this.f37615a, amVar, sb);
                sb.append(p.a(str, (Object) " for "));
                d dVar = this.f37615a;
                an b2 = amVar.b();
                p.b(b2, "descriptor.correspondingProperty");
                d.a(dVar, b2, sb);
            } else if (i == 2) {
                a2((w) amVar, sb);
            }
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        private void a2(w descriptor, StringBuilder builder) {
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, descriptor, builder);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(TypeParameterDescriptor descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            this.f37615a.a(descriptor, builder, true);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(ab descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            this.f37615a.a((k) descriptor, builder, true);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(ae descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, descriptor, builder);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(aj descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, descriptor, builder);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(an descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, descriptor, builder);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(ao descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            a(descriptor, builder, "getter");
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(ap descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            a(descriptor, builder, "setter");
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(aq descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            builder.append(descriptor.getName());
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(ax descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, descriptor, builder);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(ba descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            this.f37615a.a(descriptor, true, builder, true);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(descriptor, "descriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, descriptor, builder);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ v a(j constructorDescriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            p.d(constructorDescriptor, "constructorDescriptor");
            p.d(builder, "builder");
            d.a(this.f37615a, constructorDescriptor, builder);
            return v.f38654a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* bridge */ /* synthetic */ v a(w wVar, StringBuilder sb) {
            a2(wVar, sb);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$b.class */
    public final /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37617a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f37618b;

        static {
            int[] iArr = new int[m.values().length];
            iArr[m.PLAIN.ordinal()] = 1;
            iArr[m.HTML.ordinal()] = 2;
            f37617a = iArr;
            int[] iArr2 = new int[k.values().length];
            iArr2[k.ALL.ordinal()] = 1;
            iArr2[k.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
            iArr2[k.NONE.ordinal()] = 3;
            f37618b = iArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$c.class */
    public static final class c extends r implements Function1<TypeProjection, CharSequence> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(TypeProjection typeProjection) {
            String str;
            TypeProjection it2 = typeProjection;
            p.d(it2, "it");
            if (it2.isStarProjection()) {
                str = "*";
            } else {
                d dVar = d.this;
                KotlinType type = it2.getType();
                p.b(type, "it.type");
                str = dVar.a(type);
                if (it2.getProjectionKind() != Variance.INVARIANT) {
                    str = it2.getProjectionKind() + ' ' + str;
                }
            }
            return str;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$d  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$d.class */
    static final class C0679d extends r implements Function0<d> {

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$d$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$d$1.class */
        static final class AnonymousClass1 extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f37621a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
                kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
                p.d(fVar2, "<this>");
                fVar2.a(kotlin.a.ap.a((Set) fVar2.d(), (Iterable) n.a(j.a.C)));
                fVar2.a(kotlin.reflect.jvm.internal.impl.e.a.ALWAYS_PARENTHESIZED);
                return v.f38654a;
            }
        }

        C0679d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ d invoke() {
            d dVar = d.this;
            AnonymousClass1 changeOptions = AnonymousClass1.f37621a;
            p.d(changeOptions, "changeOptions");
            kotlin.reflect.jvm.internal.impl.e.g gVar = dVar.l;
            kotlin.reflect.jvm.internal.impl.e.g gVar2 = new kotlin.reflect.jvm.internal.impl.e.g();
            Field[] declaredFields = gVar.getClass().getDeclaredFields();
            p.b(declaredFields, "this::class.java.declaredFields");
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                int i2 = i + 1;
                i = i2;
                if ((field.getModifiers() & 8) == 0) {
                    field.setAccessible(true);
                    Object obj = field.get(gVar);
                    kotlin.properties.b bVar = obj instanceof kotlin.properties.b ? (kotlin.properties.b) obj : null;
                    i = i2;
                    if (bVar != null) {
                        String name = field.getName();
                        p.b(name, "field.name");
                        boolean a2 = kotlin.h.p.a(name, "is", false);
                        if (!x.f38657a || (true ^ a2)) {
                            kotlin.reflect.c b2 = ac.b(kotlin.reflect.jvm.internal.impl.e.g.class);
                            String name2 = field.getName();
                            String name3 = field.getName();
                            p.b(name3, "field.name");
                            field.set(gVar2, gVar2.a((kotlin.reflect.jvm.internal.impl.e.g) bVar.getValue(gVar, new aa(b2, name2, p.a("get", (Object) kotlin.h.p.g(name3))))));
                            i = i2;
                        } else {
                            throw new AssertionError("Fields named is* are not supported here yet");
                        }
                    } else {
                        continue;
                    }
                }
            }
            changeOptions.invoke(gVar2);
            gVar2.e();
            return new d(gVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$e.class */
    public static final class e extends r implements Function1<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>, CharSequence> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar) {
            kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> it2 = gVar;
            p.d(it2, "it");
            return d.this.a(it2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$f.class */
    public static final class f extends r implements Function1<ba, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f37623a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ CharSequence invoke(ba baVar) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$g.class */
    public static final class g extends r implements Function1<KotlinType, CharSequence> {
        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(KotlinType kotlinType) {
            KotlinType it2 = kotlinType;
            d dVar = d.this;
            p.b(it2, "it");
            return dVar.a(it2);
        }
    }

    public d(kotlin.reflect.jvm.internal.impl.e.g options) {
        p.d(options, "options");
        this.l = options;
        boolean z = options.f37626b;
        if (!x.f38657a || z) {
            this.m = h.a(new C0679d());
            return;
        }
        throw new AssertionError("Assertion failed");
    }

    private boolean A() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.r.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[18])).booleanValue();
    }

    private c.l B() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (c.l) gVar.z.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[26]);
    }

    private boolean C() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.j.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[8])).booleanValue();
    }

    private boolean D() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.t.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[20])).booleanValue();
    }

    private final d E() {
        return (d) this.m.a();
    }

    private final String F() {
        int i = b.f37617a[z().ordinal()];
        if (i == 1) {
            return c("->");
        }
        if (i == 2) {
            return "&rarr;";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String a(String str) {
        int i = b.f37617a[z().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else if (j()) {
            return str;
        } else {
            return "<b>" + str + "</b>";
        }
    }

    private static String a(String str, String str2, String str3, String str4, String str5) {
        if (!kotlin.h.p.a(str, str2, false) || !kotlin.h.p.a(str3, str4, false)) {
            return null;
        }
        int length = str2.length();
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(length);
        p.b(substring, "(this as java.lang.String).substring(startIndex)");
        int length2 = str4.length();
        Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
        String substring2 = str3.substring(length2);
        p.b(substring2, "(this as java.lang.String).substring(startIndex)");
        String a2 = p.a(str5, (Object) substring);
        if (p.a((Object) substring, (Object) substring2)) {
            return a2;
        }
        if (a(substring, substring2)) {
            return p.a(a2, (Object) "!");
        }
        return null;
    }

    private String a(List<? extends TypeProjection> typeArguments) {
        p.d(typeArguments, "typeArguments");
        if (typeArguments.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(c("<"));
        a(sb, typeArguments);
        sb.append(c(">"));
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private String a(kotlin.reflect.jvm.internal.impl.descriptors.g klass) {
        p.d(klass, "klass");
        return ErrorUtils.isError(klass) ? klass.getTypeConstructor().toString() : k().a(klass, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String a(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar) {
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            return n.a(((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).a(), ", ", "{", "}", 0, (CharSequence) null, new e(), 24);
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) {
            return kotlin.h.p.a(a(((kotlin.reflect.jvm.internal.impl.resolve.constants.a) gVar).a(), (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null), (CharSequence) "@");
        }
        if (!(gVar instanceof o)) {
            return gVar.toString();
        }
        o.b a2 = ((o) gVar).a();
        if (a2 instanceof o.b.a) {
            return ((o.b.a) a2).f38260a + "::class";
        } else if (a2 instanceof o.b.C0709b) {
            o.b.C0709b bVar = (o.b.C0709b) a2;
            String a3 = bVar.f38261a.f38249a.f().a();
            p.b(a3, "classValue.classId.asSingleFqName().asString()");
            for (int i = 0; i < bVar.f38261a.f38250b; i++) {
                a3 = "kotlin.Array<" + a3 + '>';
            }
            return p.a(a3, (Object) "::class");
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private String a(TypeConstructor typeConstructor) {
        p.d(typeConstructor, "typeConstructor");
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        boolean z = true;
        if (!(declarationDescriptor instanceof TypeParameterDescriptor ? true : declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            z = declarationDescriptor instanceof ax;
        }
        if (z) {
            return a(declarationDescriptor);
        }
        if (declarationDescriptor == null) {
            return typeConstructor.toString();
        }
        throw new IllegalStateException(p.a("Unexpected classifier: ", (Object) declarationDescriptor.getClass()).toString());
    }

    private final List<String> a(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.c unsubstitutedPrimaryConstructor;
        Map<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> c2 = cVar.c();
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        List list = null;
        kotlin.reflect.jvm.internal.impl.descriptors.d a2 = ((Boolean) gVar.F.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[32])).booleanValue() ? kotlin.reflect.jvm.internal.impl.resolve.b.a.a(cVar) : null;
        List<ba> valueParameters = (a2 == null || (unsubstitutedPrimaryConstructor = a2.getUnsubstitutedPrimaryConstructor()) == null) ? null : unsubstitutedPrimaryConstructor.getValueParameters();
        if (valueParameters != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : valueParameters) {
                if (((ba) obj).c()) {
                    arrayList.add(obj);
                }
            }
            ArrayList<ba> arrayList2 = arrayList;
            List arrayList3 = new ArrayList(n.a((Iterable) arrayList2, 10));
            for (ba baVar : arrayList2) {
                arrayList3.add(baVar.getName());
            }
            list = arrayList3;
        }
        List list2 = list;
        if (list == null) {
            list2 = z.f36608a;
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : list2) {
            kotlin.reflect.jvm.internal.impl.c.e it2 = (kotlin.reflect.jvm.internal.impl.c.e) obj2;
            p.b(it2, "it");
            if (true ^ c2.containsKey(it2)) {
                arrayList4.add(obj2);
            }
        }
        ArrayList<kotlin.reflect.jvm.internal.impl.c.e> arrayList5 = arrayList4;
        ArrayList arrayList6 = new ArrayList(n.a((Iterable) arrayList5, 10));
        for (kotlin.reflect.jvm.internal.impl.c.e eVar : arrayList5) {
            arrayList6.add(p.a(eVar.a(), (Object) " = ..."));
        }
        ArrayList arrayList7 = arrayList6;
        Set<Map.Entry<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> entrySet = c2.entrySet();
        ArrayList arrayList8 = new ArrayList(n.a(entrySet, 10));
        Iterator<T> it3 = entrySet.iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            kotlin.reflect.jvm.internal.impl.c.e eVar2 = (kotlin.reflect.jvm.internal.impl.c.e) entry.getKey();
            kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar2 = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) entry.getValue();
            StringBuilder sb = new StringBuilder();
            sb.append(eVar2.a());
            sb.append(" = ");
            sb.append(!list2.contains(eVar2) ? a(gVar2) : "...");
            arrayList8.add(sb.toString());
        }
        List sorted = n.b((Collection) arrayList7, (Iterable) arrayList8);
        p.d(sorted, "$this$sorted");
        List list3 = sorted;
        if (list3.size() <= 1) {
            return n.h((Iterable) sorted);
        }
        Object[] array = list3.toArray(new Comparable[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Comparable[] comparableArr = (Comparable[]) array;
        Objects.requireNonNull(comparableArr, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Comparable[] sort = comparableArr;
        p.d(sort, "$this$sort");
        if (sort.length > 1) {
            Arrays.sort(sort);
        }
        return i.a(sort);
    }

    private static y a(kotlin.reflect.jvm.internal.impl.descriptors.x xVar) {
        if (xVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) xVar).getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE ? y.ABSTRACT : y.FINAL;
        }
        k containingDeclaration = xVar.getContainingDeclaration();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = containingDeclaration instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) containingDeclaration : null;
        if (dVar != null && (xVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.b)) {
            kotlin.reflect.jvm.internal.impl.descriptors.b bVar = (kotlin.reflect.jvm.internal.impl.descriptors.b) xVar;
            Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> overriddenDescriptors = bVar.getOverriddenDescriptors();
            p.b(overriddenDescriptors, "this.overriddenDescriptors");
            return (!(overriddenDescriptors.isEmpty() ^ true) || dVar.getModality() == y.FINAL) ? (dVar.getKind() != kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE || p.a(bVar.getVisibility(), kotlin.reflect.jvm.internal.impl.descriptors.r.f37590a)) ? y.FINAL : bVar.getModality() == y.ABSTRACT ? y.ABSTRACT : y.OPEN : y.OPEN;
        }
        return y.FINAL;
    }

    private static void a(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    private final void a(StringBuilder sb, List<? extends TypeProjection> list) {
        n.a(list, sb, ", ", null, null, 0, null, new c(), 60);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(StringBuilder sb, kotlin.reflect.jvm.internal.impl.descriptors.a.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a.e eVar) {
        Set<kotlin.reflect.jvm.internal.impl.c.b> set;
        if (p().contains(kotlin.reflect.jvm.internal.impl.e.e.ANNOTATIONS)) {
            if (aVar instanceof KotlinType) {
                set = this.l.d();
            } else {
                kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
                set = (Set) gVar.H.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[34]);
            }
            kotlin.reflect.jvm.internal.impl.e.g gVar2 = this.l;
            Function1 function1 = (Function1) gVar2.I.getValue(gVar2, kotlin.reflect.jvm.internal.impl.e.g.f37625a[36]);
            for (kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar : aVar.getAnnotations()) {
                if (!n.a((Iterable<? extends kotlin.reflect.jvm.internal.impl.c.b>) set, cVar.b()) && !p.a(cVar.b(), j.a.D) && (function1 == null || ((Boolean) function1.invoke(cVar)).booleanValue())) {
                    sb.append(a(cVar, eVar));
                    kotlin.reflect.jvm.internal.impl.e.g gVar3 = this.l;
                    if (((Boolean) gVar3.G.getValue(gVar3, kotlin.reflect.jvm.internal.impl.e.g.f37625a[33])).booleanValue()) {
                        sb.append('\n');
                        p.b(sb, "append('\\n')");
                    } else {
                        sb.append(StringUtils.SPACE);
                    }
                }
            }
        }
    }

    private final void a(StringBuilder sb, al alVar) {
        StringBuilder sb2;
        al alVar2 = alVar.f37393c;
        if (alVar2 == null) {
            sb2 = null;
        } else {
            a(sb, alVar2);
            sb.append('.');
            kotlin.reflect.jvm.internal.impl.c.e name = alVar.f37391a.getName();
            p.b(name, "possiblyInnerType.classifierDescriptor.name");
            sb.append(a(name, false));
            sb2 = sb;
        }
        if (sb2 == null) {
            TypeConstructor typeConstructor = alVar.f37391a.getTypeConstructor();
            p.b(typeConstructor, "possiblyInnerType.classifierDescriptor.typeConstructor");
            sb.append(a(typeConstructor));
        }
        sb.append(a(alVar.f37392b));
    }

    private final void a(StringBuilder sb, AbbreviatedType abbreviatedType) {
        if (z() == m.HTML) {
            sb.append("<font color=\"808080\"><i>");
        }
        sb.append(" /* = ");
        b(sb, abbreviatedType.getExpandedType());
        sb.append(" */");
        if (z() == m.HTML) {
            sb.append("</i></font>");
        }
    }

    private final void a(StringBuilder sb, KotlinType kotlinType) {
        UnwrappedType unwrap = kotlinType.unwrap();
        AbbreviatedType abbreviatedType = unwrap instanceof AbbreviatedType ? (AbbreviatedType) unwrap : null;
        if (abbreviatedType == null) {
            b(sb, kotlinType);
        } else if (u()) {
            b(sb, abbreviatedType.getExpandedType());
        } else {
            b(sb, abbreviatedType.getAbbreviation());
            if (v()) {
                a(sb, abbreviatedType);
            }
        }
    }

    private final void a(StringBuilder sb, KotlinType kotlinType, TypeConstructor typeConstructor) {
        p.d(kotlinType, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        al a2 = ay.a(kotlinType, declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.h ? (kotlin.reflect.jvm.internal.impl.descriptors.h) declarationDescriptor : null, 0);
        if (a2 == null) {
            sb.append(a(typeConstructor));
            sb.append(a(kotlinType.getArguments()));
            return;
        }
        a(sb, a2);
    }

    private final void a(StringBuilder sb, SimpleType simpleType) {
        if (!p.a(simpleType, TypeUtils.CANT_INFER_FUNCTION_PARAM_TYPE)) {
            SimpleType simpleType2 = simpleType;
            if (!TypeUtils.isDontCarePlaceholder(simpleType2)) {
                if (ErrorUtils.isUninferredParameter(simpleType2)) {
                    if (A()) {
                        String eVar = ((ErrorUtils.UninferredParameterTypeConstructor) simpleType.getConstructor()).getTypeParameterDescriptor().getName().toString();
                        p.b(eVar, "type.constructor as UninferredParameterTypeConstructor).typeParameterDescriptor.name.toString()");
                        sb.append(b(eVar));
                        return;
                    }
                    sb.append("???");
                    return;
                } else if (KotlinTypeKt.isError(simpleType2)) {
                    c(sb, simpleType2);
                    return;
                } else if (b(simpleType2)) {
                    d(sb, simpleType2);
                    return;
                } else {
                    c(sb, simpleType2);
                    return;
                }
            }
        }
        sb.append("???");
    }

    private final void a(StringBuilder sb, boolean z, String str) {
        if (z) {
            sb.append(a(str));
            sb.append(StringUtils.SPACE);
        }
    }

    private final void a(Collection<? extends ba> collection, boolean z, StringBuilder sb) {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        int i = b.f37618b[((k) gVar.B.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[28])).ordinal()];
        boolean z2 = true;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
            } else if (!z) {
                z2 = true;
            }
            z2 = false;
        }
        int size = collection.size();
        B().a(sb);
        int i2 = 0;
        for (ba baVar : collection) {
            B().a(baVar, sb);
            a(baVar, z2, sb, false);
            B().a(baVar, i2, size, sb);
            i2++;
        }
        B().b(sb);
    }

    private final void a(List<? extends TypeParameterDescriptor> list, StringBuilder sb) {
        if (!D()) {
            ArrayList arrayList = new ArrayList(0);
            for (TypeParameterDescriptor typeParameterDescriptor : list) {
                List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
                p.b(upperBounds, "typeParameter.upperBounds");
                for (Object obj : n.f((Iterable) upperBounds)) {
                    ArrayList arrayList2 = arrayList;
                    KotlinType it2 = (KotlinType) obj;
                    StringBuilder sb2 = new StringBuilder();
                    kotlin.reflect.jvm.internal.impl.c.e name = typeParameterDescriptor.getName();
                    p.b(name, "typeParameter.name");
                    sb2.append(a(name, false));
                    sb2.append(" : ");
                    p.b(it2, "it");
                    sb2.append(a(it2));
                    arrayList2.add(sb2.toString());
                }
            }
            if (!arrayList.isEmpty()) {
                sb.append(StringUtils.SPACE);
                sb.append(a("where"));
                sb.append(StringUtils.SPACE);
                n.a(arrayList, sb, ", ", null, null, 0, null, null, 124);
            }
        }
    }

    private final void a(List<? extends TypeParameterDescriptor> list, StringBuilder sb, boolean z) {
        if (!D() && (!list.isEmpty())) {
            sb.append(c("<"));
            b(sb, list);
            sb.append(c(">"));
            if (z) {
                sb.append(StringUtils.SPACE);
            }
        }
    }

    private final void a(kotlin.reflect.jvm.internal.impl.c.b bVar, String str, StringBuilder sb) {
        sb.append(a(str));
        kotlin.reflect.jvm.internal.impl.c.c b2 = bVar.b();
        p.b(b2, "fqName.toUnsafe()");
        String a2 = a(b2);
        if (a2.length() > 0) {
            sb.append(StringUtils.SPACE);
            sb.append(a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(TypeParameterDescriptor typeParameterDescriptor, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(c("<"));
        }
        if (C()) {
            sb.append("/*");
            sb.append(typeParameterDescriptor.getIndex());
            sb.append("*/ ");
        }
        a(sb, typeParameterDescriptor.isReified(), "reified");
        String label = typeParameterDescriptor.getVariance().getLabel();
        boolean z2 = true;
        a(sb, label.length() > 0, label);
        a(sb, typeParameterDescriptor, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
        a((k) typeParameterDescriptor, sb, z);
        int size = typeParameterDescriptor.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            KotlinType upperBound = typeParameterDescriptor.getUpperBounds().iterator().next();
            if (!kotlin.reflect.jvm.internal.impl.builtins.g.q(upperBound)) {
                sb.append(" : ");
                p.b(upperBound, "upperBound");
                sb.append(a(upperBound));
            }
        } else if (z) {
            for (KotlinType upperBound2 : typeParameterDescriptor.getUpperBounds()) {
                if (!kotlin.reflect.jvm.internal.impl.builtins.g.q(upperBound2)) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    p.b(upperBound2, "upperBound");
                    sb.append(a(upperBound2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(c(">"));
        }
    }

    private final void a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        aq extensionReceiverParameter;
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        if (((Boolean) gVar.C.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[29])).booleanValue() && (extensionReceiverParameter = aVar.getExtensionReceiverParameter()) != null) {
            sb.append(" on ");
            KotlinType g2 = extensionReceiverParameter.g();
            p.b(g2, "receiver.type");
            sb.append(a(g2));
        }
    }

    private final void a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, StringBuilder sb) {
        if (kotlin.reflect.jvm.internal.impl.resolve.d.e(bVar) && bVar.getModality() == y.FINAL) {
            return;
        }
        if (q() != j.RENDER_OVERRIDE || bVar.getModality() != y.OPEN || !a(bVar)) {
            y modality = bVar.getModality();
            p.b(modality, "callable.modality");
            a(modality, sb, a((kotlin.reflect.jvm.internal.impl.descriptors.x) bVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        if ((r7.l.b() ? r8.c() : kotlin.reflect.jvm.internal.impl.resolve.b.a.a(r8)) != false) goto L_0x0108;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(kotlin.reflect.jvm.internal.impl.descriptors.ba r8, boolean r9, java.lang.StringBuilder r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.e.d.a(kotlin.reflect.jvm.internal.impl.descriptors.ba, boolean, java.lang.StringBuilder, boolean):void");
    }

    private final void a(bc bcVar, StringBuilder sb) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> j;
        if (n() && (j = bcVar.j()) != null) {
            sb.append(" = ");
            sb.append(c(a(j)));
        }
    }

    private final void a(bc bcVar, StringBuilder sb, boolean z) {
        if (z || !(bcVar instanceof ba)) {
            sb.append(a(bcVar.at_() ? "var" : "val"));
            sb.append(StringUtils.SPACE);
        }
    }

    private final void a(bc bcVar, boolean z, StringBuilder sb, boolean z2, boolean z3) {
        KotlinType g2 = bcVar.g();
        p.b(g2, "variable.type");
        KotlinType kotlinType = null;
        ba baVar = bcVar instanceof ba ? (ba) bcVar : null;
        if (baVar != null) {
            kotlinType = baVar.d();
        }
        KotlinType kotlinType2 = kotlinType == null ? g2 : kotlinType;
        a(sb, kotlinType != null, "vararg");
        if (z3 || (z2 && !y())) {
            a(bcVar, sb, z3);
        }
        if (z) {
            a((k) bcVar, sb, z2);
            sb.append(": ");
        }
        sb.append(a(kotlinType2));
        a(bcVar, sb);
        if (C() && kotlinType != null) {
            sb.append(" /*");
            sb.append(a(g2));
            sb.append("*/");
        }
    }

    private final void a(kotlin.reflect.jvm.internal.impl.descriptors.h hVar, StringBuilder sb) {
        List<TypeParameterDescriptor> declaredTypeParameters = hVar.getDeclaredTypeParameters();
        p.b(declaredTypeParameters, "classifier.declaredTypeParameters");
        List<TypeParameterDescriptor> parameters = hVar.getTypeConstructor().getParameters();
        p.b(parameters, "classifier.typeConstructor.parameters");
        if (C() && hVar.isInner() && parameters.size() > declaredTypeParameters.size()) {
            sb.append(" /*captured type parameters: ");
            b(sb, parameters.subList(declaredTypeParameters.size(), parameters.size()));
            sb.append("*/");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(k kVar, StringBuilder sb, boolean z) {
        kotlin.reflect.jvm.internal.impl.c.e name = kVar.getName();
        p.b(name, "descriptor.name");
        sb.append(a(name, z));
    }

    private final void a(w wVar, StringBuilder sb) {
        a(sb, wVar.isSuspend(), "suspend");
    }

    private final void a(kotlin.reflect.jvm.internal.impl.descriptors.x xVar, StringBuilder sb) {
        a(sb, xVar.isExternal(), "external");
        boolean z = true;
        a(sb, p().contains(kotlin.reflect.jvm.internal.impl.e.e.EXPECT) && xVar.isExpect(), "expect");
        if (!p().contains(kotlin.reflect.jvm.internal.impl.e.e.ACTUAL) || !xVar.isActual()) {
            z = false;
        }
        a(sb, z, "actual");
    }

    private final void a(y yVar, StringBuilder sb, y yVar2) {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        if (((Boolean) gVar.n.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[14])).booleanValue() || yVar != yVar2) {
            boolean contains = p().contains(kotlin.reflect.jvm.internal.impl.e.e.MODALITY);
            String name = yVar.name();
            Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = name.toLowerCase();
            p.b(lowerCase, "(this as java.lang.String).toLowerCase()");
            a(sb, contains, lowerCase);
        }
    }

    private static /* synthetic */ void a(d dVar, StringBuilder sb, KotlinType kotlinType) {
        dVar.a(sb, kotlinType, kotlinType.getConstructor());
    }

    public static final /* synthetic */ void a(d dVar, ae aeVar, StringBuilder sb) {
        dVar.a(aeVar.c(), "package-fragment", sb);
        if (dVar.l.b()) {
            sb.append(" in ");
            dVar.a((k) aeVar.b(), sb, false);
        }
    }

    public static final /* synthetic */ void a(d dVar, aj ajVar, StringBuilder sb) {
        dVar.a(ajVar.a(), "package", sb);
        if (dVar.l.b()) {
            sb.append(" in context of ");
            dVar.a((k) ajVar.c(), sb, false);
        }
    }

    public static final /* synthetic */ void a(d dVar, am amVar, StringBuilder sb) {
        dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.x) amVar, sb);
    }

    public static final /* synthetic */ void a(d dVar, an anVar, StringBuilder sb) {
        if (!dVar.y()) {
            if (!dVar.x()) {
                if (dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.ANNOTATIONS)) {
                    dVar.a(sb, anVar, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
                    u e2 = anVar.e();
                    if (e2 != null) {
                        dVar.a(sb, e2, kotlin.reflect.jvm.internal.impl.descriptors.a.e.FIELD);
                    }
                    u f2 = anVar.f();
                    if (f2 != null) {
                        dVar.a(sb, f2, kotlin.reflect.jvm.internal.impl.descriptors.a.e.PROPERTY_DELEGATE_FIELD);
                    }
                    if (dVar.e() == l.NONE) {
                        ao a2 = anVar.a();
                        if (a2 != null) {
                            dVar.a(sb, a2, kotlin.reflect.jvm.internal.impl.descriptors.a.e.PROPERTY_GETTER);
                        }
                        ap b2 = anVar.b();
                        if (b2 != null) {
                            dVar.a(sb, b2, kotlin.reflect.jvm.internal.impl.descriptors.a.e.PROPERTY_SETTER);
                            List<ba> valueParameters = b2.getValueParameters();
                            p.b(valueParameters, "setter.valueParameters");
                            ba it2 = (ba) n.i((List<? extends Object>) valueParameters);
                            p.b(it2, "it");
                            dVar.a(sb, it2, kotlin.reflect.jvm.internal.impl.descriptors.a.e.SETTER_PARAMETER);
                        }
                    }
                }
                s visibility = anVar.getVisibility();
                p.b(visibility, "property.visibility");
                dVar.a(visibility, sb);
                dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.CONST) && anVar.ar_(), "const");
                dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.x) anVar, sb);
                an anVar2 = anVar;
                dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.b) anVar2, sb);
                dVar.b((kotlin.reflect.jvm.internal.impl.descriptors.b) anVar2, sb);
                dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.LATEINIT) && anVar.l(), "lateinit");
                dVar.c(anVar2, sb);
            }
            dVar.a((bc) anVar, sb, false);
            List<TypeParameterDescriptor> typeParameters = anVar.getTypeParameters();
            p.b(typeParameters, "property.typeParameters");
            dVar.a((List<? extends TypeParameterDescriptor>) typeParameters, sb, true);
            dVar.b((kotlin.reflect.jvm.internal.impl.descriptors.a) anVar, sb);
        }
        dVar.a((k) anVar, sb, true);
        sb.append(": ");
        KotlinType g2 = anVar.g();
        p.b(g2, "property.type");
        sb.append(dVar.a(g2));
        dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.a) anVar, sb);
        dVar.a((bc) anVar, sb);
        List<TypeParameterDescriptor> typeParameters2 = anVar.getTypeParameters();
        p.b(typeParameters2, "property.typeParameters");
        dVar.a(typeParameters2, sb);
    }

    public static final /* synthetic */ void a(d dVar, ax axVar, StringBuilder sb) {
        dVar.a(sb, axVar, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
        s visibility = axVar.getVisibility();
        p.b(visibility, "typeAlias.visibility");
        dVar.a(visibility, sb);
        dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.x) axVar, sb);
        sb.append(dVar.a("typealias"));
        sb.append(StringUtils.SPACE);
        dVar.a((k) axVar, sb, true);
        List<TypeParameterDescriptor> declaredTypeParameters = axVar.getDeclaredTypeParameters();
        p.b(declaredTypeParameters, "typeAlias.declaredTypeParameters");
        dVar.a((List<? extends TypeParameterDescriptor>) declaredTypeParameters, sb, false);
        dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.h) axVar, sb);
        sb.append(" = ");
        sb.append(dVar.a(axVar.a()));
    }

    public static final /* synthetic */ void a(d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2, StringBuilder sb) {
        kotlin.reflect.jvm.internal.impl.descriptors.c unsubstitutedPrimaryConstructor;
        String str;
        boolean z = dVar2.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_ENTRY;
        if (!dVar.y()) {
            dVar.a(sb, dVar2, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
            if (!z) {
                s visibility = dVar2.getVisibility();
                p.b(visibility, "klass.visibility");
                dVar.a(visibility, sb);
            }
            if (!(dVar2.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE && dVar2.getModality() == y.ABSTRACT) && (!dVar2.getKind().isSingleton() || dVar2.getModality() != y.FINAL)) {
                y modality = dVar2.getModality();
                p.b(modality, "klass.modality");
                dVar.a(modality, sb, a((kotlin.reflect.jvm.internal.impl.descriptors.x) dVar2));
            }
            dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.x) dVar2, sb);
            dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.INNER) && dVar2.isInner(), "inner");
            dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.DATA) && dVar2.isData(), "data");
            dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.INLINE) && dVar2.isInline(), "inline");
            dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.VALUE) && dVar2.isValue(), "value");
            dVar.a(sb, dVar.p().contains(kotlin.reflect.jvm.internal.impl.e.e.FUN) && dVar2.isFun(), "fun");
            kotlin.reflect.jvm.internal.impl.descriptors.d classifier = dVar2;
            p.d(classifier, "classifier");
            if (classifier instanceof ax) {
                str = "typealias";
            } else if (classifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar3 = classifier;
                if (dVar3.isCompanionObject()) {
                    str = "companion object";
                } else {
                    switch (c.a.C0676a.f37603a[dVar3.getKind().ordinal()]) {
                        case 1:
                            str = "class";
                            break;
                        case 2:
                            str = "interface";
                            break;
                        case 3:
                            str = "enum class";
                            break;
                        case 4:
                            str = "object";
                            break;
                        case 5:
                            str = "annotation class";
                            break;
                        case 6:
                            str = "enum entry";
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                }
            } else {
                throw new AssertionError(p.a("Unexpected classifier: ", (Object) classifier));
            }
            sb.append(dVar.a(str));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar4 = dVar2;
        if (!kotlin.reflect.jvm.internal.impl.resolve.d.g(dVar4)) {
            if (!dVar.y()) {
                a(sb);
            }
            dVar.a((k) dVar4, sb, true);
        } else {
            kotlin.reflect.jvm.internal.impl.e.g gVar = dVar.l;
            if (((Boolean) gVar.D.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[30])).booleanValue()) {
                if (dVar.y()) {
                    sb.append("companion object");
                }
                a(sb);
                k containingDeclaration = dVar4.getContainingDeclaration();
                if (containingDeclaration != null) {
                    sb.append("of ");
                    kotlin.reflect.jvm.internal.impl.c.e name = containingDeclaration.getName();
                    p.b(name, "containingDeclaration.name");
                    sb.append(dVar.a(name, false));
                }
            }
            if (dVar.C() || !p.a(dVar4.getName(), kotlin.reflect.jvm.internal.impl.c.g.f37348c)) {
                if (!dVar.y()) {
                    a(sb);
                }
                kotlin.reflect.jvm.internal.impl.c.e name2 = dVar4.getName();
                p.b(name2, "descriptor.name");
                sb.append(dVar.a(name2, true));
            }
        }
        if (!z) {
            List<TypeParameterDescriptor> declaredTypeParameters = dVar2.getDeclaredTypeParameters();
            p.b(declaredTypeParameters, "klass.declaredTypeParameters");
            dVar.a((List<? extends TypeParameterDescriptor>) declaredTypeParameters, sb, false);
            dVar.a((kotlin.reflect.jvm.internal.impl.descriptors.h) dVar2, sb);
            if (!dVar2.getKind().isSingleton()) {
                kotlin.reflect.jvm.internal.impl.e.g gVar2 = dVar.l;
                if (((Boolean) gVar2.i.getValue(gVar2, kotlin.reflect.jvm.internal.impl.e.g.f37625a[7])).booleanValue() && (unsubstitutedPrimaryConstructor = dVar2.getUnsubstitutedPrimaryConstructor()) != null) {
                    sb.append(StringUtils.SPACE);
                    dVar.a(sb, unsubstitutedPrimaryConstructor, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
                    s visibility2 = unsubstitutedPrimaryConstructor.getVisibility();
                    p.b(visibility2, "primaryConstructor.visibility");
                    dVar.a(visibility2, sb);
                    sb.append(dVar.a("constructor"));
                    List<ba> valueParameters = unsubstitutedPrimaryConstructor.getValueParameters();
                    p.b(valueParameters, "primaryConstructor.valueParameters");
                    dVar.a(valueParameters, unsubstitutedPrimaryConstructor.hasSynthesizedParameterNames(), sb);
                }
            }
            kotlin.reflect.jvm.internal.impl.e.g gVar3 = dVar.l;
            if (!((Boolean) gVar3.u.getValue(gVar3, kotlin.reflect.jvm.internal.impl.e.g.f37625a[21])).booleanValue() && !kotlin.reflect.jvm.internal.impl.builtins.g.n(dVar2.getDefaultType())) {
                Collection<KotlinType> supertypes = dVar2.getTypeConstructor().mo7371getSupertypes();
                p.b(supertypes, "klass.typeConstructor.supertypes");
                if (!supertypes.isEmpty() && (supertypes.size() != 1 || !kotlin.reflect.jvm.internal.impl.builtins.g.o(supertypes.iterator().next()))) {
                    a(sb);
                    sb.append(": ");
                    n.a(supertypes, sb, ", ", null, null, 0, null, new g(), 60);
                }
            }
            dVar.a(declaredTypeParameters, sb);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void a(kotlin.reflect.jvm.internal.impl.e.d r10, kotlin.reflect.jvm.internal.impl.descriptors.j r11, java.lang.StringBuilder r12) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.e.d.a(kotlin.reflect.jvm.internal.impl.e.d, kotlin.reflect.jvm.internal.impl.descriptors.j, java.lang.StringBuilder):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0138, code lost:
        if (r5.i() != false) goto L_0x013b;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void a(kotlin.reflect.jvm.internal.impl.e.d r5, kotlin.reflect.jvm.internal.impl.descriptors.w r6, java.lang.StringBuilder r7) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.e.d.a(kotlin.reflect.jvm.internal.impl.e.d, kotlin.reflect.jvm.internal.impl.descriptors.w, java.lang.StringBuilder):void");
    }

    private static boolean a(String str, String str2) {
        if (p.a((Object) str, (Object) kotlin.h.p.a(str2, "?", "", false))) {
            return true;
        }
        if (kotlin.h.p.b(str2, "?", false) && p.a((Object) p.a(str, (Object) "?"), (Object) str2)) {
            return true;
        }
        StringBuilder sb = new StringBuilder("(");
        sb.append(str);
        sb.append(")?");
        return p.a((Object) sb.toString(), (Object) str2);
    }

    private static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
        return !bVar.getOverriddenDescriptors().isEmpty();
    }

    private final boolean a(s sVar, StringBuilder sb) {
        if (!p().contains(kotlin.reflect.jvm.internal.impl.e.e.VISIBILITY)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        s sVar2 = sVar;
        if (((Boolean) gVar.m.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[12])).booleanValue()) {
            sVar2 = sVar.c();
        }
        if (!this.l.f() && p.a(sVar2, kotlin.reflect.jvm.internal.impl.descriptors.r.k)) {
            return false;
        }
        sb.append(a(sVar2.b()));
        sb.append(StringUtils.SPACE);
        return true;
    }

    private final String b(String str) {
        int i = b.f37617a[z().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i == 2) {
            return "<font color=red><b>" + str + "</b></font>";
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void b(StringBuilder sb, List<? extends TypeParameterDescriptor> list) {
        Iterator<? extends TypeParameterDescriptor> it2 = list.iterator();
        while (it2.hasNext()) {
            a((TypeParameterDescriptor) it2.next(), sb, false);
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
    }

    private final void b(StringBuilder sb, KotlinType kotlinType) {
        if (!(kotlinType instanceof WrappedType) || !this.l.b() || ((WrappedType) kotlinType).isComputed()) {
            UnwrappedType unwrap = kotlinType.unwrap();
            if (unwrap instanceof FlexibleType) {
                sb.append(((FlexibleType) unwrap).render(this, this));
            } else if (unwrap instanceof SimpleType) {
                a(sb, (SimpleType) unwrap);
            }
        } else {
            sb.append("<Not computed yet>");
        }
    }

    private final void b(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, StringBuilder sb) {
        aq extensionReceiverParameter = aVar.getExtensionReceiverParameter();
        if (extensionReceiverParameter != null) {
            a(sb, extensionReceiverParameter, kotlin.reflect.jvm.internal.impl.descriptors.a.e.RECEIVER);
            KotlinType g2 = extensionReceiverParameter.g();
            p.b(g2, "receiver.type");
            String a2 = a(g2);
            String str = a2;
            if (b(g2)) {
                str = a2;
                if (!TypeUtils.isNullableType(g2)) {
                    str = "(" + a2 + ')';
                }
            }
            sb.append(str);
            sb.append(".");
        }
    }

    private final void b(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, StringBuilder sb) {
        if (p().contains(kotlin.reflect.jvm.internal.impl.e.e.OVERRIDE) && a(bVar) && q() != j.RENDER_OPEN) {
            a(sb, true, "override");
            if (C()) {
                sb.append("/*");
                sb.append(bVar.getOverriddenDescriptors().size());
                sb.append("*/ ");
            }
        }
    }

    private static boolean b(KotlinType kotlinType) {
        boolean z;
        if (!kotlin.reflect.jvm.internal.impl.builtins.f.c(kotlinType)) {
            return false;
        }
        List<TypeProjection> arguments = kotlinType.getArguments();
        if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
            for (TypeProjection typeProjection : arguments) {
                if (typeProjection.isStarProjection()) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        return z;
    }

    private final String c(String str) {
        return z().escape(str);
    }

    private final void c(StringBuilder sb, KotlinType kotlinType) {
        a(sb, kotlinType, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
        if (KotlinTypeKt.isError(kotlinType)) {
            if ((kotlinType instanceof UnresolvedType) && s()) {
                sb.append(((UnresolvedType) kotlinType).getPresentableName());
            } else if (!(kotlinType instanceof ErrorType) || o()) {
                sb.append(kotlinType.getConstructor().toString());
            } else {
                sb.append(((ErrorType) kotlinType).getPresentableName());
            }
            sb.append(a(kotlinType.getArguments()));
        } else {
            a(this, sb, kotlinType);
        }
        if (kotlinType.isMarkedNullable()) {
            sb.append("?");
        }
        if (SpecialTypesKt.isDefinitelyNotNullType(kotlinType)) {
            sb.append("!!");
        }
    }

    private final void c(kotlin.reflect.jvm.internal.impl.descriptors.b bVar, StringBuilder sb) {
        if (p().contains(kotlin.reflect.jvm.internal.impl.e.e.MEMBER_KIND) && C() && bVar.getKind() != b.a.DECLARATION) {
            sb.append("/*");
            String name = bVar.getKind().name();
            Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = name.toLowerCase();
            p.b(lowerCase, "(this as java.lang.String).toLowerCase()");
            sb.append(lowerCase);
            sb.append("*/ ");
        }
    }

    private static boolean c(KotlinType kotlinType) {
        return kotlin.reflect.jvm.internal.impl.builtins.f.b(kotlinType) || !kotlinType.getAnnotations().a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ea, code lost:
        if (r0.isMarkedNullable() != false) goto L_0x00ed;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void d(java.lang.StringBuilder r6, kotlin.reflect.jvm.internal.impl.types.KotlinType r7) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.e.d.d(java.lang.StringBuilder, kotlin.reflect.jvm.internal.impl.types.KotlinType):void");
    }

    private boolean f() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        p.d(gVar, "this");
        return gVar.a().getIncludeAnnotationArguments();
    }

    private boolean g() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        p.d(gVar, "this");
        return gVar.a().getIncludeEmptyAnnotationArguments();
    }

    private boolean h() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.q.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[17])).booleanValue();
    }

    private boolean i() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.J.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[38])).booleanValue();
    }

    private boolean j() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.Q.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[46])).booleanValue();
    }

    private kotlin.reflect.jvm.internal.impl.e.b k() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (kotlin.reflect.jvm.internal.impl.e.b) gVar.f37627c.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[0]);
    }

    private Function1<ba, String> l() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (Function1) gVar.w.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[23]);
    }

    private boolean m() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.N.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[42])).booleanValue();
    }

    private boolean n() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.s.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[19])).booleanValue();
    }

    private boolean o() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.R.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[47])).booleanValue();
    }

    private Set<kotlin.reflect.jvm.internal.impl.e.e> p() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (Set) gVar.f.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[3]);
    }

    private j q() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (j) gVar.y.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[25]);
    }

    private boolean r() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.O.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[43])).booleanValue();
    }

    private boolean s() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.P.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[45])).booleanValue();
    }

    private boolean t() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.p.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[16])).booleanValue();
    }

    private boolean u() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.M.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[41])).booleanValue();
    }

    private boolean v() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.L.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[40])).booleanValue();
    }

    private boolean w() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.x.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[24])).booleanValue();
    }

    private boolean x() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.h.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[5])).booleanValue();
    }

    private boolean y() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return ((Boolean) gVar.g.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[4])).booleanValue();
    }

    private m z() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (m) gVar.A.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[27]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(String lowerRendered, String upperRendered, kotlin.reflect.jvm.internal.impl.builtins.g builtIns) {
        String b2;
        String b3;
        p.d(lowerRendered, "lowerRendered");
        p.d(upperRendered, "upperRendered");
        p.d(builtIns, "builtIns");
        if (!a(lowerRendered, upperRendered)) {
            kotlin.reflect.jvm.internal.impl.e.b k = k();
            kotlin.reflect.jvm.internal.impl.descriptors.d a2 = builtIns.a(j.a.P);
            if (a2 == null) {
                kotlin.reflect.jvm.internal.impl.builtins.g.b(33);
            }
            p.b(a2, "builtIns.collection");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = a2;
            d dVar2 = this;
            b2 = kotlin.h.p.b(k.a(dVar, dVar2), "Collection", r0);
            String a3 = p.a(b2, (Object) "Mutable");
            String a4 = a(lowerRendered, a3, upperRendered, b2, b2 + "(Mutable)");
            if (a4 != null) {
                return a4;
            }
            String a5 = a(lowerRendered, p.a(b2, (Object) "MutableMap.MutableEntry"), upperRendered, p.a(b2, (Object) "Map.Entry"), p.a(b2, (Object) "(Mutable)Map.(Mutable)Entry"));
            if (a5 != null) {
                return a5;
            }
            kotlin.reflect.jvm.internal.impl.e.b k2 = k();
            kotlin.reflect.jvm.internal.impl.descriptors.d a6 = builtIns.a("Array");
            p.b(a6, "builtIns.array");
            b3 = kotlin.h.p.b(k2.a(a6, dVar2), "Array", r0);
            String a7 = a(lowerRendered, p.a(b3, (Object) c("Array<")), upperRendered, p.a(b3, (Object) c("Array<out ")), p.a(b3, (Object) c("Array<(out) ")));
            if (a7 != null) {
                return a7;
            }
            return "(" + lowerRendered + ".." + upperRendered + ')';
        } else if (!kotlin.h.p.a(upperRendered, "(", false)) {
            return p.a(lowerRendered, (Object) "!");
        } else {
            return "(" + lowerRendered + ")!";
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(kotlin.reflect.jvm.internal.impl.c.c fqName) {
        p.d(fqName, "fqName");
        List<kotlin.reflect.jvm.internal.impl.c.e> g2 = fqName.g();
        p.b(g2, "fqName.pathSegments()");
        return c(n.a(g2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(kotlin.reflect.jvm.internal.impl.c.e name, boolean z) {
        p.d(name, "name");
        String c2 = c(n.a(name));
        String str = c2;
        if (j()) {
            str = c2;
            if (z() == m.HTML) {
                str = c2;
                if (z) {
                    str = "<b>" + c2 + "</b>";
                }
            }
        }
        return str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(kotlin.reflect.jvm.internal.impl.descriptors.a.c annotation, kotlin.reflect.jvm.internal.impl.descriptors.a.e eVar) {
        p.d(annotation, "annotation");
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (eVar != null) {
            sb.append(p.a(eVar.getRenderName(), (Object) ":"));
        }
        KotlinType a2 = annotation.a();
        sb.append(a(a2));
        if (f()) {
            List<String> a3 = a(annotation);
            if (g() || (!a3.isEmpty())) {
                n.a(a3, sb, ", ", "(", ")", 0, null, null, 112);
            }
        }
        if (C() && (KotlinTypeKt.isError(a2) || (a2.getConstructor().getDeclarationDescriptor() instanceof ad.b))) {
            sb.append(" /* annotation class not found */");
        }
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(k declarationDescriptor) {
        p.d(declarationDescriptor, "declarationDescriptor");
        StringBuilder sb = new StringBuilder();
        declarationDescriptor.accept(new a(this), sb);
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        if (((Boolean) gVar.f37628d.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[1])).booleanValue() && !(declarationDescriptor instanceof ae) && !(declarationDescriptor instanceof aj)) {
            if (declarationDescriptor instanceof ab) {
                sb.append(" is a module");
            } else {
                k containingDeclaration = declarationDescriptor.getContainingDeclaration();
                if (containingDeclaration != null && !(containingDeclaration instanceof ab)) {
                    sb.append(StringUtils.SPACE);
                    String str = "defined in";
                    p.d("defined in", "message");
                    int i = b.f37617a[z().ordinal()];
                    if (i != 1) {
                        if (i == 2) {
                            str = "<i>defined in</i>";
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    }
                    sb.append(str);
                    sb.append(StringUtils.SPACE);
                    kotlin.reflect.jvm.internal.impl.c.c c2 = kotlin.reflect.jvm.internal.impl.resolve.d.c(containingDeclaration);
                    p.b(c2, "getFqName(containingDeclaration)");
                    sb.append(c2.f37340a.isEmpty() ? "root package" : a(c2));
                    kotlin.reflect.jvm.internal.impl.e.g gVar2 = this.l;
                    if (((Boolean) gVar2.e.getValue(gVar2, kotlin.reflect.jvm.internal.impl.e.g.f37625a[2])).booleanValue() && (containingDeclaration instanceof ae) && (declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.n)) {
                        ((kotlin.reflect.jvm.internal.impl.descriptors.n) declarationDescriptor).getSource().a();
                    }
                }
            }
        }
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(KotlinType type) {
        p.d(type, "type");
        StringBuilder sb = new StringBuilder();
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        a(sb, (KotlinType) ((Function1) gVar.v.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[22])).invoke(type));
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.c
    public final String a(TypeProjection typeProjection) {
        p.d(typeProjection, "typeProjection");
        StringBuilder sb = new StringBuilder();
        a(sb, n.a(typeProjection));
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final kotlin.reflect.jvm.internal.impl.e.a a() {
        return this.l.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(Set<kotlin.reflect.jvm.internal.impl.c.b> set) {
        p.d(set, "<set-?>");
        this.l.a(set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(kotlin.reflect.jvm.internal.impl.e.a aVar) {
        p.d(aVar, "<set-?>");
        this.l.a(aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(kotlin.reflect.jvm.internal.impl.e.b bVar) {
        p.d(bVar, "<set-?>");
        this.l.a(bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(k kVar) {
        p.d(kVar, "<set-?>");
        this.l.a(kVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(m mVar) {
        p.d(mVar, "<set-?>");
        this.l.a(mVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void a(boolean z) {
        this.l.a(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void b(Set<? extends kotlin.reflect.jvm.internal.impl.e.e> set) {
        p.d(set, "<set-?>");
        this.l.b(set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void b(boolean z) {
        this.l.b(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final boolean b() {
        return this.l.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void c(boolean z) {
        this.l.c(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final boolean c() {
        return this.l.c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final Set<kotlin.reflect.jvm.internal.impl.c.b> d() {
        return this.l.d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void d(boolean z) {
        this.l.d(z);
    }

    public final l e() {
        kotlin.reflect.jvm.internal.impl.e.g gVar = this.l;
        return (l) gVar.E.getValue(gVar, kotlin.reflect.jvm.internal.impl.e.g.f37625a[31]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void e(boolean z) {
        this.l.e(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void f(boolean z) {
        this.l.f(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void g(boolean z) {
        this.l.g(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.e.f
    public final void h(boolean z) {
        this.l.h(z);
    }
}
