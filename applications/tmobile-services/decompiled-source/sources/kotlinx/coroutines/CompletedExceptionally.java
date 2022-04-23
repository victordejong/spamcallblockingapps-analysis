package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0010\u0018��B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0001¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0013\u0010\u000b\u001a\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\b\n\u0010\u0003¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/CompletedExceptionally;", "", "makeHandled", "()Z", "", "toString", "()Ljava/lang/String;", "", "cause", "Ljava/lang/Throwable;", "getHandled", "handled", "<init>", "(Ljava/lang/Throwable;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CompletedExceptionally.class */
public class CompletedExceptionally {

    /* renamed from: b */
    private static final AtomicIntegerFieldUpdater f21126b = AtomicIntegerFieldUpdater.newUpdater(CompletedExceptionally.class, "_handled");
    private volatile int _handled;
    @JvmField
    @NotNull

    /* renamed from: a */
    public final Throwable f21127a;

    public CompletedExceptionally(@NotNull Throwable th, boolean z) {
        this.f21127a = th;
        this._handled = z ? 1 : 0;
    }

    public /* synthetic */ CompletedExceptionally(Throwable th, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i & 2) != 0 ? false : z);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    /* renamed from: a */
    public final boolean m1330a() {
        return this._handled;
    }

    /* renamed from: b */
    public final boolean m1329b() {
        return f21126b.compareAndSet(this, 0, 1);
    }

    @NotNull
    public String toString() {
        return DebugStringsKt.m1304a(this) + '[' + this.f21127a + ']';
    }
}
