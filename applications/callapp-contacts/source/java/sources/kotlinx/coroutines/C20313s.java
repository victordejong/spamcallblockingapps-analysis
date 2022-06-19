package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlinx.coroutines.internal.C20269e;
import kotlinx.coroutines.internal.C20270f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\b��\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002R\u0014\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lkotlinx/coroutines/ChildContinuation;", "Lkotlinx/coroutines/JobCancellingNode;", "child", "Lkotlinx/coroutines/CancellableContinuationImpl;", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.s */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/s.class */
public final class C20313s extends AbstractC20221bw {

    /* renamed from: a */
    public final C20309o<?> f66789a;

    public C20313s(C20309o<?> c20309o) {
        this.f66789a = c20309o;
    }

    @Override // kotlinx.coroutines.AbstractC20136ab
    /* renamed from: a */
    public final void mo768a(Throwable th) {
        C20309o<?> c20309o = this.f66789a;
        Throwable mo790a = c20309o.mo790a((AbstractC20218bv) m980c());
        boolean z = true;
        if (C20171ay.m1062b(c20309o.f66574b)) {
            AbstractC18332d<?> abstractC18332d = c20309o.f66785a;
            AbstractC18332d<?> abstractC18332d2 = abstractC18332d;
            if (!(abstractC18332d instanceof C20269e)) {
                abstractC18332d2 = null;
            }
            C20269e c20269e = (C20269e) abstractC18332d2;
            if (c20269e != null) {
                while (true) {
                    Object obj = c20269e._reusableCancellableContinuation;
                    if (!C18524p.m3850a(obj, C20270f.f66733a)) {
                        if (obj instanceof Throwable) {
                            break;
                        } else if (C20269e.f66728d.compareAndSet(c20269e, obj, null)) {
                            break;
                        }
                    } else if (C20269e.f66728d.compareAndSet(c20269e, C20270f.f66733a, mo790a)) {
                        break;
                    }
                }
            }
        }
        z = false;
        if (!z) {
            c20309o.m785b(mo790a);
            c20309o.m777h();
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ C20128v invoke(Throwable th) {
        mo768a(th);
        return C20128v.f66529a;
    }
}
