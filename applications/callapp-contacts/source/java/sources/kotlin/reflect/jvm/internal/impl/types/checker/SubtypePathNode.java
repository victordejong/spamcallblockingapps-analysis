package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/SubtypePathNode.class */
final class SubtypePathNode {
    private final SubtypePathNode previous;
    private final KotlinType type;

    public SubtypePathNode(KotlinType type, SubtypePathNode subtypePathNode) {
        C18524p.m3840d(type, "type");
        this.type = type;
        this.previous = subtypePathNode;
    }

    public final SubtypePathNode getPrevious() {
        return this.previous;
    }

    public final KotlinType getType() {
        return this.type;
    }
}
