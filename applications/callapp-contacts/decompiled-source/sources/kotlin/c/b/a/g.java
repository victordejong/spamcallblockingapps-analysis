package kotlin.c.b.a;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;", "", "()V", "cache", "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "notOnJava9", "buildCache", "continuation", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getModuleName", "", "Cache", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static a f36632a;

    /* renamed from: b  reason: collision with root package name */
    public static final g f36633b = new g();

    /* renamed from: c  reason: collision with root package name */
    private static final a f36634c = new a(null, null, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "", "getModuleMethod", "Ljava/lang/reflect/Method;", "getDescriptorMethod", "nameMethod", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Method f36635a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f36636b;

        /* renamed from: c  reason: collision with root package name */
        public final Method f36637c;

        public a(Method method, Method method2, Method method3) {
            this.f36635a = method;
            this.f36636b = method2;
            this.f36637c = method3;
        }
    }

    private g() {
    }

    public static String a(kotlin.c.b.a.a continuation) {
        p.d(continuation, "continuation");
        a aVar = f36632a;
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = b(continuation);
        }
        Object invoke = null;
        if (aVar2 == f36634c) {
            return null;
        }
        Method method = aVar2.f36635a;
        String str = null;
        if (method != null) {
            Object invoke2 = method.invoke(continuation.getClass(), new Object[0]);
            if (invoke2 == null) {
                str = null;
            } else {
                Method method2 = aVar2.f36636b;
                str = null;
                if (method2 != null) {
                    Object invoke3 = method2.invoke(invoke2, new Object[0]);
                    if (invoke3 == null) {
                        str = null;
                    } else {
                        Method method3 = aVar2.f36637c;
                        invoke = method3 != null ? method3.invoke(invoke3, new Object[0]) : null;
                        if (!(invoke instanceof String)) {
                        }
                        str = (String) invoke;
                    }
                }
            }
        }
        return str;
    }

    private static a b(kotlin.c.b.a.a aVar) {
        try {
            a aVar2 = new a(Class.class.getDeclaredMethod("getModule", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f36632a = aVar2;
            return aVar2;
        } catch (Exception e) {
            a aVar3 = f36634c;
            f36632a = aVar3;
            return aVar3;
        }
    }
}
