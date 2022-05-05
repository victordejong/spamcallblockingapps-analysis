package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.SpscArrayQueueProducerFields */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/SpscArrayQueueProducerFields.class */
public abstract class SpscArrayQueueProducerFields<E> extends SpscArrayQueueL1Pad<E> {
    public static final long P_INDEX_OFFSET = UnsafeAccess.addressOf(SpscArrayQueueProducerFields.class, "producerIndex");
    public long producerIndex;

    public SpscArrayQueueProducerFields(int i) {
        super(i);
    }
}
