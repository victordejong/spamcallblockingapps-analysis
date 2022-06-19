package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import kotlin.C20126t;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.EnumC18995m;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.EnumC18996n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19404m;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19776b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/d.class */
public final class C19350d {

    /* renamed from: a */
    public static final C19350d f65251a = new C19350d();

    /* renamed from: b */
    private static final Map<String, EnumSet<EnumC18996n>> f65252b = C18247ai.m4251a(C20126t.m1103a("PACKAGE", EnumSet.noneOf(EnumC18996n.class)), C20126t.m1103a("TYPE", EnumSet.of(EnumC18996n.CLASS, EnumC18996n.FILE)), C20126t.m1103a("ANNOTATION_TYPE", EnumSet.of(EnumC18996n.ANNOTATION_CLASS)), C20126t.m1103a("TYPE_PARAMETER", EnumSet.of(EnumC18996n.TYPE_PARAMETER)), C20126t.m1103a("FIELD", EnumSet.of(EnumC18996n.FIELD)), C20126t.m1103a("LOCAL_VARIABLE", EnumSet.of(EnumC18996n.LOCAL_VARIABLE)), C20126t.m1103a("PARAMETER", EnumSet.of(EnumC18996n.VALUE_PARAMETER)), C20126t.m1103a("CONSTRUCTOR", EnumSet.of(EnumC18996n.CONSTRUCTOR)), C20126t.m1103a("METHOD", EnumSet.of(EnumC18996n.FUNCTION, EnumC18996n.PROPERTY_GETTER, EnumC18996n.PROPERTY_SETTER)), C20126t.m1103a("TYPE_USE", EnumSet.of(EnumC18996n.TYPE)));

    /* renamed from: c */
    private static final Map<String, EnumC18995m> f65253c = C18247ai.m4251a(C20126t.m1103a("RUNTIME", EnumC18995m.RUNTIME), C20126t.m1103a("CLASS", EnumC18995m.BINARY), C20126t.m1103a("SOURCE", EnumC18995m.SOURCE));

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/d$a.class */
    public static final class C19351a extends AbstractC18526r implements Function1<AbstractC18999ab, KotlinType> {

        /* renamed from: a */
        public static final C19351a f65254a = new C19351a();

        C19351a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC18999ab abstractC18999ab) {
            AbstractC18999ab module = abstractC18999ab;
            C18524p.m3840d(module, "module");
            C19349c c19349c = C19349c.f65245a;
            AbstractC19050ba m2285a = C19344a.m2285a(C19349c.m2279b(), module.getBuiltIns().m2830a(C18954j.C18955a.f64594F));
            KotlinType g = m2285a == null ? null : m2285a.mo2593g();
            SimpleType simpleType = g;
            if (g == null) {
                SimpleType createErrorType = ErrorUtils.createErrorType("Error: AnnotationTarget[]");
                C18524p.m3843b(createErrorType, "createErrorType(\"Error: AnnotationTarget[]\")");
                simpleType = createErrorType;
            }
            return simpleType;
        }
    }

    private C19350d() {
    }

    /* renamed from: a */
    public static AbstractC19781g<?> m2277a(List<? extends AbstractC19393b> arguments) {
        C18524p.m3840d(arguments, "arguments");
        ArrayList arrayList = new ArrayList();
        for (Object obj : arguments) {
            if (obj instanceof AbstractC19404m) {
                arrayList.add(obj);
            }
        }
        ArrayList<AbstractC19404m> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList();
        for (AbstractC19404m abstractC19404m : arrayList2) {
            C18966e mo2196c = abstractC19404m.mo2196c();
            EnumSet<EnumC18996n> enumSet = f65252b.get(mo2196c == null ? null : mo2196c.m2721a());
            C18282n.m4158a((Collection) arrayList3, (Iterable) (enumSet == null ? C18240ab.f63351a : enumSet));
        }
        ArrayList<EnumC18996n> arrayList4 = arrayList3;
        ArrayList arrayList5 = new ArrayList(C18282n.m4163a((Iterable) arrayList4, 10));
        for (EnumC18996n enumC18996n : arrayList4) {
            C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64595G);
            C18524p.m3843b(m2754a, "topLevel(StandardNames.FqNames.annotationTarget)");
            C18966e m2719a = C18966e.m2719a(enumC18996n.name());
            C18524p.m3843b(m2719a, "identifier(kotlinTarget.name)");
            arrayList5.add(new C19786j(m2754a, m2719a));
        }
        return new C19776b(arrayList5, C19351a.f65254a);
    }

    /* renamed from: a */
    public static AbstractC19781g<?> m2276a(AbstractC19393b abstractC19393b) {
        C19786j c19786j;
        AbstractC19404m abstractC19404m = abstractC19393b instanceof AbstractC19404m ? (AbstractC19404m) abstractC19393b : null;
        if (abstractC19404m == null) {
            c19786j = null;
        } else {
            Map<String, EnumC18995m> map = f65253c;
            C18966e mo2196c = abstractC19404m.mo2196c();
            EnumC18995m enumC18995m = map.get(mo2196c == null ? null : mo2196c.m2721a());
            if (enumC18995m == null) {
                c19786j = null;
            } else {
                C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64596H);
                C18524p.m3843b(m2754a, "topLevel(StandardNames.FqNames.annotationRetention)");
                C18966e m2719a = C18966e.m2719a(enumC18995m.name());
                C18524p.m3843b(m2719a, "identifier(retention.name)");
                c19786j = new C19786j(m2754a, m2719a);
            }
        }
        return c19786j;
    }
}
