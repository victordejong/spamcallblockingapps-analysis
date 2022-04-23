package kotlin.reflect.jvm.internal.impl.f;

import kotlin.jvm.functions.Function1;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/k.class */
public interface k {

    /* renamed from: b  reason: collision with root package name */
    public static final a f37666b = a.f37667a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/k$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f37667a = new a();

        private a() {
        }

        public static d a(Runnable runnable, Function1<? super InterruptedException, v> function1) {
            return (runnable == null || function1 == null) ? new d(null, 1, null) : new c(runnable, function1);
        }
    }

    void a();

    void c();
}
