package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/h.class */
public final class C19423h {

    /* renamed from: a */
    public static final C19423h f65309a = new C19423h();

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/h$a.class */
    public static final class C19424a extends AbstractC18526r implements Function1<AbstractC19039b, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19424a() {
            super(1);
            C19423h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(AbstractC19039b abstractC19039b) {
            AbstractC19039b it2 = abstractC19039b;
            C18524p.m3840d(it2, "it");
            return Boolean.valueOf(C19423h.this.m2162b(it2));
        }
    }

    private C19423h() {
    }

    /* renamed from: a */
    public final String m2163a(AbstractC19039b abstractC19039b) {
        C18524p.m3840d(abstractC19039b, "<this>");
        boolean m2827a = AbstractC18940g.m2827a(abstractC19039b);
        if (C20130x.f66532a && !m2827a) {
            throw new AssertionError("This method is defined only for builtin members, but " + abstractC19039b + " found");
        }
        AbstractC19039b m1535a = C19756a.m1535a(C19756a.m1536a(abstractC19039b), new C19424a());
        if (m1535a == null) {
            return null;
        }
        C19421f c19421f = C19421f.f65304a;
        C18966e c18966e = C19421f.m2169a().get(C19756a.m1528b(m1535a));
        if (c18966e != null) {
            return c18966e.m2721a();
        }
        return null;
    }

    /* renamed from: b */
    public final boolean m2162b(AbstractC19039b callableMemberDescriptor) {
        C18524p.m3840d(callableMemberDescriptor, "callableMemberDescriptor");
        C19421f c19421f = C19421f.f65304a;
        if (!C19421f.m2166c().contains(callableMemberDescriptor.getName())) {
            return false;
        }
        C19421f c19421f2 = C19421f.f65304a;
        AbstractC19039b abstractC19039b = callableMemberDescriptor;
        if (C18282n.m4147a((Iterable<? extends C18961b>) C19421f.m2167b(), C19756a.m1524f(abstractC19039b)) && callableMemberDescriptor.getValueParameters().isEmpty()) {
            return true;
        }
        if (!AbstractC18940g.m2827a(abstractC19039b)) {
            return false;
        }
        Collection<? extends AbstractC19039b> overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
        C18524p.m3843b(overriddenDescriptors, "overriddenDescriptors");
        Collection<? extends AbstractC19039b> collection = overriddenDescriptors;
        if (collection.isEmpty()) {
            return false;
        }
        for (AbstractC19039b it2 : collection) {
            C18524p.m3843b(it2, "it");
            if (m2162b(it2)) {
                return true;
            }
        }
        return false;
    }
}
