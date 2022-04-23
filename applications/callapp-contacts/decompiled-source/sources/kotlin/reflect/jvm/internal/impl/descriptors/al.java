package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/al.class */
public final class al {

    /* renamed from: a  reason: collision with root package name */
    public final h f37391a;

    /* renamed from: b  reason: collision with root package name */
    public final List<TypeProjection> f37392b;

    /* renamed from: c  reason: collision with root package name */
    public final al f37393c;

    /* JADX WARN: Multi-variable type inference failed */
    public al(h classifierDescriptor, List<? extends TypeProjection> arguments, al alVar) {
        p.d(classifierDescriptor, "classifierDescriptor");
        p.d(arguments, "arguments");
        this.f37391a = classifierDescriptor;
        this.f37392b = arguments;
        this.f37393c = alVar;
    }
}
