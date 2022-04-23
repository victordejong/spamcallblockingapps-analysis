package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.ac;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeCheckerContextKt.class */
public final class ClassicTypeCheckerContextKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String errorMessage(Object obj) {
        return "ClassicTypeCheckerContext couldn't handle " + ac.b(obj.getClass()) + ' ' + obj;
    }
}
