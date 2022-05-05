package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u00032\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00070\u0006H\u0086@"}, d2 = {"awaitAll", "", "T", "", "Lkotlinx/coroutines/Deferred;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.AwaitKt", m1914f = "Await.kt", m1913l = {38}, m1912m = "awaitAll")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/AwaitKt$awaitAll$2.class */
public final class AwaitKt$awaitAll$2 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21086f;

    /* renamed from: g */
    int f21087g;

    /* renamed from: h */
    Object f21088h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AwaitKt$awaitAll$2(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21086f = obj;
        this.f21087g |= Integer.MIN_VALUE;
        return AwaitKt.m1378a(null, this);
    }
}
