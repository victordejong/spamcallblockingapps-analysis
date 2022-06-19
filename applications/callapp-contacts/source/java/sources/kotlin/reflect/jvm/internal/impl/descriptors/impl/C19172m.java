package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19215u;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18976b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/m.class */
public final class C19172m extends C18976b implements AbstractC19215u {

    /* renamed from: a */
    private final AbstractC19017an f64941a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19172m(AbstractC18983g annotations, AbstractC19017an correspondingProperty) {
        super(annotations);
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(correspondingProperty, "correspondingProperty");
        this.f64941a = correspondingProperty;
    }
}
