package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0010\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��2\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0014¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0016\u0010\u0010\u001a\u00020\u000b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/channels/LinkedListChannel;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "element", "", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "", "isBufferAlwaysEmpty", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/LinkedListChannel.class */
public class LinkedListChannel<E> extends AbstractChannel<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: B */
    public final boolean mo809B() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: E */
    public Object mo832E(E e) {
        ReceiveOrClosed<?> I;
        do {
            Object E = super.mo832E(e);
            Object obj = AbstractChannelKt.f21298a;
            if (E == obj) {
                return obj;
            }
            if (E == AbstractChannelKt.f21299b) {
                I = m1054I(e);
                if (I == null) {
                    return AbstractChannelKt.f21298a;
                }
            } else if (E instanceof Closed) {
                return E;
            } else {
                throw new IllegalStateException(("Invalid offerInternal result " + E).toString());
            }
        } while (!(I instanceof Closed));
        return I;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    @NotNull
    /* renamed from: F */
    public Object mo831F(E e, @NotNull SelectInstance<?> selectInstance) {
        Object obj;
        while (true) {
            if (m1071V()) {
                obj = super.mo831F(e, selectInstance);
            } else {
                obj = selectInstance.mo310v(m1046e(e));
                if (obj == null) {
                    obj = AbstractChannelKt.f21298a;
                }
            }
            if (obj == SelectKt.m306d()) {
                return SelectKt.m306d();
            }
            Object obj2 = AbstractChannelKt.f21298a;
            if (obj == obj2) {
                return obj2;
            }
            if (obj != AbstractChannelKt.f21299b && obj != AtomicKt.f23891b) {
                if (obj instanceof Closed) {
                    return obj;
                }
                throw new IllegalStateException(("Invalid result " + obj).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: W */
    protected final boolean mo808W() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: X */
    public final boolean mo807X() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: z */
    protected final boolean mo806z() {
        return false;
    }
}
