package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/j.class */
public final class C19840j {
    /* renamed from: a */
    public static final Set<C18966e> m1412a(Iterable<? extends AbstractC19834h> iterable) {
        HashSet hashSet;
        C18524p.m3840d(iterable, "<this>");
        HashSet hashSet2 = new HashSet();
        Iterator<? extends AbstractC19834h> it2 = iterable.iterator();
        while (true) {
            hashSet = hashSet2;
            if (!it2.hasNext()) {
                break;
            }
            Set<C18966e> classifierNames = it2.next().getClassifierNames();
            if (classifierNames == null) {
                hashSet = null;
                break;
            }
            C18282n.m4158a((Collection) hashSet2, (Iterable) classifierNames);
        }
        return hashSet;
    }
}
