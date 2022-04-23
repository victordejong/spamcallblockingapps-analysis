package kotlin.reflect.jvm.internal.impl.g.b;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/b/a.class */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Collection<T> a(Collection<? extends T> collection, Collection<? extends T> collection2) {
        p.d(collection2, "collection");
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == 0) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.utils.h<kotlin.reflect.jvm.internal.impl.resolve.e.h> a(java.lang.Iterable<? extends kotlin.reflect.jvm.internal.impl.resolve.e.h> r3) {
        /*
            r0 = r3
            java.lang.String r1 = "scopes"
            kotlin.jvm.internal.p.d(r0, r1)
            kotlin.reflect.jvm.internal.impl.utils.h r0 = new kotlin.reflect.jvm.internal.impl.utils.h
            r1 = r0
            r1.<init>()
            java.util.Collection r0 = (java.util.Collection) r0
            r4 = r0
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x0018:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0051
            r0 = r5
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.resolve.e.h r0 = (kotlin.reflect.jvm.internal.impl.resolve.e.h) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x003e
            r0 = r3
            kotlin.reflect.jvm.internal.impl.resolve.e.h$c r1 = kotlin.reflect.jvm.internal.impl.resolve.e.h.c.f38297a
            if (r0 == r1) goto L_0x003e
            r0 = 1
            r7 = r0
            goto L_0x0041
        L_0x003e:
            r0 = 0
            r7 = r0
        L_0x0041:
            r0 = r7
            if (r0 == 0) goto L_0x0018
            r0 = r4
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L_0x0018
        L_0x0051:
            r0 = r4
            kotlin.reflect.jvm.internal.impl.utils.h r0 = (kotlin.reflect.jvm.internal.impl.utils.h) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.g.b.a.a(java.lang.Iterable):kotlin.reflect.jvm.internal.impl.utils.h");
    }
}
