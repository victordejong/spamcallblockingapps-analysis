package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.Map;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19451e;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/c.class */
public final class C19349c {

    /* renamed from: b */
    private static final C18966e f65246b;

    /* renamed from: c */
    private static final C18966e f65247c;

    /* renamed from: d */
    private static final C18966e f65248d;

    /* renamed from: a */
    public static final C19349c f65245a = new C19349c();

    /* renamed from: e */
    private static final Map<C18961b, C18961b> f65249e = C18247ai.m4251a(C20126t.m1103a(C18954j.C18955a.f64594F, C19585u.f65610d), C20126t.m1103a(C18954j.C18955a.f64597I, C19585u.f65611e), C20126t.m1103a(C18954j.C18955a.f64598J, C19585u.f65614h), C20126t.m1103a(C18954j.C18955a.f64599K, C19585u.f65613g));

    /* renamed from: f */
    private static final Map<C18961b, C18961b> f65250f = C18247ai.m4251a(C20126t.m1103a(C19585u.f65610d, C18954j.C18955a.f64594F), C20126t.m1103a(C19585u.f65611e, C18954j.C18955a.f64597I), C20126t.m1103a(C19585u.f65612f, C18954j.C18955a.f64670y), C20126t.m1103a(C19585u.f65614h, C18954j.C18955a.f64598J), C20126t.m1103a(C19585u.f65613g, C18954j.C18955a.f64599K));

    static {
        C18966e m2719a = C18966e.m2719a("message");
        C18524p.m3843b(m2719a, "identifier(\"message\")");
        f65246b = m2719a;
        C18966e m2719a2 = C18966e.m2719a("allowedTargets");
        C18524p.m3843b(m2719a2, "identifier(\"allowedTargets\")");
        f65247c = m2719a2;
        C18966e m2719a3 = C18966e.m2719a("value");
        C18524p.m3843b(m2719a3, "identifier(\"value\")");
        f65248d = m2719a3;
    }

    private C19349c() {
    }

    /* renamed from: a */
    public static C18966e m2282a() {
        return f65246b;
    }

    /* renamed from: a */
    public static AbstractC18977c m2280a(AbstractC19389a annotation, C19501g c, boolean z) {
        C18524p.m3840d(annotation, "annotation");
        C18524p.m3840d(c, "c");
        C18960a mo2229b = annotation.mo2229b();
        if (C18524p.m3850a(mo2229b, C18960a.m2754a(C19585u.f65610d))) {
            return new C19360i(annotation, c);
        }
        if (C18524p.m3850a(mo2229b, C18960a.m2754a(C19585u.f65611e))) {
            return new C19358h(annotation, c);
        }
        if (C18524p.m3850a(mo2229b, C18960a.m2754a(C19585u.f65614h))) {
            return new C19347b(c, annotation, C18954j.C18955a.f64598J);
        }
        if (C18524p.m3850a(mo2229b, C18960a.m2754a(C19585u.f65613g))) {
            return new C19347b(c, annotation, C18954j.C18955a.f64599K);
        }
        if (!C18524p.m3850a(mo2229b, C18960a.m2754a(C19585u.f65612f))) {
            return new C19451e(c, annotation, z);
        }
        return null;
    }

    /* renamed from: b */
    public static C18966e m2279b() {
        return f65247c;
    }

    /* renamed from: c */
    public static C18966e m2278c() {
        return f65248d;
    }

    /* renamed from: a */
    public final AbstractC18977c m2281a(C18961b kotlinName, AbstractC19395d annotationOwner, C19501g c) {
        AbstractC19389a mo2221a;
        C18524p.m3840d(kotlinName, "kotlinName");
        C18524p.m3840d(annotationOwner, "annotationOwner");
        C18524p.m3840d(c, "c");
        if (C18524p.m3850a(kotlinName, C18954j.C18955a.f64670y)) {
            C18961b DEPRECATED_ANNOTATION = C19585u.f65612f;
            C18524p.m3843b(DEPRECATED_ANNOTATION, "DEPRECATED_ANNOTATION");
            AbstractC19389a mo2221a2 = annotationOwner.mo2221a(DEPRECATED_ANNOTATION);
            if (mo2221a2 != null || annotationOwner.mo2219c()) {
                return new C19352e(mo2221a2, c);
            }
        }
        C18961b c18961b = f65249e.get(kotlinName);
        if (c18961b == null || (mo2221a = annotationOwner.mo2221a(c18961b)) == null) {
            return null;
        }
        return m2280a(mo2221a, c, false);
    }
}
