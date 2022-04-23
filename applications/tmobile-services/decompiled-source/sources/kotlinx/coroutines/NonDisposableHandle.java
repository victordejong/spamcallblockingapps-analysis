package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\nJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/NonDisposableHandle;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/ChildHandle;", "", "cause", "", "childCancelled", "(Ljava/lang/Throwable;)Z", "", "dispose", "()V", "", "toString", "()Ljava/lang/String;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/NonDisposableHandle.class */
public final class NonDisposableHandle implements DisposableHandle, ChildHandle {

    /* renamed from: f */
    public static final NonDisposableHandle f21231f = new NonDisposableHandle();

    private NonDisposableHandle() {
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
    }

    @Override // kotlinx.coroutines.ChildHandle
    /* renamed from: g */
    public boolean mo1118g(@NotNull Throwable th) {
        return false;
    }

    @NotNull
    public String toString() {
        return "NonDisposableHandle";
    }
}
