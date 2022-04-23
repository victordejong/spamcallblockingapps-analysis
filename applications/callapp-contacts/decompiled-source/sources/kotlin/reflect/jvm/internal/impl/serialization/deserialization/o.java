package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/o.class */
public interface o {

    /* renamed from: b  reason: collision with root package name */
    public static final o f38456b = new o() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.o.1
        private static /* synthetic */ void a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.o
        public final void a(b bVar) {
            if (bVar == null) {
                a(2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.o
        public final void a(d dVar, List<String> list) {
            if (dVar == null) {
                a(0);
            }
        }
    };

    void a(b bVar);

    void a(d dVar, List<String> list);
}
