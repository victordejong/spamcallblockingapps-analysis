package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.j;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018��2\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J!\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000bJ!\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "visitFunctionDescriptor", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "data", "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "visitPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a.class */
public class a extends j<f<?>, v> {

    /* renamed from: a  reason: collision with root package name */
    private final k f36829a;

    public a(k container) {
        p.d(container, "container");
        this.f36829a = container;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.m
    public final /* synthetic */ Object a(an descriptor, Object obj) {
        v data = (v) obj;
        p.d(descriptor, "descriptor");
        p.d(data, "data");
        int i = 0;
        int i2 = descriptor.getDispatchReceiverParameter() != null ? 1 : 0;
        if (descriptor.getExtensionReceiverParameter() != null) {
            i = 1;
        }
        int i3 = i2 + i;
        return descriptor.at_() ? i3 != 0 ? i3 != 1 ? new o(this.f36829a, descriptor) : new n(this.f36829a, descriptor) : new m(this.f36829a, descriptor) : i3 != 0 ? i3 != 1 ? new t(this.f36829a, descriptor) : new s(this.f36829a, descriptor) : new r(this.f36829a, descriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.m
    public final /* synthetic */ Object a(w descriptor, Object obj) {
        v data = (v) obj;
        p.d(descriptor, "descriptor");
        p.d(data, "data");
        return new l(this.f36829a, descriptor);
    }
}
