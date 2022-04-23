package kotlin.reflect.jvm.internal.impl.g;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.g.b;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/h.class */
final class h implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final h f37687a = new h();

    /* renamed from: b  reason: collision with root package name */
    private static final String f37688b = "should not have varargs or parameters with default values";

    private h() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String a() {
        return f37688b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final boolean a(w functionDescriptor) {
        p.d(functionDescriptor, "functionDescriptor");
        List<ba> valueParameters = functionDescriptor.getValueParameters();
        p.b(valueParameters, "functionDescriptor.valueParameters");
        List<ba> list = valueParameters;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (ba it2 : list) {
            p.b(it2, "it");
            if (!(!a.a(it2) && it2.d() == null)) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String b(w wVar) {
        return b.a.a(this, wVar);
    }
}
