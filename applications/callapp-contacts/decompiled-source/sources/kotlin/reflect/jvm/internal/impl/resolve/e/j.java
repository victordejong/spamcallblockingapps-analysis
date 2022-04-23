package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/j.class */
public final class j {
    public static final Set<e> a(Iterable<? extends h> iterable) {
        HashSet hashSet;
        p.d(iterable, "<this>");
        HashSet hashSet2 = new HashSet();
        Iterator<? extends h> it2 = iterable.iterator();
        while (true) {
            hashSet = hashSet2;
            if (!it2.hasNext()) {
                break;
            }
            Set<e> classifierNames = ((h) it2.next()).getClassifierNames();
            if (classifierNames == null) {
                hashSet = null;
                break;
            }
            n.a((Collection) hashSet2, (Iterable) classifierNames);
        }
        return hashSet;
    }
}
