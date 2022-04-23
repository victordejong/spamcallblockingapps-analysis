package kotlin.reflect.jvm.internal.impl.c;

import kotlin.h.l;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f37344a = new f();

    /* renamed from: b  reason: collision with root package name */
    private static final l f37345b = new l("[^\\p{L}\\p{Digit}]");

    private f() {
    }

    public static final String a(String name) {
        p.d(name, "name");
        return f37345b.a(name, "_");
    }
}
