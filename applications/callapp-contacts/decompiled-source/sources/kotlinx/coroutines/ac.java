package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.jvm.functions.Function1;
import kotlin.o;
import kotlin.p;
import kotlin.v;
import kotlinx.coroutines.internal.u;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H��ø\u0001��¢\u0006\u0002\u0010\u0007\u001aI\u0010\b\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012%\b\u0002\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nH��ø\u0001��¢\u0006\u0002\u0010\u0010\u001a.\u0010\b\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0012H��ø\u0001��¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"recoverResult", "Lkotlin/Result;", "T", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "uCont", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toState", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "caller", "Lkotlinx/coroutines/CancellableContinuation;", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ac.class */
public final class ac {
    public static final <T> Object a(Object obj, d<? super T> dVar) {
        if (obj instanceof z) {
            o.a aVar = o.f36812a;
            Throwable th = ((z) obj).f38868b;
            Throwable th2 = th;
            if (ao.c()) {
                th2 = !(dVar instanceof kotlin.c.b.a.d) ? th : u.a(th, (kotlin.c.b.a.d) dVar);
            }
            return o.d(p.a(th2));
        }
        o.a aVar2 = o.f36812a;
        return o.d(obj);
    }

    public static final <T> Object a(Object obj, Function1<? super Throwable, v> function1) {
        Throwable c2 = o.c(obj);
        return c2 == null ? function1 != null ? new aa(obj, function1) : obj : new z(c2, false, 2, null);
    }
}
