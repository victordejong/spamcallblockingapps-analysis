package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.java.b.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/o.class */
public interface o {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/o$a.class */
    public static final class a implements o {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37899a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.o
        public final void a(d classDescriptor) {
            p.d(classDescriptor, "classDescriptor");
        }
    }

    void a(d dVar);
}
