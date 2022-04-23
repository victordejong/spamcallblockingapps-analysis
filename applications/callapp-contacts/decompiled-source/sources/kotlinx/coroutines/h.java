package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.e;
import kotlin.c.f;
import kotlin.jvm.functions.Function2;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/BuildersKt__BuildersKt", "kotlinx/coroutines/BuildersKt__Builders_commonKt"}, k = 4, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/h.class */
public final class h {
    public static final <T> T a(f fVar, Function2<? super ak, ? super d<? super T>, ? extends Object> function2) throws InterruptedException {
        bf bfVar;
        f fVar2;
        Thread currentThread = Thread.currentThread();
        if (((e) fVar.get(e.f36647a)) == null) {
            cn cnVar = cn.f38784a;
            bfVar = cn.a();
            fVar2 = ae.a(bo.f38751a, fVar.plus(bfVar));
        } else {
            cn cnVar2 = cn.f38784a;
            bfVar = cn.b();
            fVar2 = ae.a(bo.f38751a, fVar);
        }
        f fVar3 = new f(fVar2, currentThread, bfVar);
        fVar3.a(al.DEFAULT, (al) fVar3, (Function2<? super al, ? super d<? super T>, ? extends Object>) function2);
        return (T) fVar3.d();
    }

    public static /* synthetic */ as a(ak akVar, f fVar, Function2 function2, int i) {
        return j.b(akVar, fVar, null, function2, i);
    }

    public static final <T> as<T> a(ak akVar, f fVar, al alVar, Function2<? super ak, ? super d<? super T>, ? extends Object> function2) {
        f a2 = ae.a(akVar, fVar);
        cc ccVar = alVar.isLazy() ? new cc(a2, function2) : new at(a2, true);
        ccVar.a(alVar, (al) ccVar, (Function2<? super al, ? super d<? super T>, ? extends Object>) function2);
        return ccVar;
    }

    public static /* synthetic */ bv a(ak akVar, f fVar, Function2 function2) {
        bv b2;
        b2 = b(akVar, fVar, al.DEFAULT, function2);
        return b2;
    }

    public static final bv b(ak akVar, f fVar, al alVar, Function2<? super ak, ? super d<? super v>, ? extends Object> function2) {
        f a2 = ae.a(akVar, fVar);
        cd cdVar = alVar.isLazy() ? new cd(a2, function2) : new cl(a2, true);
        cdVar.a(alVar, (al) cdVar, (Function2<? super al, ? super d<? super T>, ? extends Object>) function2);
        return cdVar;
    }
}
