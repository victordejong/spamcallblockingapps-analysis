package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.utils.C20028i;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/i.class */
public final class C19857i {

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/i$a.class */
    public static final class C19858a extends AbstractC18526r implements Function1<H, C20128v> {

        /* renamed from: a */
        final /* synthetic */ C20028i<H> f66055a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19858a(C20028i<H> c20028i) {
            super(1);
            this.f66055a = c20028i;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Object it2) {
            AbstractCollection abstractCollection = this.f66055a;
            C18524p.m3843b(it2, "it");
            abstractCollection.add(it2);
            return C20128v.f66529a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <H> Collection<H> m1395a(Collection<? extends H> collection, Function1<? super H, ? extends AbstractC18973a> descriptorByHandle) {
        C18524p.m3840d(collection, "<this>");
        C18524p.m3840d(descriptorByHandle, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        C20028i.C20030b c20030b = C20028i.f66384a;
        C20028i m1187a = C20028i.C20030b.m1187a();
        while (true) {
            LinkedList linkedList2 = linkedList;
            if (!(!linkedList2.isEmpty())) {
                return m1187a;
            }
            Object e = C18282n.m4123e((List<? extends Object>) linkedList);
            C20028i.C20030b c20030b2 = C20028i.f66384a;
            C20028i m1187a2 = C20028i.C20030b.m1187a();
            Collection<? super H> m1587a = OverridingUtil.m1587a(e, linkedList2, descriptorByHandle, new C19858a(m1187a2));
            C18524p.m3843b(m1587a, "val conflictedHandles = SmartSet.create<H>()\n\n        val overridableGroup =\n            OverridingUtil.extractMembersOverridableInBothWays(nextHandle, queue, descriptorByHandle) { conflictedHandles.add(it) }");
            if (m1587a.size() != 1 || !m1187a2.isEmpty()) {
                Object obj = (Object) OverridingUtil.m1586a(m1587a, descriptorByHandle);
                C18524p.m3843b(obj, "selectMostSpecificMember(overridableGroup, descriptorByHandle)");
                AbstractC18973a invoke = descriptorByHandle.invoke(obj);
                for (Object it2 : m1587a) {
                    C18524p.m3843b(it2, "it");
                    if (!OverridingUtil.m1559b(invoke, descriptorByHandle.invoke(it2))) {
                        m1187a2.add(it2);
                    }
                }
                C20028i c20028i = m1187a2;
                if (!c20028i.isEmpty()) {
                    m1187a.addAll(c20028i);
                }
                m1187a.add(obj);
            } else {
                Object d = C18282n.m4128d((Iterable<? extends Object>) m1587a);
                C18524p.m3843b(d, "overridableGroup.single()");
                m1187a.add(d);
            }
        }
    }
}
