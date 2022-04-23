package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ah.class */
public final class ah {
    public static final List<ae> a(af afVar, b fqName) {
        p.d(afVar, "<this>");
        p.d(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        a(afVar, fqName, arrayList);
        return arrayList;
    }

    public static final void a(af afVar, b fqName, Collection<ae> packageFragments) {
        p.d(afVar, "<this>");
        p.d(fqName, "fqName");
        p.d(packageFragments, "packageFragments");
        if (afVar instanceof ai) {
            ((ai) afVar).a(fqName, packageFragments);
        } else {
            packageFragments.addAll(afVar.b(fqName));
        }
    }
}
