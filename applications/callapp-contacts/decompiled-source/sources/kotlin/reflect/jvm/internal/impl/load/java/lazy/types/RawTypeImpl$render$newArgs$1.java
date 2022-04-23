package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl$render$newArgs$1.class */
final class RawTypeImpl$render$newArgs$1 extends r implements Function1<String, CharSequence> {
    public static final RawTypeImpl$render$newArgs$1 INSTANCE = new RawTypeImpl$render$newArgs$1();

    RawTypeImpl$render$newArgs$1() {
        super(1);
    }

    public final CharSequence invoke(String it2) {
        p.d(it2, "it");
        return p.a("(raw) ", (Object) it2);
    }
}
