package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018��B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0019\u0010\u000e\u001a\u00020\r8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/internal/ThreadState;", "", FirebaseAnalytics.Param.VALUE, "", "append", "(Ljava/lang/Object;)V", "start", "()V", "take", "()Ljava/lang/Object;", "", "a", "[Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "", "i", "I", "n", "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ThreadState.class */
final class ThreadState {

    /* renamed from: a */
    private Object[] f23966a;

    /* renamed from: b */
    private int f23967b;
    @NotNull

    /* renamed from: c */
    private final CoroutineContext f23968c;

    public ThreadState(@NotNull CoroutineContext coroutineContext, int i) {
        this.f23968c = coroutineContext;
        this.f23966a = new Object[i];
    }

    /* renamed from: a */
    public final void m405a(@Nullable Object obj) {
        Object[] objArr = this.f23966a;
        int i = this.f23967b;
        this.f23967b = i + 1;
        objArr[i] = obj;
    }

    @NotNull
    /* renamed from: b */
    public final CoroutineContext m404b() {
        return this.f23968c;
    }

    /* renamed from: c */
    public final void m403c() {
        this.f23967b = 0;
    }

    @Nullable
    /* renamed from: d */
    public final Object m402d() {
        Object[] objArr = this.f23966a;
        int i = this.f23967b;
        this.f23967b = i + 1;
        return objArr[i];
    }
}
