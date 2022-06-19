package p1727n3.p1751c0;

import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.Callable;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.h1;
import q3.a.j0;
import q3.a.o;
import q3.a.x2.d1;
import q3.a.x2.f;
import s1.w.d;
import s1.w.e;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: n3.c0.g */
/* loaded from: classes-dex2jar.jar:n3/c0/g.class */
public final class C25650g {
    /* renamed from: a */
    public static final <R> f<R> m3096a(AbstractC25677q abstractC25677q, boolean z, String[] strArr, Callable<R> callable) {
        l.e(abstractC25677q, "db");
        l.e(strArr, "tableNames");
        l.e(callable, "callable");
        return new d1(new c(strArr, z, abstractC25677q, callable, (d) null));
    }

    /* renamed from: b */
    public static final <R> Object m3095b(AbstractC25677q abstractC25677q, boolean z, CancellationSignal cancellationSignal, Callable<R> callable, d<? super R> dVar) {
        Object obj;
        s1.w.f fVar;
        if (!abstractC25677q.isOpen() || !abstractC25677q.inTransaction()) {
            d0 d0Var = dVar.getContext().get(d0.d);
            s1.w.f m43321A0 = (d0Var == null || (fVar = d0Var.c) == null) ? z ? MediaSessionCompat.m43321A0(abstractC25677q) : MediaSessionCompat.m43195u0(abstractC25677q) : fVar;
            o oVar = new o(C25225a.m3844s1(dVar), 1);
            oVar.z();
            oVar.r(new e(s1.a.a.a.v0.f.d.w2(h1.a, m43321A0, (j0) null, new d(oVar, (d) null, m43321A0, callable, cancellationSignal), 2, (Object) null), m43321A0, callable, cancellationSignal));
            Object y = oVar.y();
            obj = y;
            if (y == a.a) {
                l.e(dVar, "frame");
                obj = y;
            }
        } else {
            obj = callable.call();
        }
        return obj;
    }

    /* renamed from: c */
    public static final <R> Object m3094c(AbstractC25677q abstractC25677q, boolean z, Callable<R> callable, d<? super R> dVar) {
        Object obj;
        e eVar;
        if (!abstractC25677q.isOpen() || !abstractC25677q.inTransaction()) {
            d0 d0Var = dVar.getContext().get(d0.d);
            obj = s1.a.a.a.v0.f.d.a4((d0Var == null || (eVar = d0Var.c) == null) ? z ? MediaSessionCompat.m43321A0(abstractC25677q) : MediaSessionCompat.m43195u0(abstractC25677q) : eVar, new f(callable, (d) null), dVar);
        } else {
            obj = callable.call();
        }
        return obj;
    }
}
