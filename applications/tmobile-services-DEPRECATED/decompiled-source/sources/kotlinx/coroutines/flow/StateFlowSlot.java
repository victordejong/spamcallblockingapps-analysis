package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0002\u0018��B\u0007¢\u0006\u0004\b\u000b\u0010\bJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0005\u001a\u00020\u0004H\u0086@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bJ\r\u0010\n\u001a\u00020\u0001¢\u0006\u0004\b\n\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/StateFlowSlot;", "", "allocate", "()Z", "", "awaitPending", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "free", "()V", "makePending", "takePending", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/StateFlowSlot.class */
public final class StateFlowSlot {

    /* renamed from: a */
    static final AtomicReferenceFieldUpdater f23645a = AtomicReferenceFieldUpdater.newUpdater(StateFlowSlot.class, Object.class, "_state");
    volatile Object _state = null;

    /* renamed from: a */
    public final boolean m633a() {
        Symbol symbol;
        if (this._state != null) {
            return false;
        }
        symbol = StateFlowKt.f23643a;
        this._state = symbol;
        return true;
    }

    @Nullable
    /* renamed from: b */
    public final Object m632b(@NotNull Continuation<? super Unit> continuation) {
        Continuation c;
        Symbol symbol;
        Object d;
        Symbol symbol2;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        boolean z = true;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.m1345v();
        if (!DebugKt.m1308a() || Boxing.m1919a(!(this._state instanceof CancellableContinuationImpl)).booleanValue()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f23645a;
            symbol = StateFlowKt.f23643a;
            if (!atomicReferenceFieldUpdater.compareAndSet(this, symbol, cancellableContinuationImpl)) {
                if (DebugKt.m1308a()) {
                    Object obj = this._state;
                    symbol2 = StateFlowKt.f23644b;
                    if (obj != symbol2) {
                        z = false;
                    }
                    if (!Boxing.m1919a(z).booleanValue()) {
                        throw new AssertionError();
                    }
                }
                Unit unit = Unit.f20447a;
                Result.Companion companion = Result.f20418g;
                Result.m2481b(unit);
                cancellableContinuationImpl.resumeWith(unit);
            }
            Object t = cancellableContinuationImpl.m1347t();
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (t == d) {
                DebugProbesKt.m1904c(continuation);
            }
            return t;
        }
        throw new AssertionError();
    }

    /* renamed from: c */
    public final void m631c() {
        this._state = null;
    }

    /* renamed from: d */
    public final boolean m630d() {
        Symbol symbol;
        Symbol symbol2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f23645a;
        symbol = StateFlowKt.f23643a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, symbol);
        Intrinsics.m1832c(andSet);
        boolean z = true;
        if (!DebugKt.m1308a() || (!(andSet instanceof CancellableContinuationImpl))) {
            symbol2 = StateFlowKt.f23644b;
            if (andSet != symbol2) {
                z = false;
            }
            return z;
        }
        throw new AssertionError();
    }
}
