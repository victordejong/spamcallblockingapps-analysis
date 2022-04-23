package kotlin.reflect.jvm.internal.impl.descriptors.b;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/c.class */
public interface c {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/c$a.class */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37408a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.c
        public final boolean a(d classDescriptor, as functionDescriptor) {
            p.d(classDescriptor, "classDescriptor");
            p.d(functionDescriptor, "functionDescriptor");
            return true;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/c$b.class */
    public static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37409a = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.c
        public final boolean a(d classDescriptor, as functionDescriptor) {
            p.d(classDescriptor, "classDescriptor");
            p.d(functionDescriptor, "functionDescriptor");
            return !functionDescriptor.getAnnotations().b(d.a());
        }
    }

    boolean a(d dVar, as asVar);
}
