package kotlinx.coroutines.p569a;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18501ah;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p522a.EnumC18307a;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.C20159ao;
import kotlinx.coroutines.C20233cb;
import kotlinx.coroutines.C20322z;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.internal.C20294t;
import kotlinx.coroutines.internal.C20295u;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u001a9\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\u001a\u0010\u0005\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0082\b\u001a>\u0010\b\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\t\u001aR\u0010\b\u001a\u00020\u0001\"\u0004\b��\u0010\n\"\u0004\b\u0001\u0010\u0002*\u001e\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b2\u0006\u0010\f\u001a\u0002H\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\r\u001a>\u0010\u000e\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\t\u001aR\u0010\u000e\u001a\u00020\u0001\"\u0004\b��\u0010\n\"\u0004\b\u0001\u0010\u0002*\u001e\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b2\u0006\u0010\f\u001a\u0002H\n2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H��ø\u0001��¢\u0006\u0002\u0010\r\u001aY\u0010\u000f\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\f\u001a\u0002H\n2'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b¢\u0006\u0002\b\u0011H��ø\u0001��¢\u0006\u0002\u0010\u0012\u001aY\u0010\u0013\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\n*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\f\u001a\u0002H\n2'\u0010\u0005\u001a#\b\u0001\u0012\u0004\u0012\u0002H\n\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b¢\u0006\u0002\b\u0011H��ø\u0001��¢\u0006\u0002\u0010\u0012\u001a?\u0010\u0014\u001a\u0004\u0018\u00010\u0007\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00062\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0019H\u0082\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m4298d2 = {"startDirect", "", "T", "completion", "Lkotlin/coroutines/Continuation;", "block", "Lkotlin/Function1;", "", "startCoroutineUndispatched", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "startCoroutineUnintercepted", "startUndispatchedOrReturn", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/internal/ScopeCoroutine;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "startUndispatchedOrReturnIgnoreTimeout", "undispatchedResult", "shouldThrow", "", "", "startBlock", "Lkotlin/Function0;", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.a.b */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/a/b.class */
public final class C20134b {
    /* renamed from: a */
    public static final <T, R> Object m1098a(C20294t<? super T> c20294t, R r, Function2<? super R, ? super AbstractC18332d<? super T>, ? extends Object> function2) {
        Object obj;
        Object f;
        c20294t.m1100f();
        boolean z = false;
        try {
            obj = ((Function2) C18501ah.m3876a(function2, 2)).invoke(r, c20294t);
        } catch (Throwable th) {
            obj = new C20322z(th, false, 2, null);
        }
        if (obj != EnumC18307a.COROUTINE_SUSPENDED && (f = c20294t.m947f(obj)) != C20233cb.f66687a) {
            if (!(f instanceof C20322z)) {
                return C20233cb.m927b(f);
            }
            C20322z c20322z = (C20322z) f;
            Throwable th2 = c20322z.f66802b;
            if (!(th2 instanceof TimeoutCancellationException) || ((TimeoutCancellationException) th2).f66537a != c20294t) {
                z = true;
            }
            if (z) {
                Throwable th3 = c20322z.f66802b;
                AbstractC18332d<? super T> abstractC18332d = c20294t.f66770g;
                Throwable th4 = th3;
                if (C20159ao.m1081c()) {
                    th4 = !(abstractC18332d instanceof AbstractC18319d) ? th3 : C20295u.m816a(th3, (AbstractC18319d) abstractC18332d);
                }
                throw th4;
            } else if (!(obj instanceof C20322z)) {
                return obj;
            } else {
                Throwable th5 = ((C20322z) obj).f66802b;
                AbstractC18332d<? super T> abstractC18332d2 = c20294t.f66770g;
                Throwable th6 = th5;
                if (C20159ao.m1081c()) {
                    th6 = !(abstractC18332d2 instanceof AbstractC18319d) ? th5 : C20295u.m816a(th5, (AbstractC18319d) abstractC18332d2);
                }
                throw th6;
            }
        }
        return EnumC18307a.COROUTINE_SUSPENDED;
    }
}
