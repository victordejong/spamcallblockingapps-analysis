package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.internal.C20295u;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H��ø\u0001��¢\u0006\u0002\u0010\u0007\u001aI\u0010\b\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012%\b\u0002\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nH��ø\u0001��¢\u0006\u0002\u0010\u0010\u001a.\u0010\b\u001a\u0004\u0018\u00010\u0004\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0012H��ø\u0001��¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, m4298d2 = {"recoverResult", "Lkotlin/Result;", "T", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "uCont", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toState", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "caller", "Lkotlinx/coroutines/CancellableContinuation;", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ac */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ac.class */
public final class C20137ac {
    /* renamed from: a */
    public static final <T> Object m1097a(Object obj, AbstractC18332d<? super T> abstractC18332d) {
        if (!(obj instanceof C20322z)) {
            C18539o.C18540a c18540a = C18539o.f63626a;
            return C18539o.m3836d(obj);
        }
        C18539o.C18540a c18540a2 = C18539o.f63626a;
        Throwable th = ((C20322z) obj).f66802b;
        Throwable th2 = th;
        if (C20159ao.m1081c()) {
            th2 = !(abstractC18332d instanceof AbstractC18319d) ? th : C20295u.m816a(th, (AbstractC18319d) abstractC18332d);
        }
        return C18539o.m3836d(C18542p.m3834a(th2));
    }

    /* renamed from: a */
    public static final <T> Object m1096a(Object obj, Function1<? super Throwable, C20128v> function1) {
        Throwable m3837c = C18539o.m3837c(obj);
        return m3837c == null ? function1 != null ? new C20135aa(obj, function1) : obj : new C20322z(m3837c, false, 2, null);
    }
}
