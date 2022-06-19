package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af;
import kotlin.reflect.jvm.internal.impl.descriptors.C19011ah;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/l.class */
public final class C19950l implements AbstractC19940g {

    /* renamed from: a */
    private final AbstractC19007af f66278a;

    public C19950l(AbstractC19007af packageFragmentProvider) {
        C18524p.m3840d(packageFragmentProvider, "packageFragmentProvider");
        this.f66278a = packageFragmentProvider;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19940g
    /* renamed from: a */
    public final C19939f mo1227a(C18960a classId) {
        C19939f mo1227a;
        C18524p.m3840d(classId, "classId");
        AbstractC19007af abstractC19007af = this.f66278a;
        C18961b m2758a = classId.m2758a();
        C18524p.m3843b(m2758a, "classId.packageFqName");
        for (AbstractC19006ae abstractC19006ae : C19011ah.m2698a(abstractC19007af, m2758a)) {
            if ((abstractC19006ae instanceof AbstractC19951m) && (mo1227a = ((AbstractC19951m) abstractC19006ae).mo1254d().mo1227a(classId)) != null) {
                return mo1227a;
            }
        }
        return null;
    }
}
