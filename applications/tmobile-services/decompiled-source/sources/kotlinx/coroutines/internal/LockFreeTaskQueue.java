package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\b\u0010\u0018��*\b\b��\u0010\u0002*\u00020\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f\"\u0004\b\u0001\u0010\f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u00020\u00048F@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0013\u0010\u0018\u001a\u00020\u00158F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueue;", "", "E", "element", "", "addLast", "(Ljava/lang/Object;)Z", "", "close", "()V", "isClosed", "()Z", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "removeFirstOrNull", "()Ljava/lang/Object;", "isEmpty", "", "getSize", "()I", "size", "singleConsumer", "<init>", "(Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/LockFreeTaskQueue.class */
public class LockFreeTaskQueue<E> {

    /* renamed from: a */
    private static final AtomicReferenceFieldUpdater f23928a = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueue.class, Object.class, "_cur");
    private volatile Object _cur;

    public LockFreeTaskQueue(boolean z) {
        this._cur = new LockFreeTaskQueueCore(8, z);
    }

    /* renamed from: a */
    public final boolean m503a(@NotNull E e) {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur;
            int a = lockFreeTaskQueueCore.m499a(e);
            if (a == 0) {
                return true;
            }
            if (a == 1) {
                f23928a.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.m491i());
            } else if (a == 2) {
                return false;
            }
        }
    }

    /* renamed from: b */
    public final void m502b() {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur;
            if (!lockFreeTaskQueueCore.m496d()) {
                f23928a.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.m491i());
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public final int m501c() {
        return ((LockFreeTaskQueueCore) this._cur).m494f();
    }

    @Nullable
    /* renamed from: d */
    public final E m500d() {
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) this._cur;
            E e = (E) lockFreeTaskQueueCore.m490j();
            if (e != LockFreeTaskQueueCore.f23931g) {
                return e;
            }
            f23928a.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.m491i());
        }
    }
}
