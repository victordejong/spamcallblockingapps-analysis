package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.af;
import kotlin.reflect.jvm.internal.impl.descriptors.ah;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/l.class */
public final class l implements g {

    /* renamed from: a  reason: collision with root package name */
    private final af f38449a;

    public l(af packageFragmentProvider) {
        p.d(packageFragmentProvider, "packageFragmentProvider");
        this.f38449a = packageFragmentProvider;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.g
    public final f a(a classId) {
        f a2;
        p.d(classId, "classId");
        af afVar = this.f38449a;
        b a3 = classId.a();
        p.b(a3, "classId.packageFqName");
        for (ae aeVar : ah.a(afVar, a3)) {
            if ((aeVar instanceof m) && (a2 = ((m) aeVar).d().a(classId)) != null) {
                return a2;
            }
        }
        return null;
    }
}
