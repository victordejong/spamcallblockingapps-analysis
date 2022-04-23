package leakcanary.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\u001a\u001a\u0010\u0002\u001a\u0002H\u0003\"\n\b��\u0010\u0003\u0018\u0001*\u00020\u0004H\u0080\b¢\u0006\u0002\u0010\u0005\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"NO_OP_HANDLER", "Ljava/lang/reflect/InvocationHandler;", "noOpDelegate", "T", "", "()Ljava/lang/Object;", "leakcanary-android-utils_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:leakcanary/internal/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final InvocationHandler f39085a = a.f39086a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062,\u0010\u0007\u001a(\u0012\f\u0012\n \u0004*\u0004\u0018\u00010\u00030\u0003 \u0004*\u0014\u0012\u000e\b\u0001\u0012\n \u0004*\u0004\u0018\u00010\u00030\u0003\u0018\u00010\b0\bH\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "Ljava/lang/reflect/Method;", "<anonymous parameter 2>", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:leakcanary/internal/c$a.class */
    static final class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        public static final a f39086a = new a();

        a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public final /* bridge */ /* synthetic */ Object invoke(Object obj, Method method, Object[] objArr) {
            return v.f38654a;
        }
    }
}
