package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b&\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00028��2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028��H&¢\u0006\u0004\b\r\u0010\u000bR\u001a\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0012\u001a\u00020\u00118F@\u0006¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00148V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/internal/AtomicOp;", "T", "Lkotlinx/coroutines/internal/OpDescriptor;", "affected", "", "failure", "", "complete", "(Ljava/lang/Object;Ljava/lang/Object;)V", "decision", "decide", "(Ljava/lang/Object;)Ljava/lang/Object;", "perform", "prepare", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "", "isDecided", "()Z", "", "getOpSequence", "()J", "opSequence", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/AtomicOp.class */
public abstract class AtomicOp<T> extends OpDescriptor {

    /* renamed from: a */
    private static final AtomicReferenceFieldUpdater f23892a = AtomicReferenceFieldUpdater.newUpdater(AtomicOp.class, Object.class, "_consensus");
    private volatile Object _consensus;

    public AtomicOp() {
        Object obj;
        obj = AtomicKt.f23890a;
        this._consensus = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    @NotNull
    /* renamed from: a */
    public AtomicOp<?> mo283a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    @Nullable
    /* renamed from: c */
    public final Object mo282c(@Nullable Object obj) {
        Object obj2;
        Object obj3 = this._consensus;
        Object obj4 = obj3;
        obj2 = AtomicKt.f23890a;
        if (obj3 == obj2) {
            obj4 = m580e(mo280h(obj));
        }
        mo281d(obj, obj4);
        return obj4;
    }

    /* renamed from: d */
    public abstract void mo281d(T t, @Nullable Object obj);

    @Nullable
    /* renamed from: e */
    public final Object m580e(@Nullable Object obj) {
        Object obj2;
        Object obj3;
        Object obj4;
        if (DebugKt.m1308a()) {
            obj4 = AtomicKt.f23890a;
            if (!(obj != obj4)) {
                throw new AssertionError();
            }
        }
        Object obj5 = this._consensus;
        obj2 = AtomicKt.f23890a;
        if (obj5 != obj2) {
            return obj5;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f23892a;
        obj3 = AtomicKt.f23890a;
        return atomicReferenceFieldUpdater.compareAndSet(this, obj3, obj) ? obj : this._consensus;
    }

    /* renamed from: f */
    public long mo323f() {
        return 0L;
    }

    /* renamed from: g */
    public final boolean m579g() {
        Object obj;
        Object obj2 = this._consensus;
        obj = AtomicKt.f23890a;
        return obj2 != obj;
    }

    @Nullable
    /* renamed from: h */
    public abstract Object mo280h(T t);
}
