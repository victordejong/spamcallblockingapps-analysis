package kotlinx.coroutines.p570b;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\b��\u0018��2\u00020\u0001B!\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/TaskImpl;", "Lkotlinx/coroutines/scheduling/Task;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "submissionTime", "", "taskContext", "Lkotlinx/coroutines/scheduling/TaskContext;", "(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContext;)V", "run", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.l */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/l.class */
public final class C20188l extends AbstractRunnableC20186j {

    /* renamed from: a */
    public final Runnable f66625a;

    public C20188l(Runnable runnable, long j, AbstractC20187k abstractC20187k) {
        super(j, abstractC20187k);
        this.f66625a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f66625a.run();
        } finally {
            this.f66624h.mo1028c();
        }
    }

    public final String toString() {
        return "Task[" + this.f66625a.getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this.f66625a)) + ", " + this.f66623g + ", " + this.f66624h + ']';
    }
}
