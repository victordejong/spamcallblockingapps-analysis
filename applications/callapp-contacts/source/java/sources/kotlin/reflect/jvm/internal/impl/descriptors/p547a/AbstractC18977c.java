package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/c.class */
public interface AbstractC18977c {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/c$a.class */
    public static final class C18978a {
        /* renamed from: a */
        public static C18961b m2708a(AbstractC18977c abstractC18977c) {
            C18524p.m3840d(abstractC18977c, "this");
            AbstractC19070d m1539a = C19756a.m1539a(abstractC18977c);
            if (m1539a == null) {
                return null;
            }
            if (ErrorUtils.isError(m1539a)) {
                m1539a = null;
            }
            if (m1539a != null) {
                return C19756a.m1524f(m1539a);
            }
            return null;
        }
    }

    /* renamed from: a */
    KotlinType mo2043a();

    /* renamed from: b */
    C18961b mo2042b();

    /* renamed from: c */
    Map<C18966e, AbstractC19781g<?>> mo2041c();

    /* renamed from: d */
    AbstractC19026at mo2040d();
}
