package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0096@"}, d2 = {"await", "", "T", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.CompletableDeferredImpl", m1914f = "CompletableDeferred.kt", m1913l = {87}, m1912m = "await")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CompletableDeferredImpl$await$1.class */
public final class CompletableDeferredImpl$await$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21122f;

    /* renamed from: g */
    int f21123g;

    /* renamed from: h */
    final /* synthetic */ CompletableDeferredImpl f21124h;

    /* renamed from: i */
    Object f21125i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompletableDeferredImpl$await$1(CompletableDeferredImpl completableDeferredImpl, Continuation continuation) {
        super(continuation);
        this.f21124h = completableDeferredImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21122f = obj;
        this.f21123g |= Integer.MIN_VALUE;
        return this.f21124h.m1331P0(this);
    }
}
