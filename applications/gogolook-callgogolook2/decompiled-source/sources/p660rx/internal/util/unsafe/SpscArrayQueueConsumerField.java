package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.SpscArrayQueueConsumerField */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/SpscArrayQueueConsumerField.class */
public abstract class SpscArrayQueueConsumerField<E> extends SpscArrayQueueL2Pad<E> {
    public static final long C_INDEX_OFFSET = UnsafeAccess.addressOf(SpscArrayQueueConsumerField.class, "consumerIndex");
    public long consumerIndex;

    public SpscArrayQueueConsumerField(int i) {
        super(i);
    }
}
