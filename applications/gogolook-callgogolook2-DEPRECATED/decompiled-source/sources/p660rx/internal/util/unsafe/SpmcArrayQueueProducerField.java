package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.SpmcArrayQueueProducerField */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/SpmcArrayQueueProducerField.class */
public abstract class SpmcArrayQueueProducerField<E> extends SpmcArrayQueueL1Pad<E> {
    public static final long P_INDEX_OFFSET = UnsafeAccess.addressOf(SpmcArrayQueueProducerField.class, "producerIndex");
    public volatile long producerIndex;

    public SpmcArrayQueueProducerField(int i) {
        super(i);
    }

    public final long lvProducerIndex() {
        return this.producerIndex;
    }

    public final void soTail(long j) {
        UnsafeAccess.UNSAFE.putOrderedLong(this, P_INDEX_OFFSET, j);
    }
}
