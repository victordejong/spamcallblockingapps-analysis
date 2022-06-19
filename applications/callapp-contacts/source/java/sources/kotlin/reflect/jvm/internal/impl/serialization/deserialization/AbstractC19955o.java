package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.o */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/o.class */
public interface AbstractC19955o {

    /* renamed from: b */
    public static final AbstractC19955o f66288b = new AbstractC19955o() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.o.1
        /* renamed from: a */
        private static /* synthetic */ void m1253a(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "unresolvedSuperClasses";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1";
            if (i != 2) {
                objArr[2] = "reportIncompleteHierarchy";
            } else {
                objArr[2] = "reportCannotInferVisibility";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o
        /* renamed from: a */
        public final void mo1252a(AbstractC19039b abstractC19039b) {
            if (abstractC19039b == null) {
                m1253a(2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o
        /* renamed from: a */
        public final void mo1251a(AbstractC19070d abstractC19070d, List<String> list) {
            if (abstractC19070d == null) {
                m1253a(0);
            }
        }
    };

    /* renamed from: a */
    void mo1252a(AbstractC19039b abstractC19039b);

    /* renamed from: a */
    void mo1251a(AbstractC19070d abstractC19070d, List<String> list);
}
