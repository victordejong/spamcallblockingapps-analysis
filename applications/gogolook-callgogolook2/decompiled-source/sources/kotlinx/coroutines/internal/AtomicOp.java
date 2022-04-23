package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\b&\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028��2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\fJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00028��H&¢\u0006\u0004\b\u000e\u0010\fR\u001a\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0013\u001a\u00020\u00128F@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, m815d2 = {"Lkotlinx/coroutines/internal/AtomicOp;", ExifInterface.GPS_DIRECTION_TRUE, "<init>", "()V", "affected", "", "failure", "", "complete", "(Ljava/lang/Object;Ljava/lang/Object;)V", "decision", "decide", "(Ljava/lang/Object;)Ljava/lang/Object;", "perform", "prepare", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "", "isDecided", "()Z", "", "getOpSequence", "()J", "opSequence", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/OpDescriptor;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/AtomicOp.class */
public abstract class AtomicOp<T> extends OpDescriptor {
    public static final AtomicReferenceFieldUpdater _consensus$FU = AtomicReferenceFieldUpdater.newUpdater(AtomicOp.class, Object.class, "_consensus");
    public volatile Object _consensus;

    public AtomicOp() {
        Object obj;
        obj = AtomicKt.NO_DECISION;
        this._consensus = obj;
    }

    public abstract void complete(T t, Object obj);

    public final Object decide(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            obj4 = AtomicKt.NO_DECISION;
            if (!(obj != obj4)) {
                throw new AssertionError();
            }
        }
        Object obj5 = this._consensus;
        obj2 = AtomicKt.NO_DECISION;
        if (obj5 != obj2) {
            return obj5;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _consensus$FU;
        obj3 = AtomicKt.NO_DECISION;
        return atomicReferenceFieldUpdater.compareAndSet(this, obj3, obj) ? obj : this._consensus;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    public AtomicOp<?> getAtomicOp() {
        return this;
    }

    public long getOpSequence() {
        return 0L;
    }

    public final boolean isDecided() {
        Object obj;
        Object obj2 = this._consensus;
        obj = AtomicKt.NO_DECISION;
        return obj2 != obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    public final Object perform(Object obj) {
        Object obj2;
        Object obj3 = this._consensus;
        Object obj4 = obj3;
        obj2 = AtomicKt.NO_DECISION;
        if (obj3 == obj2) {
            obj4 = decide(prepare(obj));
        }
        complete(obj, obj4);
        return obj4;
    }

    public abstract Object prepare(T t);
}
