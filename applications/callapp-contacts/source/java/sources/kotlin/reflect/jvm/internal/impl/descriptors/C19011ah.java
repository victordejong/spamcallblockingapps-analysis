package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ah */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ah.class */
public final class C19011ah {
    /* renamed from: a */
    public static final List<AbstractC19006ae> m2698a(AbstractC19007af abstractC19007af, C18961b fqName) {
        C18524p.m3840d(abstractC19007af, "<this>");
        C18524p.m3840d(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        m2697a(abstractC19007af, fqName, arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static final void m2697a(AbstractC19007af abstractC19007af, C18961b fqName, Collection<AbstractC19006ae> packageFragments) {
        C18524p.m3840d(abstractC19007af, "<this>");
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(packageFragments, "packageFragments");
        if (abstractC19007af instanceof AbstractC19012ai) {
            ((AbstractC19012ai) abstractC19007af).mo1389a(fqName, packageFragments);
        } else {
            packageFragments.addAll(abstractC19007af.mo1385b(fqName));
        }
    }
}
