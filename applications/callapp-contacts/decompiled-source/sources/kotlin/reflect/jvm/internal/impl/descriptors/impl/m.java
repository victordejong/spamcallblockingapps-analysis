package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/m.class */
public final class m extends b implements u {

    /* renamed from: a  reason: collision with root package name */
    private final an f37554a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(g annotations, an correspondingProperty) {
        super(annotations);
        p.d(annotations, "annotations");
        p.d(correspondingProperty, "correspondingProperty");
        this.f37554a = correspondingProperty;
    }
}
