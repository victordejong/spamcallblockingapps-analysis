package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/d.class */
public final class C18896d {

    /* renamed from: a */
    public static final C18896d f64468a = new C18896d();

    private C18896d() {
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC19070d m2896a(C18961b fqName, AbstractC18940g builtIns) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(builtIns, "builtIns");
        C18894c c18894c = C18894c.f64450a;
        C18960a m2905a = C18894c.m2905a(fqName);
        if (m2905a != null) {
            return builtIns.m2830a(m2905a.m2748f());
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m2895a(AbstractC19070d mutable) {
        C18524p.m3840d(mutable, "mutable");
        C18894c c18894c = C18894c.f64450a;
        return C18894c.m2898d(C19807d.m1463c(mutable));
    }

    /* renamed from: b */
    public static boolean m2894b(AbstractC19070d readOnly) {
        C18524p.m3840d(readOnly, "readOnly");
        C18894c c18894c = C18894c.f64450a;
        return C18894c.m2897e(C19807d.m1463c(readOnly));
    }

    /* renamed from: c */
    public static AbstractC19070d m2893c(AbstractC19070d readOnly) {
        C18524p.m3840d(readOnly, "readOnly");
        AbstractC19070d abstractC19070d = readOnly;
        C18962c m1463c = C19807d.m1463c(abstractC19070d);
        C18894c c18894c = C18894c.f64450a;
        C18961b m2899c = C18894c.m2899c(m1463c);
        if (m2899c != null) {
            AbstractC19070d m2830a = C19756a.m1526d(abstractC19070d).m2830a(m2899c);
            C18524p.m3843b(m2830a, "descriptor.builtIns.getBuiltInClassByFqName(oppositeClassFqName)");
            return m2830a;
        }
        throw new IllegalArgumentException("Given class " + readOnly + " is not a read-only collection");
    }
}
