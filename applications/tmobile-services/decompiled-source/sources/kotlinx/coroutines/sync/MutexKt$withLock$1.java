package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0086H\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001"}, d2 = {"withLock", "", "T", "Lkotlinx/coroutines/sync/Mutex;", "owner", "action", "Lkotlin/Function0;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.sync.MutexKt", m1914f = "Mutex.kt", m1913l = {116}, m1912m = "withLock")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/MutexKt$withLock$1.class */
public final class MutexKt$withLock$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f24079f;

    /* renamed from: g */
    int f24080g;

    /* renamed from: h */
    Object f24081h;

    /* renamed from: i */
    Object f24082i;

    /* renamed from: j */
    Object f24083j;

    public MutexKt$withLock$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f24079f = obj;
        this.f24080g |= Integer.MIN_VALUE;
        return MutexKt.m270h(null, null, null, this);
    }
}
