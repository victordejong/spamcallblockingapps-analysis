package p033i.p064c.p066b0.p073e.p078f.p082d;

import i.c.b0.e.a.d;
import i.c.b0.e.f.c.q;
import i.c.b0.e.f.f.v;
import java.util.Objects;
import p033i.p064c.p066b0.p070b.AbstractC0453c0;
import p033i.p064c.p066b0.p070b.AbstractC0458g;
import p033i.p064c.p066b0.p070b.AbstractC0462i;
import p033i.p064c.p066b0.p070b.AbstractC0463i0;
import p033i.p064c.p066b0.p070b.AbstractC0471t;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
import p033i.p064c.p066b0.p072d.AbstractC0495q;
/* renamed from: i.c.b0.e.f.d.h */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/d/h.class */
final class C0507h {
    /* renamed from: a */
    static <T> boolean m6a(Object obj, AbstractC0493o<? super T, ? extends AbstractC0462i> oVar, AbstractC0458g gVar) {
        if (!(obj instanceof AbstractC0495q)) {
            return false;
        }
        AbstractC0495q qVar = (AbstractC0495q) obj;
        AbstractC0462i iVar = null;
        Object obj2 = (Object) qVar.get();
        if (obj2 != 0) {
            Object apply = oVar.apply(obj2);
            Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
            iVar = (AbstractC0462i) apply;
        }
        if (iVar == null) {
            d.complete(gVar);
            return true;
        }
        iVar.m86a(gVar);
        return true;
    }

    /* renamed from: b */
    static <T, R> boolean m5b(Object obj, AbstractC0493o<? super T, ? extends AbstractC0471t<? extends R>> oVar, AbstractC0453c0<? super R> c0Var) {
        if (!(obj instanceof AbstractC0495q)) {
            return false;
        }
        AbstractC0495q qVar = (AbstractC0495q) obj;
        AbstractC0471t tVar = null;
        Object obj2 = (Object) qVar.get();
        if (obj2 != 0) {
            Object apply = oVar.apply(obj2);
            Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
            tVar = (AbstractC0471t) apply;
        }
        if (tVar == null) {
            d.complete(c0Var);
            return true;
        }
        tVar.m80a(q.a(c0Var));
        return true;
    }

    /* renamed from: c */
    static <T, R> boolean m4c(Object obj, AbstractC0493o<? super T, ? extends AbstractC0463i0<? extends R>> oVar, AbstractC0453c0<? super R> c0Var) {
        if (!(obj instanceof AbstractC0495q)) {
            return false;
        }
        AbstractC0495q qVar = (AbstractC0495q) obj;
        AbstractC0463i0 i0Var = null;
        Object obj2 = (Object) qVar.get();
        if (obj2 != 0) {
            Object apply = oVar.apply(obj2);
            Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
            i0Var = (AbstractC0463i0) apply;
        }
        if (i0Var == null) {
            d.complete(c0Var);
            return true;
        }
        i0Var.m85a(v.a(c0Var));
        return true;
    }
}
