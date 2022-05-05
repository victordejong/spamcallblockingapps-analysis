package p033i.p064c.p066b0.p073e.p078f.p083e;

import i.c.b0.b.v;
import i.c.b0.e.a.d;
import i.c.b0.h.a;
import java.util.Objects;
import p033i.p064c.p066b0.p070b.AbstractC0449a0;
import p033i.p064c.p066b0.p070b.AbstractC0453c0;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
import p033i.p064c.p066b0.p072d.AbstractC0495q;
/* renamed from: i.c.b0.e.f.e.b3 */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/b3.class */
public final class C0509b3 {
    /* renamed from: a */
    public static <T, U> v<U> m3a(T t, AbstractC0493o<? super T, ? extends AbstractC0449a0<? extends U>> oVar) {
        return a.o(new b(t, oVar));
    }

    /* renamed from: b */
    public static <T, R> boolean m2b(AbstractC0449a0<T> a0Var, AbstractC0453c0<? super R> c0Var, AbstractC0493o<? super T, ? extends AbstractC0449a0<? extends R>> oVar) {
        if (!(a0Var instanceof AbstractC0495q)) {
            return false;
        }
        Object obj = (Object) ((AbstractC0495q) a0Var).get();
        if (obj == 0) {
            d.complete(c0Var);
            return true;
        }
        Object apply = oVar.apply(obj);
        Objects.requireNonNull(apply, "The mapper returned a null ObservableSource");
        AbstractC0449a0 a0Var2 = (AbstractC0449a0) apply;
        if (a0Var2 instanceof AbstractC0495q) {
            Object obj2 = ((AbstractC0495q) a0Var2).get();
            if (obj2 == null) {
                d.complete(c0Var);
                return true;
            }
            a aVar = new a(c0Var, obj2);
            c0Var.onSubscribe(aVar);
            aVar.run();
            return true;
        }
        a0Var2.subscribe(c0Var);
        return true;
    }
}
