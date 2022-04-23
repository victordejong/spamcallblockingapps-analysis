package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1.class */
public final class DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1 extends r implements Function0<Collection<? extends KotlinType>> {
    final /* synthetic */ DeserializedClassDescriptor.a this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor$DeserializedClassMemberScope$refinedSupertypes$1(DeserializedClassDescriptor.a aVar) {
        super(0);
        this.this$0 = aVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Collection<? extends KotlinType> invoke() {
        KotlinTypeRefiner kotlinTypeRefiner;
        DeserializedClassDescriptor deserializedClassDescriptor;
        kotlinTypeRefiner = this.this$0.f38354d;
        deserializedClassDescriptor = this.this$0.f38353a;
        return kotlinTypeRefiner.refineSupertypes(deserializedClassDescriptor);
    }
}
