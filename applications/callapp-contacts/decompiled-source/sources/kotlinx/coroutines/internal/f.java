package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.jvm.functions.Function1;
import kotlin.o;
import kotlin.p;
import kotlin.v;
import kotlinx.coroutines.ac;
import kotlinx.coroutines.ae;
import kotlinx.coroutines.af;
import kotlinx.coroutines.ao;
import kotlinx.coroutines.ax;
import kotlinx.coroutines.bf;
import kotlinx.coroutines.bv;
import kotlinx.coroutines.cn;
import kotlinx.coroutines.cs;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00072\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\b\u001aU\u0010\u0011\u001a\u00020\u0010\"\u0004\b��\u0010\u0012*\b\u0012\u0004\u0012\u0002H\u00120\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00120\u00152%\b\u0002\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0017H\u0007ø\u0001��¢\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00100\bH��\"\u0016\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"REUSABLE_CLAIMED", "Lkotlinx/coroutines/internal/Symbol;", "getREUSABLE_CLAIMED$annotations", "()V", "UNDEFINED", "getUNDEFINED$annotations", "executeUnconfined", "", "Lkotlinx/coroutines/internal/DispatchedContinuation;", "contState", "", "mode", "", "doYield", "block", "Lkotlin/Function0;", "", "resumeCancellableWith", "T", "Lkotlin/coroutines/Continuation;", "result", "Lkotlin/Result;", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "yieldUndispatched", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/f.class */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static final v f38811b = new v("UNDEFINED");

    /* renamed from: a  reason: collision with root package name */
    public static final v f38810a = new v("REUSABLE_CLAIMED");

    public static final <T> void a(d<? super T> dVar, Object obj, Function1<? super Throwable, v> function1) {
        boolean z;
        if (dVar instanceof e) {
            e eVar = (e) dVar;
            Object a2 = ac.a(obj, function1);
            af afVar = eVar.e;
            eVar.b();
            if (afVar.b()) {
                eVar.f38808a = a2;
                eVar.f38696b = 1;
                eVar.e.a(eVar.b(), eVar);
                return;
            }
            ao.a();
            cn cnVar = cn.f38784a;
            bf a3 = cn.a();
            if (a3.g()) {
                eVar.f38808a = a2;
                eVar.f38696b = 1;
                a3.a((ax<?>) eVar);
                return;
            }
            e eVar2 = eVar;
            a3.a(true);
            try {
                bv bvVar = (bv) eVar.b().get(bv.f38758c);
                if (bvVar == null || bvVar.e()) {
                    z = false;
                } else {
                    CancellationException m = bvVar.m();
                    eVar.a(a2, m);
                    o.a aVar = o.f36812a;
                    eVar.b(o.d(p.a((Throwable) m)));
                    z = true;
                }
                if (!z) {
                    d<T> dVar2 = eVar.f;
                    Object obj2 = eVar.f38809c;
                    kotlin.c.f b2 = dVar2.b();
                    Object a4 = z.a(b2, obj2);
                    cs<?> a5 = a4 != z.f38845a ? ae.a(dVar2, b2, a4) : null;
                    eVar.f.b(obj);
                    v vVar = v.f38654a;
                    if (a5 == null || a5.r()) {
                        z.b(b2, a4);
                    }
                }
                do {
                } while (a3.f());
            } catch (Throwable th) {
                try {
                    eVar2.a(th, (Throwable) null);
                } finally {
                    a3.b(true);
                }
            }
        } else {
            dVar.b(obj);
        }
    }
}
