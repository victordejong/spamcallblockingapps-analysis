package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f37773a = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/h$a.class */
    public static final class a extends r implements Function1<b, Boolean> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(b bVar) {
            b it2 = bVar;
            p.d(it2, "it");
            return Boolean.valueOf(h.this.b(it2));
        }
    }

    private h() {
    }

    public final String a(b bVar) {
        p.d(bVar, "<this>");
        boolean a2 = g.a(bVar);
        if (!x.f38657a || a2) {
            b a3 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.a(bVar), new a());
            if (a3 == null) {
                return null;
            }
            f fVar = f.f37769a;
            e eVar = f.a().get(kotlin.reflect.jvm.internal.impl.resolve.b.a.b(a3));
            if (eVar == null) {
                return null;
            }
            return eVar.a();
        }
        throw new AssertionError("This method is defined only for builtin members, but " + bVar + " found");
    }

    public final boolean b(b callableMemberDescriptor) {
        p.d(callableMemberDescriptor, "callableMemberDescriptor");
        f fVar = f.f37769a;
        if (!f.c().contains(callableMemberDescriptor.getName())) {
            return false;
        }
        f fVar2 = f.f37769a;
        b bVar = callableMemberDescriptor;
        if (n.a((Iterable<? extends kotlin.reflect.jvm.internal.impl.c.b>) f.b(), kotlin.reflect.jvm.internal.impl.resolve.b.a.f(bVar)) && callableMemberDescriptor.getValueParameters().isEmpty()) {
            return true;
        }
        if (!g.a(bVar)) {
            return false;
        }
        Collection<? extends b> overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
        p.b(overriddenDescriptors, "overriddenDescriptors");
        Collection<? extends b> collection = overriddenDescriptors;
        if (collection.isEmpty()) {
            return false;
        }
        for (b it2 : collection) {
            p.b(it2, "it");
            if (b(it2)) {
                return true;
            }
        }
        return false;
    }
}
