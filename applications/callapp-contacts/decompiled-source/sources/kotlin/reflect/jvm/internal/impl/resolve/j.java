package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/j.class */
public interface j {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38318a = a.f38319a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f38319a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final j f38320b = new C0712a();

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/j$a$a.class */
        public static final class C0712a implements j {
            C0712a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.j
            public final ab a(ab moduleDescriptor) {
                p.d(moduleDescriptor, "moduleDescriptor");
                return null;
            }
        }

        private a() {
        }
    }

    ab a(ab abVar);
}
