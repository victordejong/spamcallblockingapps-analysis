package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.DebugStringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018��B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/OpDescriptor;", "that", "", "isEarlierThan", "(Lkotlinx/coroutines/internal/OpDescriptor;)Z", "", "affected", "perform", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/internal/AtomicOp;", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/OpDescriptor.class */
public abstract class OpDescriptor {
    @Nullable
    /* renamed from: a */
    public abstract AtomicOp<?> mo283a();

    /* renamed from: b */
    public final boolean m473b(@NotNull OpDescriptor opDescriptor) {
        AtomicOp<?> a = mo283a();
        boolean z = false;
        if (a != null) {
            AtomicOp<?> a2 = opDescriptor.mo283a();
            z = false;
            if (a2 != null) {
                z = false;
                if (a.mo323f() < a2.mo323f()) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Nullable
    /* renamed from: c */
    public abstract Object mo282c(@Nullable Object obj);

    @NotNull
    public String toString() {
        return DebugStringsKt.m1304a(this) + '@' + DebugStringsKt.m1303b(this);
    }
}
