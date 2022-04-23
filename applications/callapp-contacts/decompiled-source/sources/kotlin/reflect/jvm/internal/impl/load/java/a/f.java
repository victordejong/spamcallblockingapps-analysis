package kotlin.reflect.jvm.internal.impl.load.java.a;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/f.class */
public interface f {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/f$a.class */
    public static final class a implements f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37734a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.f
        public final g<?> a(n field, an descriptor) {
            p.d(field, "field");
            p.d(descriptor, "descriptor");
            return null;
        }
    }

    g<?> a(n nVar, an anVar);
}
