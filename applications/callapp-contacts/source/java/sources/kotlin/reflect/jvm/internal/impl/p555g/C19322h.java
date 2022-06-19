package kotlin.reflect.jvm.internal.impl.p555g;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/h.class */
final class C19322h implements AbstractC19305b {

    /* renamed from: a */
    public static final C19322h f65170a = new C19322h();

    /* renamed from: b */
    private static final String f65171b = "should not have varargs or parameters with default values";

    private C19322h() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final String mo2294a() {
        return f65171b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final boolean mo2292a(AbstractC19219w functionDescriptor) {
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        List<AbstractC19050ba> valueParameters = functionDescriptor.getValueParameters();
        C18524p.m3843b(valueParameters, "functionDescriptor.valueParameters");
        List<AbstractC19050ba> list = valueParameters;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (AbstractC19050ba it2 : list) {
                C18524p.m3843b(it2, "it");
                if (!(!C19756a.m1534a(it2) && it2.mo2608d() == null)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: b */
    public final String mo2293b(AbstractC19219w abstractC19219w) {
        return AbstractC19305b.C19306a.m2298a(this, abstractC19219w);
    }
}
