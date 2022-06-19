package kotlin.p521c.p523b.p524a;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;", "", "()V", "cache", "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "notOnJava9", "buildCache", "continuation", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getModuleName", "", "Cache", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.b.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/g.class */
public final class C18322g {

    /* renamed from: a */
    public static C18323a f63425a;

    /* renamed from: b */
    public static final C18322g f63426b = new C18322g();

    /* renamed from: c */
    private static final C18323a f63427c = new C18323a(null, null, null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "", "getModuleMethod", "Ljava/lang/reflect/Method;", "getDescriptorMethod", "nameMethod", "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.b.a.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/g$a.class */
    public static final class C18323a {

        /* renamed from: a */
        public final Method f63428a;

        /* renamed from: b */
        public final Method f63429b;

        /* renamed from: c */
        public final Method f63430c;

        public C18323a(Method method, Method method2, Method method3) {
            this.f63428a = method;
            this.f63429b = method2;
            this.f63430c = method3;
        }
    }

    private C18322g() {
    }

    /* renamed from: a */
    public static String m4081a(AbstractC18316a continuation) {
        C18524p.m3840d(continuation, "continuation");
        C18323a c18323a = f63425a;
        C18323a c18323a2 = c18323a;
        if (c18323a == null) {
            c18323a2 = m4080b(continuation);
        }
        if (c18323a2 == f63427c) {
            return null;
        }
        Method method = c18323a2.f63428a;
        String str = null;
        if (method != null) {
            Object invoke = method.invoke(continuation.getClass(), new Object[0]);
            if (invoke == null) {
                str = null;
            } else {
                Method method2 = c18323a2.f63429b;
                str = null;
                if (method2 != null) {
                    Object invoke2 = method2.invoke(invoke, new Object[0]);
                    if (invoke2 == null) {
                        str = null;
                    } else {
                        Method method3 = c18323a2.f63430c;
                        String invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
                        if (!(invoke3 instanceof String)) {
                            invoke3 = null;
                        }
                        str = invoke3;
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: b */
    private static C18323a m4080b(AbstractC18316a abstractC18316a) {
        try {
            C18323a c18323a = new C18323a(Class.class.getDeclaredMethod("getModule", new Class[0]), abstractC18316a.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), abstractC18316a.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f63425a = c18323a;
            return c18323a;
        } catch (Exception e) {
            C18323a c18323a2 = f63427c;
            f63425a = c18323a2;
            return c18323a2;
        }
    }
}
