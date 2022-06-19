package kotlin.reflect.jvm.internal;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19164j;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018��2\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J!\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000bJ!\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\b\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "visitFunctionDescriptor", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "data", "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "visitPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a.class */
public class C18573a extends C19164j<AbstractC18659f<?>, C20128v> {

    /* renamed from: a */
    private final AbstractC20033k f63644a;

    public C18573a(AbstractC20033k container) {
        C18524p.m3840d(container, "container");
        this.f63644a = container;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19164j, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
    /* renamed from: a */
    public final /* synthetic */ Object mo2384a(AbstractC19017an descriptor, Object obj) {
        C20128v data = (C20128v) obj;
        C18524p.m3840d(descriptor, "descriptor");
        C18524p.m3840d(data, "data");
        int i = 0;
        int i2 = descriptor.getDispatchReceiverParameter() != null ? 1 : 0;
        if (descriptor.getExtensionReceiverParameter() != null) {
            i = 1;
        }
        int i3 = i2 + i;
        return descriptor.at_() ? i3 != 0 ? i3 != 1 ? new C20052o(this.f63644a, descriptor) : new C20049n(this.f63644a, descriptor) : new C20046m(this.f63644a, descriptor) : i3 != 0 ? i3 != 1 ? new C20075t(this.f63644a, descriptor) : new C20071s(this.f63644a, descriptor) : new C20067r(this.f63644a, descriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19164j, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
    /* renamed from: a */
    public final /* synthetic */ Object mo2377a(AbstractC19219w descriptor, Object obj) {
        C20128v data = (C20128v) obj;
        C18524p.m3840d(descriptor, "descriptor");
        C18524p.m3840d(data, "data");
        return new C20042l(this.f63644a, descriptor);
    }
}
