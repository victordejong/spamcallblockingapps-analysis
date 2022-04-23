package kotlin.reflect.jvm.internal.impl.descriptors.b;

import java.util.Collection;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/a.class */
public interface a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/b/a$a.class */
    public static final class C0670a implements a {

        /* renamed from: a  reason: collision with root package name */
        public static final C0670a f37407a = new C0670a();

        private C0670a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
        public final Collection<as> a(e name, d classDescriptor) {
            p.d(name, "name");
            p.d(classDescriptor, "classDescriptor");
            return z.f36608a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
        public final Collection<KotlinType> a(d classDescriptor) {
            p.d(classDescriptor, "classDescriptor");
            return z.f36608a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
        public final Collection<c> b(d classDescriptor) {
            p.d(classDescriptor, "classDescriptor");
            return z.f36608a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.a
        public final Collection<e> c(d classDescriptor) {
            p.d(classDescriptor, "classDescriptor");
            return z.f36608a;
        }
    }

    Collection<as> a(e eVar, d dVar);

    Collection<KotlinType> a(d dVar);

    Collection<c> b(d dVar);

    Collection<e> c(d dVar);
}
