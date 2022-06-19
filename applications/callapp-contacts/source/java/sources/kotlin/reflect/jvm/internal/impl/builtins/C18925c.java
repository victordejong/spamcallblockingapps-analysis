package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/c.class */
public final class C18925c {
    /* renamed from: a */
    public static final boolean m2863a(C18924b c18924b, AbstractC19070d classDescriptor) {
        C18524p.m3840d(c18924b, "<this>");
        C18524p.m3840d(classDescriptor, "classDescriptor");
        if (C19807d.m1459g(classDescriptor)) {
            Set<C18960a> m2865a = C18924b.m2865a();
            C18960a m1532a = C19756a.m1532a((AbstractC19129g) classDescriptor);
            return C18282n.m4147a((Iterable<? extends C18960a>) m2865a, m1532a == null ? null : m1532a.m2750d());
        }
        return false;
    }
}
