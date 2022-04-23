package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerializationException;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002\u001a \u0010��\u001a\u00020\u00012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H��¨\u0006\u0007"}, d2 = {"throwSubtypeNotRegistered", "", "subClassName", "", "baseClass", "Lkotlin/reflect/KClass;", "subClass", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/c.class */
public final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Void a(String str, kotlin.reflect.c<?> cVar) {
        throw new SerializationException(str + " is not registered for polymorphic serialization in the scope of " + cVar, null, 2, null);
    }

    public static final Void a(kotlin.reflect.c<?> subClass, kotlin.reflect.c<?> baseClass) {
        p.c(subClass, "subClass");
        p.c(baseClass, "baseClass");
        a(subClass.toString(), baseClass);
        throw null;
    }
}
