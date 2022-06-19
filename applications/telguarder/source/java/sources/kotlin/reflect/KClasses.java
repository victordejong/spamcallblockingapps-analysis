package kotlin.reflect;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0010\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a+\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0002\u0010\u0005\u001a-\u0010\u0006\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0007"}, m400d2 = {"cast", "T", "", "Lkotlin/reflect/KClass;", "value", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Ljava/lang/Object;", "safeCast", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/reflect/KClasses.class */
public final class KClasses {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T cast(KClass<T> cast, Object obj) {
        Intrinsics.checkNotNullParameter(cast, "$this$cast");
        if (cast.isInstance(obj)) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type T");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + cast.getQualifiedName());
    }

    public static final <T> T safeCast(KClass<T> safeCast, Object obj) {
        Intrinsics.checkNotNullParameter(safeCast, "$this$safeCast");
        if (safeCast.isInstance(obj)) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type T");
        } else {
            obj = null;
        }
        return (T) obj;
    }
}
