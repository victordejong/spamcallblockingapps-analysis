package kotlinx.coroutines;

import java.util.Objects;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.internal.C20269e;
import kotlinx.coroutines.internal.C20300z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a \u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\u0006\u0010\u0010\u001a\u00020\u0001H��\u001a.\u0010\u0011\u001a\u00020\r\"\u0004\b��\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u000e0\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u00132\u0006\u0010\u0014\u001a\u00020\tH��\u001a\u0010\u0010\u0015\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u000fH\u0002\u001a\u0019\u0010\u0016\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\b\u001a'\u0010\u0019\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\r0\u001dH\u0080\b\"\u000e\u0010��\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0016\u0010\u0002\u001a\u00020\u00018��X\u0081T¢\u0006\b\n��\u0012\u0004\b\u0003\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u0018\u0010\b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\n\"\u0018\u0010\u000b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001e"}, m4298d2 = {"MODE_ATOMIC", "", "MODE_CANCELLABLE", "getMODE_CANCELLABLE$annotations", "()V", "MODE_CANCELLABLE_REUSABLE", "MODE_UNDISPATCHED", "MODE_UNINITIALIZED", "isCancellableMode", "", "(I)Z", "isReusableMode", "dispatch", "", "T", "Lkotlinx/coroutines/DispatchedTask;", "mode", "resume", "delegate", "Lkotlin/coroutines/Continuation;", "undispatched", "resumeUnconfined", "resumeWithStackTrace", "exception", "", "runUnconfinedEventLoop", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "block", "Lkotlin/Function0;", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ay */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ay.class */
public final class C20171ay {
    /* renamed from: a */
    private static final void m1065a(AbstractC20170ax<?> abstractC20170ax) {
        C20245cn c20245cn = C20245cn.f66700a;
        AbstractC20196bf m913a = C20245cn.m913a();
        if (m913a.m1007g()) {
            m913a.m1014a(abstractC20170ax);
            return;
        }
        m913a.m1012a(true);
        try {
            m1063a(abstractC20170ax, abstractC20170ax.mo774k(), true);
            do {
            } while (m913a.m1008f());
        } catch (Throwable th) {
            try {
                abstractC20170ax.m1067a(th, (Throwable) null);
            } finally {
                m913a.m1010b(true);
            }
        }
    }

    /* renamed from: a */
    public static final <T> void m1064a(AbstractC20170ax<? super T> abstractC20170ax, int i) {
        boolean z = true;
        if (C20159ao.m1083a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        AbstractC18332d<? super T> mo774k = abstractC20170ax.mo774k();
        if (i != 4) {
            z = false;
        }
        if (z || !(mo774k instanceof C20269e) || m1066a(i) != m1066a(abstractC20170ax.f66574b)) {
            m1063a(abstractC20170ax, mo774k, z);
            return;
        }
        AbstractC20140af abstractC20140af = ((C20269e) mo774k).f66731e;
        AbstractC18335f mo787b = mo774k.mo787b();
        if (abstractC20140af.mo824b()) {
            abstractC20140af.mo763a(mo787b, abstractC20170ax);
        } else {
            m1065a(abstractC20170ax);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static <T> void m1063a(AbstractC20170ax<? super T> abstractC20170ax, AbstractC18332d<? super T> abstractC18332d, boolean z) {
        T t;
        Object mo779f = abstractC20170ax.mo779f();
        Throwable mo781d = abstractC20170ax.mo781d(mo779f);
        if (mo781d != null) {
            C18539o.C18540a c18540a = C18539o.f63626a;
            t = C18542p.m3834a(mo781d);
        } else {
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            t = abstractC20170ax.mo783c(mo779f);
        }
        Object m3836d = C18539o.m3836d(t);
        if (!z) {
            abstractC18332d.mo786b(m3836d);
            return;
        }
        Objects.requireNonNull(abstractC18332d, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
        C20269e c20269e = (C20269e) abstractC18332d;
        AbstractC18332d<T> abstractC18332d2 = c20269e.f66732f;
        Object obj = c20269e.f66730c;
        AbstractC18335f mo787b = abstractC18332d2.mo787b();
        Object m805a = C20300z.m805a(mo787b, obj);
        C20250cs<?> m1093a = m805a != C20300z.f66775a ? C20139ae.m1093a(abstractC18332d2, mo787b, m805a) : null;
        try {
            c20269e.f66732f.mo786b(m3836d);
            C20128v c20128v = C20128v.f66529a;
            if (m1093a != null && !m1093a.m906r()) {
                return;
            }
            C20300z.m804b(mo787b, m805a);
        } catch (Throwable th) {
            if (m1093a == null || m1093a.m906r()) {
                C20300z.m804b(mo787b, m805a);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static final boolean m1066a(int i) {
        return i == 1 || i == 2;
    }

    /* renamed from: b */
    public static final boolean m1062b(int i) {
        return i == 2;
    }
}
