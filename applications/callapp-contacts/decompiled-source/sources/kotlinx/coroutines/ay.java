package kotlinx.coroutines;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.f;
import kotlin.o;
import kotlin.p;
import kotlin.v;
import kotlinx.coroutines.internal.e;
import kotlinx.coroutines.internal.z;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a \u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\u0006\u0010\u0010\u001a\u00020\u0001H��\u001a.\u0010\u0011\u001a\u00020\r\"\u0004\b��\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u00132\u0006\u0010\u0014\u001a\u00020\tH��\u001a\u0010\u0010\u0015\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u000fH\u0002\u001a\u0019\u0010\u0016\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\b\u001a'\u0010\u0019\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u001dH\u0080\b\"\u000e\u0010��\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0016\u0010\u0002\u001a\u00020\u00018��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u0003\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0018\u0010\b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\n\"\u0018\u0010\u000b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001e"}, d2 = {"MODE_ATOMIC", "", "MODE_CANCELLABLE", "getMODE_CANCELLABLE$annotations", "()V", "MODE_CANCELLABLE_REUSABLE", "MODE_UNDISPATCHED", "MODE_UNINITIALIZED", "isCancellableMode", "", "(I)Z", "isReusableMode", "dispatch", "", "T", "Lkotlinx/coroutines/DispatchedTask;", "mode", "resume", "delegate", "Lkotlin/coroutines/Continuation;", "undispatched", "resumeUnconfined", "resumeWithStackTrace", "exception", "", "runUnconfinedEventLoop", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "block", "Lkotlin/Function0;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ay.class */
public final class ay {
    private static final void a(ax<?> axVar) {
        cn cnVar = cn.f38784a;
        bf a2 = cn.a();
        if (a2.g()) {
            a2.a(axVar);
            return;
        }
        a2.a(true);
        try {
            a(axVar, axVar.k(), true);
            do {
            } while (a2.f());
        } catch (Throwable th) {
            try {
                axVar.a(th, (Throwable) null);
            } finally {
                a2.b(true);
            }
        }
    }

    public static final <T> void a(ax<? super T> axVar, int i) {
        boolean z = true;
        if (ao.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        d<? super T> k = axVar.k();
        if (i != 4) {
            z = false;
        }
        if (z || !(k instanceof e) || a(i) != a(axVar.f38696b)) {
            a(axVar, k, z);
            return;
        }
        af afVar = ((e) k).e;
        f b2 = k.b();
        if (afVar.b()) {
            afVar.a(b2, axVar);
        } else {
            a(axVar);
        }
    }

    private static <T> void a(ax<? super T> axVar, d<? super T> dVar, boolean z) {
        Object obj;
        Object f = axVar.f();
        Throwable d2 = axVar.d(f);
        if (d2 != null) {
            o.a aVar = o.f36812a;
            obj = p.a(d2);
        } else {
            o.a aVar2 = o.f36812a;
            obj = axVar.c(f);
        }
        Object d3 = o.d(obj);
        if (z) {
            Objects.requireNonNull(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
            e eVar = (e) dVar;
            d<T> dVar2 = eVar.f;
            Object obj2 = eVar.f38809c;
            f b2 = dVar2.b();
            Object a2 = z.a(b2, obj2);
            cs<?> a3 = a2 != z.f38845a ? ae.a(dVar2, b2, a2) : null;
            try {
                eVar.f.b(d3);
                v vVar = v.f38654a;
                if (a3 == null || a3.r()) {
                    z.b(b2, a2);
                }
            } catch (Throwable th) {
                if (a3 == null || a3.r()) {
                    z.b(b2, a2);
                }
                throw th;
            }
        } else {
            dVar.b(d3);
        }
    }

    public static final boolean a(int i) {
        return i == 1 || i == 2;
    }

    public static final boolean b(int i) {
        return i == 2;
    }
}
