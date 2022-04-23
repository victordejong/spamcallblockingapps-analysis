package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.utils.i;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/i.class */
public final class i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/i$a.class */
    public static final class a extends r implements Function1<H, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.utils.i<H> f38317a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.utils.i<H> iVar) {
            super(1);
            this.f38317a = iVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Object it2) {
            AbstractCollection abstractCollection = this.f38317a;
            p.b(it2, "it");
            abstractCollection.add(it2);
            return v.f38654a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <H> Collection<H> a(Collection<? extends H> collection, Function1<? super H, ? extends kotlin.reflect.jvm.internal.impl.descriptors.a> descriptorByHandle) {
        p.d(collection, "<this>");
        p.d(descriptorByHandle, "descriptorByHandle");
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        i.b bVar = kotlin.reflect.jvm.internal.impl.utils.i.f38529a;
        kotlin.reflect.jvm.internal.impl.utils.i a2 = i.b.a();
        while (true) {
            LinkedList linkedList2 = linkedList;
            if (!(!linkedList2.isEmpty())) {
                return a2;
            }
            Object e = n.e((List<? extends Object>) linkedList);
            i.b bVar2 = kotlin.reflect.jvm.internal.impl.utils.i.f38529a;
            kotlin.reflect.jvm.internal.impl.utils.i a3 = i.b.a();
            Collection<? super H> a4 = OverridingUtil.a(e, linkedList2, descriptorByHandle, new a(a3));
            p.b(a4, "val conflictedHandles = SmartSet.create<H>()\n\n        val overridableGroup =\n            OverridingUtil.extractMembersOverridableInBothWays(nextHandle, queue, descriptorByHandle) { conflictedHandles.add(it) }");
            if (a4.size() != 1 || !a3.isEmpty()) {
                Object obj = (Object) OverridingUtil.a(a4, descriptorByHandle);
                p.b(obj, "selectMostSpecificMember(overridableGroup, descriptorByHandle)");
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) descriptorByHandle.invoke(obj);
                for (Object it2 : a4) {
                    p.b(it2, "it");
                    if (!OverridingUtil.b(aVar, (kotlin.reflect.jvm.internal.impl.descriptors.a) descriptorByHandle.invoke(it2))) {
                        a3.add(it2);
                    }
                }
                kotlin.reflect.jvm.internal.impl.utils.i iVar = a3;
                if (!iVar.isEmpty()) {
                    a2.addAll(iVar);
                }
                a2.add(obj);
            } else {
                Object d2 = n.d((Iterable<? extends Object>) a4);
                p.b(d2, "overridableGroup.single()");
                a2.add(d2);
            }
        }
    }
}
