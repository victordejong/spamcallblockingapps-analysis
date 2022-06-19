package kotlin.reflect.jvm.internal.impl;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a.class */
public final class C18692a {

    /* renamed from: a */
    public static final C18692a f63804a = new C18692a();

    /* renamed from: b */
    private static final Set<C18960a> f63805b;

    static {
        List<C18961b> b = C18282n.m4167b((Object[]) new C18961b[]{C19585u.f65607a, C19585u.f65615i, C19585u.f65616j, C19585u.f65610d, C19585u.f65611e, C19585u.f65613g});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (C18961b c18961b : b) {
            linkedHashSet.add(C18960a.m2754a(c18961b));
        }
        f63805b = linkedHashSet;
    }

    private C18692a() {
    }

    /* renamed from: a */
    public static Set<C18960a> m3708a() {
        return f63805b;
    }
}
