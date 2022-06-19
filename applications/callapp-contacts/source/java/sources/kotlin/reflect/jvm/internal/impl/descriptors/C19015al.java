package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.al */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/al.class */
public final class C19015al {

    /* renamed from: a */
    public final AbstractC19130h f64747a;

    /* renamed from: b */
    public final List<TypeProjection> f64748b;

    /* renamed from: c */
    public final C19015al f64749c;

    /* JADX WARN: Multi-variable type inference failed */
    public C19015al(AbstractC19130h classifierDescriptor, List<? extends TypeProjection> arguments, C19015al c19015al) {
        C18524p.m3840d(classifierDescriptor, "classifierDescriptor");
        C18524p.m3840d(arguments, "arguments");
        this.f64747a = classifierDescriptor;
        this.f64748b = arguments;
        this.f64749c = c19015al;
    }
}
