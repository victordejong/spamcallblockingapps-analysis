package p626l.p634w.p636k.p637a;

import java.lang.reflect.Method;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bÂ\u0002\u0018��2\u00020\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;", "", "()V", "cache", "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;", "notOnJava9", "buildCache", "continuation", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getModuleName", "", "Cache", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.w.k.a.i */
/* loaded from: classes3-dex2jar.jar:l/w/k/a/i.class */
public final class C15073i {

    /* renamed from: b */
    public static C15074a f33099b;

    /* renamed from: c */
    public static final C15073i f33100c = new C15073i();

    /* renamed from: a */
    public static final C15074a f33098a = new C15074a(null, null, null);

    /* renamed from: l.w.k.a.i$a */
    /* loaded from: classes3-dex2jar.jar:l/w/k/a/i$a.class */
    public static final class C15074a {

        /* renamed from: a */
        public final Method f33101a;

        /* renamed from: b */
        public final Method f33102b;

        /* renamed from: c */
        public final Method f33103c;

        public C15074a(Method method, Method method2, Method method3) {
            this.f33101a = method;
            this.f33102b = method2;
            this.f33103c = method3;
        }
    }

    /* renamed from: a */
    public final C15074a m461a(AbstractC15065a aVar) {
        try {
            C15074a aVar2 = new C15074a(Class.class.getDeclaredMethod("getModule", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), aVar.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f33099b = aVar2;
            return aVar2;
        } catch (Exception e) {
            C15074a aVar3 = f33098a;
            f33099b = aVar3;
            return aVar3;
        }
    }

    /* renamed from: b */
    public final String m460b(AbstractC15065a aVar) {
        Method method;
        Object invoke;
        Method method2;
        Object invoke2;
        C15149k.m377b(aVar, "continuation");
        C15074a aVar2 = f33099b;
        if (aVar2 == null) {
            aVar2 = m461a(aVar);
        }
        if (aVar2 == f33098a || (method = aVar2.f33101a) == null || (invoke = method.invoke(aVar.getClass(), new Object[0])) == null || (method2 = aVar2.f33102b) == null || (invoke2 = method2.invoke(invoke, new Object[0])) == null) {
            return null;
        }
        Method method3 = aVar2.f33103c;
        Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
        Object obj = invoke3;
        if (!(invoke3 instanceof String)) {
            obj = null;
        }
        return (String) obj;
    }
}
