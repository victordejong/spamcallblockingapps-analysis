package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19775a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19776b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19801s;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/f.class */
public final class C18981f {

    /* renamed from: a */
    private static final C18966e f64711a;

    /* renamed from: b */
    private static final C18966e f64712b;

    /* renamed from: c */
    private static final C18966e f64713c;

    /* renamed from: d */
    private static final C18966e f64714d;

    /* renamed from: e */
    private static final C18966e f64715e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/f$a.class */
    public static final class C18982a extends AbstractC18526r implements Function1<AbstractC18999ab, KotlinType> {

        /* renamed from: a */
        final /* synthetic */ AbstractC18940g f64716a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18982a(AbstractC18940g abstractC18940g) {
            super(1);
            this.f64716a = abstractC18940g;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC18999ab abstractC18999ab) {
            AbstractC18999ab module = abstractC18999ab;
            C18524p.m3840d(module, "module");
            SimpleType m2823a = module.getBuiltIns().m2823a(Variance.INVARIANT, this.f64716a.m2780p());
            C18524p.m3843b(m2823a, "module.builtIns.getArrayType(Variance.INVARIANT, stringType)");
            return m2823a;
        }
    }

    static {
        C18966e m2719a = C18966e.m2719a("message");
        C18524p.m3843b(m2719a, "identifier(\"message\")");
        f64711a = m2719a;
        C18966e m2719a2 = C18966e.m2719a("replaceWith");
        C18524p.m3843b(m2719a2, "identifier(\"replaceWith\")");
        f64712b = m2719a2;
        C18966e m2719a3 = C18966e.m2719a("level");
        C18524p.m3843b(m2719a3, "identifier(\"level\")");
        f64713c = m2719a3;
        C18966e m2719a4 = C18966e.m2719a("expression");
        C18524p.m3843b(m2719a4, "identifier(\"expression\")");
        f64714d = m2719a4;
        C18966e m2719a5 = C18966e.m2719a("imports");
        C18524p.m3843b(m2719a5, "identifier(\"imports\")");
        f64715e = m2719a5;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC18977c m2706a(AbstractC18940g abstractC18940g, String message) {
        C18524p.m3840d(abstractC18940g, "<this>");
        C18524p.m3840d(message, "message");
        C18524p.m3840d("", "replaceWith");
        C18524p.m3840d("WARNING", "level");
        C18989j c18989j = new C18989j(abstractC18940g, C18954j.C18955a.f64590B, C18247ai.m4251a(C20126t.m1103a(f64714d, new C19801s("")), C20126t.m1103a(f64715e, new C19776b(C18297z.f63400a, new C18982a(abstractC18940g)))));
        C18961b c18961b = C18954j.C18955a.f64670y;
        C18538n m1103a = C20126t.m1103a(f64711a, new C19801s(message));
        C18538n m1103a2 = C20126t.m1103a(f64712b, new C19775a(c18989j));
        C18966e c18966e = f64713c;
        C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64589A);
        C18524p.m3843b(m2754a, "topLevel(StandardNames.FqNames.deprecationLevel)");
        C18966e m2719a = C18966e.m2719a("WARNING");
        C18524p.m3843b(m2719a, "identifier(level)");
        return new C18989j(abstractC18940g, c18961b, C18247ai.m4251a(m1103a, m1103a2, C20126t.m1103a(c18966e, new C19786j(m2754a, m2719a))));
    }
}
