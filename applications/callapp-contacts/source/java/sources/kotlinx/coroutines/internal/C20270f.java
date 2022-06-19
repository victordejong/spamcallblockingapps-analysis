package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.AbstractC20140af;
import kotlinx.coroutines.AbstractC20170ax;
import kotlinx.coroutines.AbstractC20196bf;
import kotlinx.coroutines.AbstractC20218bv;
import kotlinx.coroutines.C20137ac;
import kotlinx.coroutines.C20139ae;
import kotlinx.coroutines.C20159ao;
import kotlinx.coroutines.C20245cn;
import kotlinx.coroutines.C20250cs;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\b\u001aU\u0010\u0011\u001a\u00020\u0010\"\u0004\b��\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u00152%\b\u0002\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0017H\u0007ø\u0001��¢\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00100\bH��\"\u0016\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, m4298d2 = {"REUSABLE_CLAIMED", "Lkotlinx/coroutines/internal/Symbol;", "getREUSABLE_CLAIMED$annotations", "()V", "UNDEFINED", "getUNDEFINED$annotations", "executeUnconfined", "", "Lkotlinx/coroutines/internal/DispatchedContinuation;", "contState", "", "mode", "", "doYield", "block", "Lkotlin/Function0;", "", "resumeCancellableWith", "T", "Lkotlin/coroutines/Continuation;", "result", "Lkotlin/Result;", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "yieldUndispatched", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.f */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/f.class */
public final class C20270f {

    /* renamed from: b */
    private static final C20296v f66734b = new C20296v("UNDEFINED");

    /* renamed from: a */
    public static final C20296v f66733a = new C20296v("REUSABLE_CLAIMED");

    /* renamed from: a */
    public static final <T> void m873a(AbstractC18332d<? super T> abstractC18332d, Object obj, Function1<? super Throwable, C20128v> function1) {
        boolean z;
        if (!(abstractC18332d instanceof C20269e)) {
            abstractC18332d.mo786b(obj);
            return;
        }
        C20269e c20269e = (C20269e) abstractC18332d;
        Object m1096a = C20137ac.m1096a(obj, function1);
        AbstractC20140af abstractC20140af = c20269e.f66731e;
        c20269e.mo787b();
        if (abstractC20140af.mo824b()) {
            c20269e.f66729a = m1096a;
            c20269e.f66574b = 1;
            c20269e.f66731e.mo763a(c20269e.mo787b(), c20269e);
            return;
        }
        C20159ao.m1083a();
        C20245cn c20245cn = C20245cn.f66700a;
        AbstractC20196bf m913a = C20245cn.m913a();
        if (m913a.m1007g()) {
            c20269e.f66729a = m1096a;
            c20269e.f66574b = 1;
            m913a.m1014a((AbstractC20170ax<?>) c20269e);
            return;
        }
        C20269e c20269e2 = c20269e;
        m913a.m1012a(true);
        try {
            AbstractC20218bv abstractC20218bv = (AbstractC20218bv) c20269e.mo787b().get(AbstractC20218bv.f66666c);
            if (abstractC20218bv == null || abstractC20218bv.mo949e()) {
                z = false;
            } else {
                CancellationException mo938m = abstractC20218bv.mo938m();
                c20269e.mo796a(m1096a, mo938m);
                C18539o.C18540a c18540a = C18539o.f63626a;
                c20269e.mo786b(C18539o.m3836d(C18542p.m3834a((Throwable) mo938m)));
                z = true;
            }
            if (!z) {
                AbstractC18332d<T> abstractC18332d2 = c20269e.f66732f;
                Object obj2 = c20269e.f66730c;
                AbstractC18335f mo787b = abstractC18332d2.mo787b();
                Object m805a = C20300z.m805a(mo787b, obj2);
                C20250cs<?> m1093a = m805a != C20300z.f66775a ? C20139ae.m1093a(abstractC18332d2, mo787b, m805a) : null;
                c20269e.f66732f.mo786b(obj);
                C20128v c20128v = C20128v.f66529a;
                if (m1093a == null || m1093a.m906r()) {
                    C20300z.m804b(mo787b, m805a);
                }
            }
            do {
            } while (m913a.m1008f());
        } catch (Throwable th) {
            try {
                c20269e2.m1067a(th, (Throwable) null);
            } finally {
                m913a.m1010b(true);
            }
        }
    }
}
