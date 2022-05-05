package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0082P"}, d2 = {"yieldFrames", "", "Lkotlin/sequences/SequenceScope;", "Ljava/lang/StackTraceElement;", "frame", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", m1914f = "DebugCoroutineInfoImpl.kt", m1913l = {80}, m1912m = "yieldFrames")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl$yieldFrames$1.class */
public final class DebugCoroutineInfoImpl$yieldFrames$1 extends RestrictedContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22269f;

    /* renamed from: g */
    int f22270g;

    /* renamed from: h */
    final /* synthetic */ DebugCoroutineInfoImpl f22271h;

    /* renamed from: i */
    Object f22272i;

    /* renamed from: j */
    Object f22273j;

    /* renamed from: k */
    Object f22274k;

    /* renamed from: l */
    Object f22275l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugCoroutineInfoImpl$yieldFrames$1(DebugCoroutineInfoImpl debugCoroutineInfoImpl, Continuation continuation) {
        super(continuation);
        this.f22271h = debugCoroutineInfoImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22269f = obj;
        this.f22270g |= Integer.MIN_VALUE;
        return this.f22271h.m754d(null, null, this);
    }
}
