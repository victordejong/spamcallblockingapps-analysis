package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\b\u0002\u0018��B\u001b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0002\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0002\u0010\u0003R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/CompletedIdempotentResult;", "", "toString", "()Ljava/lang/String;", "", "idempotentResume", "Ljava/lang/Object;", "result", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CompletedIdempotentResult.class */
final class CompletedIdempotentResult {
    @JvmField
    @Nullable

    /* renamed from: a */
    public final Object f21128a;
    @JvmField
    @Nullable

    /* renamed from: b */
    public final Object f21129b;

    public CompletedIdempotentResult(@Nullable Object obj, @Nullable Object obj2) {
        this.f21128a = obj;
        this.f21129b = obj2;
    }

    @NotNull
    public String toString() {
        return "CompletedIdempotentResult[" + this.f21129b + ']';
    }
}
