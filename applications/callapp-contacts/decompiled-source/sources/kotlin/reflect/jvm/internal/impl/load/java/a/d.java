package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.m;
import kotlin.reflect.jvm.internal.impl.descriptors.a.n;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.load.java.d.b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f37728a = new d();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, EnumSet<n>> f37729b = ai.a(t.a("PACKAGE", EnumSet.noneOf(n.class)), t.a("TYPE", EnumSet.of(n.CLASS, n.FILE)), t.a("ANNOTATION_TYPE", EnumSet.of(n.ANNOTATION_CLASS)), t.a("TYPE_PARAMETER", EnumSet.of(n.TYPE_PARAMETER)), t.a("FIELD", EnumSet.of(n.FIELD)), t.a("LOCAL_VARIABLE", EnumSet.of(n.LOCAL_VARIABLE)), t.a("PARAMETER", EnumSet.of(n.VALUE_PARAMETER)), t.a("CONSTRUCTOR", EnumSet.of(n.CONSTRUCTOR)), t.a("METHOD", EnumSet.of(n.FUNCTION, n.PROPERTY_GETTER, n.PROPERTY_SETTER)), t.a("TYPE_USE", EnumSet.of(n.TYPE)));

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, m> f37730c = ai.a(t.a("RUNTIME", m.RUNTIME), t.a("CLASS", m.BINARY), t.a("SOURCE", m.SOURCE));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/d$a.class */
    public static final class a extends r implements Function1<ab, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37731a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(ab abVar) {
            ab module = abVar;
            p.d(module, "module");
            c cVar = c.f37724a;
            ba a2 = kotlin.reflect.jvm.internal.impl.load.java.a.a.a(c.b(), module.getBuiltIns().a(j.a.F));
            KotlinType g = a2 == null ? null : a2.g();
            SimpleType simpleType = g;
            if (g == null) {
                SimpleType createErrorType = ErrorUtils.createErrorType("Error: AnnotationTarget[]");
                p.b(createErrorType, "createErrorType(\"Error: AnnotationTarget[]\")");
                simpleType = createErrorType;
            }
            return simpleType;
        }
    }

    private d() {
    }

    public static g<?> a(List<? extends b> arguments) {
        p.d(arguments, "arguments");
        ArrayList arrayList = new ArrayList();
        for (Object obj : arguments) {
            if (obj instanceof kotlin.reflect.jvm.internal.impl.load.java.d.m) {
                arrayList.add(obj);
            }
        }
        ArrayList<kotlin.reflect.jvm.internal.impl.load.java.d.m> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.load.java.d.m mVar : arrayList2) {
            e c2 = mVar.c();
            EnumSet<n> enumSet = f37729b.get(c2 == null ? null : c2.a());
            kotlin.a.n.a((Collection) arrayList3, (Iterable) (enumSet == null ? kotlin.a.ab.f36567a : enumSet));
        }
        ArrayList<n> arrayList4 = arrayList3;
        ArrayList arrayList5 = new ArrayList(kotlin.a.n.a((Iterable) arrayList4, 10));
        for (n nVar : arrayList4) {
            kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.G);
            p.b(a2, "topLevel(StandardNames.FqNames.annotationTarget)");
            e a3 = e.a(nVar.name());
            p.b(a3, "identifier(kotlinTarget.name)");
            arrayList5.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.j(a2, a3));
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.b(arrayList5, a.f37731a);
    }

    public static g<?> a(b bVar) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.j jVar;
        kotlin.reflect.jvm.internal.impl.load.java.d.m mVar = bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.d.m ? (kotlin.reflect.jvm.internal.impl.load.java.d.m) bVar : null;
        if (mVar == null) {
            jVar = null;
        } else {
            Map<String, m> map = f37730c;
            e c2 = mVar.c();
            m mVar2 = map.get(c2 == null ? null : c2.a());
            if (mVar2 == null) {
                jVar = null;
            } else {
                kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.H);
                p.b(a2, "topLevel(StandardNames.FqNames.annotationRetention)");
                e a3 = e.a(mVar2.name());
                p.b(a3, "identifier(retention.name)");
                jVar = new kotlin.reflect.jvm.internal.impl.resolve.constants.j(a2, a3);
            }
        }
        return jVar;
    }
}
