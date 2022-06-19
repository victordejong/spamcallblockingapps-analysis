package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0002\u0018��2\u00020\u000fB0\u0012'\u0010\b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000b\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fR7\u0010\b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/InvokeOnCancelling;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "handler", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "invoke", "(Ljava/lang/Throwable;)V", "Lkotlin/jvm/functions/Function1;", "kotlinx-coroutines-core", "Lkotlinx/coroutines/JobCancellingNode;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bt */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bt.class */
final class C20216bt extends AbstractC20221bw {

    /* renamed from: a */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66663a = AtomicIntegerFieldUpdater.newUpdater(C20216bt.class, "_invoked");
    private volatile /* synthetic */ int _invoked = 0;

    /* renamed from: b */
    private final Function1<Throwable, C20128v> f66664b;

    /* JADX WARN: Multi-variable type inference failed */
    public C20216bt(Function1<? super Throwable, C20128v> function1) {
        this.f66664b = function1;
    }

    @Override // kotlinx.coroutines.AbstractC20136ab
    /* renamed from: a */
    public final void mo768a(Throwable th) {
        if (f66663a.compareAndSet(this, 0, 1)) {
            this.f66664b.invoke(th);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ C20128v invoke(Throwable th) {
        mo768a(th);
        return C20128v.f66529a;
    }
}
