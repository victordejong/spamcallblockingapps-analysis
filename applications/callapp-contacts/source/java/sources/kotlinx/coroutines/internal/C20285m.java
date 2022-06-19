package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\b\u0010\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028��¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0012\"\u0004\b\u0001\u0010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000eR\u0013\u0010\u001b\u001a\u00020\u00188F@\u0006¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, m4298d2 = {"Lkotlinx/coroutines/internal/LockFreeTaskQueue;", "", "E", "", "singleConsumer", "<init>", "(Z)V", "element", "addLast", "(Ljava/lang/Object;)Z", "", EventConstants.CLOSE, "()V", "isClosed", "()Z", "R", "Lkotlin/Function1;", "transform", "", "map", "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", "removeFirstOrNull", "()Ljava/lang/Object;", "isEmpty", "", "getSize", "()I", "size", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.m */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/m.class */
public class C20285m<E> {

    /* renamed from: a */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66753a = AtomicReferenceFieldUpdater.newUpdater(C20285m.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur;

    public C20285m(boolean z) {
        this._cur = new C20286n(8, z);
    }

    /* renamed from: a */
    public final int m849a() {
        long j = ((C20286n) this._cur)._state;
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j) >> 0)));
    }

    /* renamed from: a */
    public final boolean m848a(E e) {
        while (true) {
            C20286n c20286n = (C20286n) this._cur;
            int m841a = c20286n.m841a((C20286n) e);
            if (m841a != 0) {
                if (m841a == 1) {
                    f66753a.compareAndSet(this, c20286n, c20286n.m837d());
                } else if (m841a == 2) {
                    return false;
                }
            } else {
                return true;
            }
        }
    }

    /* renamed from: b */
    public final void m847b() {
        while (true) {
            C20286n c20286n = (C20286n) this._cur;
            if (c20286n.m840b()) {
                return;
            }
            f66753a.compareAndSet(this, c20286n, c20286n.m837d());
        }
    }

    /* renamed from: c */
    public final E m846c() {
        while (true) {
            C20286n c20286n = (C20286n) this._cur;
            E e = (E) c20286n.m838c();
            if (e != C20286n.f66754a) {
                return e;
            }
            f66753a.compareAndSet(this, c20286n, c20286n.m837d());
        }
    }
}
