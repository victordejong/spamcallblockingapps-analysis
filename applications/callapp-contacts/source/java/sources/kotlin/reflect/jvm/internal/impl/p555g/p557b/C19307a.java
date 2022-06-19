package kotlin.reflect.jvm.internal.impl.p555g.p557b;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/b/a.class */
public final class C19307a {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <T> Collection<T> m2299a(Collection<? extends T> collection, Collection<? extends T> collection2) {
        C18524p.m3840d(collection2, "collection");
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

    /* renamed from: a */
    public static final C20023h<AbstractC19834h> m2300a(Iterable<? extends AbstractC19834h> scopes) {
        C18524p.m3840d(scopes, "scopes");
        C20023h<AbstractC19834h> c20023h = new C20023h<>();
        for (AbstractC19834h abstractC19834h : scopes) {
            AbstractC19834h abstractC19834h2 = abstractC19834h;
            if ((abstractC19834h2 == null || abstractC19834h2 == AbstractC19834h.C19838c.f66035a) ? false : true) {
                c20023h.add(abstractC19834h);
            }
        }
        return c20023h;
    }
}
