package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.C20159ao;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\b'\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00028��2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\fJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00028��H&¢\u0006\u0004\b\u000e\u0010\fR\u001a\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030��8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0016\u001a\u00020\u00158F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00188V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, m4298d2 = {"Lkotlinx/coroutines/internal/AtomicOp;", "T", "<init>", "()V", "affected", "", "failure", "", EventConstants.COMPLETE, "(Ljava/lang/Object;Ljava/lang/Object;)V", "decision", "decide", "(Ljava/lang/Object;)Ljava/lang/Object;", "perform", "prepare", "getAtomicOp", "()Lkotlinx/coroutines/internal/AtomicOp;", "atomicOp", "getConsensus", "()Ljava/lang/Object;", "consensus", "", "isDecided", "()Z", "", "getOpSequence", "()J", "opSequence", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/OpDescriptor;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.c */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/c.class */
public abstract class AbstractC20267c<T> extends AbstractC20292r {

    /* renamed from: a */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66726a = AtomicReferenceFieldUpdater.newUpdater(AbstractC20267c.class, Object.class, "_consensus");
    private volatile /* synthetic */ Object _consensus = C20266b.f66724a;

    /* renamed from: b */
    private Object m878b(Object obj) {
        if (C20159ao.m1083a()) {
            if (!(obj != C20266b.f66724a)) {
                throw new AssertionError();
            }
        }
        Object obj2 = this._consensus;
        return obj2 != C20266b.f66724a ? obj2 : f66726a.compareAndSet(this, C20266b.f66724a, obj) ? obj : this._consensus;
    }

    /* renamed from: a */
    public abstract Object mo879a();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.AbstractC20292r
    /* renamed from: a */
    public final Object mo822a(Object obj) {
        Object obj2 = this._consensus;
        Object obj3 = obj2;
        if (obj2 == C20266b.f66724a) {
            obj3 = m878b(mo879a());
        }
        mo850a(obj, obj3);
        return obj3;
    }

    /* renamed from: a */
    public abstract void mo850a(T t, Object obj);
}
