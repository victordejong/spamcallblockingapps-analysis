package kotlinx.coroutines;

import kotlin.Metadata;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0003\n��\bg\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'¨\u0006\u0006"}, m815d2 = {"Lkotlinx/coroutines/ChildHandle;", "Lkotlinx/coroutines/DisposableHandle;", "childCancelled", "", "cause", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ChildHandle.class */
public interface ChildHandle extends DisposableHandle {
    @InternalCoroutinesApi
    boolean childCancelled(Throwable th);
}
