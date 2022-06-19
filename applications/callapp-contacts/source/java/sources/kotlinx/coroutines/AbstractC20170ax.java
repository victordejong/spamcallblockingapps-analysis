package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.CancellationException;
import kotlin.C18298b;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.internal.C20269e;
import kotlinx.coroutines.internal.C20295u;
import kotlinx.coroutines.internal.C20300z;
import kotlinx.coroutines.p570b.AbstractC20187k;
import kotlinx.coroutines.p570b.AbstractRunnableC20186j;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u000e\b \u0018��*\u0006\b��\u0010\u0001 ��2\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010¢\u0006\u0002\b\u0014J\u001f\u0010\u0015\u001a\u0002H\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0018\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001b\u001a\u00020\fJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000eH ¢\u0006\u0002\b\u001dR\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\bX \u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, m4298d2 = {"Lkotlinx/coroutines/DispatchedTask;", "T", "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "resumeMode", "", "(I)V", "delegate", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "cancelCompletedResult", "", "takenState", "", "cause", "", "cancelCompletedResult$kotlinx_coroutines_core", "getExceptionalResult", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "getExceptionalResult$kotlinx_coroutines_core", "getSuccessfulResult", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "handleFatalException", "exception", "finallyException", "run", "takeState", "takeState$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ax */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ax.class */
public abstract class AbstractC20170ax<T> extends AbstractRunnableC20186j {

    /* renamed from: b */
    public int f66574b;

    public AbstractC20170ax(int i) {
        this.f66574b = i;
    }

    /* renamed from: a */
    public void mo796a(Object obj, Throwable th) {
    }

    /* renamed from: a */
    public final void m1067a(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            C18298b.m4101a(th, th2);
        }
        Throwable th3 = th;
        if (th == null) {
            th3 = th2;
        }
        C18524p.m3851a((Object) th3);
        C20144ah.m1086a(mo774k().mo787b(), new C20152an("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public <T> T mo783c(Object obj) {
        return obj;
    }

    /* renamed from: d */
    public Throwable mo781d(Object obj) {
        Object obj2 = obj;
        if (!(obj instanceof C20322z)) {
            obj2 = null;
        }
        C20322z c20322z = (C20322z) obj2;
        if (c20322z != null) {
            return c20322z.f66802b;
        }
        return null;
    }

    /* renamed from: f */
    public abstract Object mo779f();

    /* renamed from: k */
    public abstract AbstractC18332d<T> mo774k();

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        CancellationException cancellationException;
        if (C20159ao.m1083a()) {
            if (!(this.f66574b != -1)) {
                throw new AssertionError();
            }
        }
        AbstractC20187k abstractC20187k = this.f66624h;
        try {
            AbstractC18332d<T> mo774k = mo774k();
            if (mo774k == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
            }
            C20269e c20269e = (C20269e) mo774k;
            AbstractC18332d<T> abstractC18332d = c20269e.f66732f;
            Object obj3 = c20269e.f66730c;
            AbstractC18335f mo787b = abstractC18332d.mo787b();
            Object m805a = C20300z.m805a(mo787b, obj3);
            C20250cs<?> m1093a = m805a != C20300z.f66775a ? C20139ae.m1093a(abstractC18332d, mo787b, m805a) : null;
            AbstractC18335f mo787b2 = abstractC18332d.mo787b();
            Object mo779f = mo779f();
            Throwable mo781d = mo781d(mo779f);
            AbstractC20218bv abstractC20218bv = (mo781d != null || !C20171ay.m1066a(this.f66574b)) ? null : (AbstractC20218bv) mo787b2.get(AbstractC20218bv.f66666c);
            if (abstractC20218bv != null && !abstractC20218bv.mo949e()) {
                CancellationException mo938m = abstractC20218bv.mo938m();
                mo796a(mo779f, mo938m);
                C18539o.C18540a c18540a = C18539o.f63626a;
                if (C20159ao.m1081c() && (abstractC18332d instanceof AbstractC18319d)) {
                    cancellationException = C20295u.m816a(mo938m, (AbstractC18319d) abstractC18332d);
                    abstractC18332d.mo786b(C18539o.m3836d(C18542p.m3834a(cancellationException)));
                }
                cancellationException = mo938m;
                abstractC18332d.mo786b(C18539o.m3836d(C18542p.m3834a(cancellationException)));
            } else if (mo781d != null) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                abstractC18332d.mo786b(C18539o.m3836d(C18542p.m3834a(mo781d)));
            } else {
                T mo783c = mo783c(mo779f);
                C18539o.C18540a c18540a3 = C18539o.f63626a;
                abstractC18332d.mo786b(C18539o.m3836d(mo783c));
            }
            C20128v c20128v = C20128v.f66529a;
            if (m1093a == null || m1093a.m906r()) {
                C20300z.m804b(mo787b, m805a);
            }
            try {
                C18539o.C18540a c18540a4 = C18539o.f63626a;
                abstractC20187k.mo1028c();
                obj2 = C18539o.m3836d(C20128v.f66529a);
            } catch (Throwable th) {
                C18539o.C18540a c18540a5 = C18539o.f63626a;
                obj2 = C18539o.m3836d(C18542p.m3834a(th));
            }
            m1067a((Throwable) null, C18539o.m3837c(obj2));
        } catch (Throwable th2) {
            try {
                C18539o.C18540a c18540a6 = C18539o.f63626a;
                abstractC20187k.mo1028c();
                obj = C18539o.m3836d(C20128v.f66529a);
            } catch (Throwable th3) {
                C18539o.C18540a c18540a7 = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th3));
            }
            m1067a(th2, C18539o.m3837c(obj));
        }
    }
}
