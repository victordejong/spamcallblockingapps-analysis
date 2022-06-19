package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18333e;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"kotlinx/coroutines/BuildersKt__BuildersKt", "kotlinx/coroutines/BuildersKt__Builders_commonKt"}, m4297k = 4, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.h */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/h.class */
public final class C20260h {
    /* renamed from: a */
    public static final <T> T m902a(AbstractC18335f abstractC18335f, Function2<? super AbstractC20149ak, ? super AbstractC18332d<? super T>, ? extends Object> function2) throws InterruptedException {
        AbstractC20196bf abstractC20196bf;
        AbstractC18335f abstractC18335f2;
        Thread currentThread = Thread.currentThread();
        if (((AbstractC18333e) abstractC18335f.get(AbstractC18333e.f63440a)) == null) {
            C20245cn c20245cn = C20245cn.f66700a;
            abstractC20196bf = C20245cn.m913a();
            abstractC18335f2 = C20139ae.m1091a(C20211bo.f66659a, abstractC18335f.plus(abstractC20196bf));
        } else {
            C20245cn c20245cn2 = C20245cn.f66700a;
            abstractC20196bf = C20245cn.m911b();
            abstractC18335f2 = C20139ae.m1091a(C20211bo.f66659a, abstractC18335f);
        }
        C20257f c20257f = new C20257f(abstractC18335f2, currentThread, abstractC20196bf);
        c20257f.m1101a(EnumC20150al.DEFAULT, (EnumC20150al) c20257f, (Function2<? super EnumC20150al, ? super AbstractC18332d<? super T>, ? extends Object>) function2);
        return (T) c20257f.m904d();
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC20163as m900a(AbstractC20149ak abstractC20149ak, AbstractC18335f abstractC18335f, Function2 function2, int i) {
        return C20304j.m802b(abstractC20149ak, abstractC18335f, null, function2, i);
    }

    /* renamed from: a */
    public static final <T> AbstractC20163as<T> m899a(AbstractC20149ak abstractC20149ak, AbstractC18335f abstractC18335f, EnumC20150al enumC20150al, Function2<? super AbstractC20149ak, ? super AbstractC18332d<? super T>, ? extends Object> function2) {
        AbstractC18335f m1091a = C20139ae.m1091a(abstractC20149ak, abstractC18335f);
        C20234cc c20234cc = enumC20150al.isLazy() ? new C20234cc(m1091a, function2) : new C20164at(m1091a, true);
        c20234cc.m1101a(enumC20150al, (EnumC20150al) c20234cc, (Function2<? super EnumC20150al, ? super AbstractC18332d<? super T>, ? extends Object>) function2);
        return c20234cc;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC20218bv m901a(AbstractC20149ak abstractC20149ak, AbstractC18335f abstractC18335f, Function2 function2) {
        AbstractC20218bv m898b;
        m898b = m898b(abstractC20149ak, abstractC18335f, EnumC20150al.DEFAULT, function2);
        return m898b;
    }

    /* renamed from: b */
    public static final AbstractC20218bv m898b(AbstractC20149ak abstractC20149ak, AbstractC18335f abstractC18335f, EnumC20150al enumC20150al, Function2<? super AbstractC20149ak, ? super AbstractC18332d<? super C20128v>, ? extends Object> function2) {
        AbstractC18335f m1091a = C20139ae.m1091a(abstractC20149ak, abstractC18335f);
        C20235cd c20235cd = enumC20150al.isLazy() ? new C20235cd(m1091a, function2) : new C20243cl(m1091a, true);
        c20235cd.m1101a(enumC20150al, (EnumC20150al) c20235cd, (Function2<? super EnumC20150al, ? super AbstractC18332d<? super T>, ? extends Object>) function2);
        return c20235cd;
    }
}
