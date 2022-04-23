package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.d.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/k.class */
public interface k {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/k$a.class */
    public static final class a implements k {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37892a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.k
        public final TypeParameterDescriptor a(x javaTypeParameter) {
            p.d(javaTypeParameter, "javaTypeParameter");
            return null;
        }
    }

    TypeParameterDescriptor a(x xVar);
}
