package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.u */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/u.class */
public final class C19970u {
    /* renamed from: a */
    public static final C18960a m1229a(AbstractC18813c abstractC18813c, int i) {
        C18524p.m3840d(abstractC18813c, "<this>");
        C18960a m2755a = C18960a.m2755a(abstractC18813c.mo2926b(i), abstractC18813c.mo2925c(i));
        C18524p.m3843b(m2755a, "fromString(getQualifiedClassName(index), isLocalClassName(index))");
        return m2755a;
    }

    /* renamed from: b */
    public static final C18966e m1228b(AbstractC18813c abstractC18813c, int i) {
        C18524p.m3840d(abstractC18813c, "<this>");
        C18966e m2714d = C18966e.m2714d(abstractC18813c.mo2927a(i));
        C18524p.m3843b(m2714d, "guessByFirstCharacter(getString(index))");
        return m2714d;
    }
}
