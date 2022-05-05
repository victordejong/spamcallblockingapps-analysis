package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007H\u0086H\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001"}, d2 = {"withPermit", "", "T", "Lkotlinx/coroutines/sync/Semaphore;", "action", "Lkotlin/Function0;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.sync.SemaphoreKt", m1914f = "Semaphore.kt", m1913l = {84}, m1912m = "withPermit")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreKt$withPermit$1.class */
public final class SemaphoreKt$withPermit$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f24096f;

    /* renamed from: g */
    int f24097g;

    /* renamed from: h */
    Object f24098h;

    /* renamed from: i */
    Object f24099i;

    public SemaphoreKt$withPermit$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f24096f = obj;
        this.f24097g |= Integer.MIN_VALUE;
        return SemaphoreKt.m252m(null, null, this);
    }
}
