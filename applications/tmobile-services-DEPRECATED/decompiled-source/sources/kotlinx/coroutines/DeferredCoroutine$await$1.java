package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0096@"}, d2 = {"await", "", "T", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.DeferredCoroutine", m1914f = "Builders.common.kt", m1913l = {101}, m1912m = "await$suspendImpl")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DeferredCoroutine$await$1.class */
public final class DeferredCoroutine$await$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21152f;

    /* renamed from: g */
    int f21153g;

    /* renamed from: h */
    final /* synthetic */ DeferredCoroutine f21154h;

    /* renamed from: i */
    Object f21155i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeferredCoroutine$await$1(DeferredCoroutine deferredCoroutine, Continuation continuation) {
        super(continuation);
        this.f21154h = deferredCoroutine;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21152f = obj;
        this.f21153g |= Integer.MIN_VALUE;
        return DeferredCoroutine.m1296V0(this.f21154h, this);
    }
}
