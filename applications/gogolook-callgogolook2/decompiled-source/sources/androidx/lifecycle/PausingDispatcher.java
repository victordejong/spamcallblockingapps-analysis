package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\nj\u0002`\u000bH\u0017R\u0010\u0010\u0003\u001a\u00020\u00048��X\u0081\u0004¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Landroidx/lifecycle/PausingDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "dispatchQueue", "Landroidx/lifecycle/DispatchQueue;", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "lifecycle-runtime-ktx_release"}, m814k = 1, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/PausingDispatcher.class */
public final class PausingDispatcher extends CoroutineDispatcher {
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @ExperimentalCoroutinesApi
    public void dispatch(AbstractC15049g gVar, Runnable runnable) {
        C15149k.m377b(gVar, "context");
        C15149k.m377b(runnable, "block");
        this.dispatchQueue.runOrEnqueue(runnable);
    }
}
