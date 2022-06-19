package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/g.class */
public final class C19422g {
    /* renamed from: a */
    public static final C18961b m2165a(C18961b c18961b, String str) {
        C18961b m2744a = c18961b.m2744a(C18966e.m2719a(str));
        C18524p.m3843b(m2744a, "child(Name.identifier(name))");
        return m2744a;
    }

    /* renamed from: a */
    public static final C18961b m2164a(C18962c c18962c, String str) {
        C18961b m2730c = c18962c.m2733a(C18966e.m2719a(str)).m2730c();
        C18524p.m3843b(m2730c, "child(Name.identifier(name)).toSafe()");
        return m2730c;
    }
}
