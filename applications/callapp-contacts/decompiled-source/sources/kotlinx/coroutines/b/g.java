package kotlinx.coroutines.b;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/scheduling/NanoTimeSource;", "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;", "()V", "nanoTime", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/g.class */
public final class g extends i {

    /* renamed from: a  reason: collision with root package name */
    public static final g f38718a = new g();

    private g() {
    }

    @Override // kotlinx.coroutines.b.i
    public final long a() {
        return System.nanoTime();
    }
}
