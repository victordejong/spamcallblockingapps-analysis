package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1 */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1.class */
public final class C19899xfdb95347 extends AbstractC18526r implements Function0<Collection<? extends KotlinType>> {
    final /* synthetic */ DeserializedClassDescriptor.C19885a this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19899xfdb95347(DeserializedClassDescriptor.C19885a c19885a) {
        super(0);
        this.this$0 = c19885a;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Collection<? extends KotlinType> invoke() {
        KotlinTypeRefiner kotlinTypeRefiner;
        DeserializedClassDescriptor deserializedClassDescriptor;
        kotlinTypeRefiner = this.this$0.f66122d;
        deserializedClassDescriptor = this.this$0.f66121a;
        return kotlinTypeRefiner.refineSupertypes(deserializedClassDescriptor);
    }
}
