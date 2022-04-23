package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.SpscArrayQueueColdField */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/SpscArrayQueueColdField.class */
public abstract class SpscArrayQueueColdField<E> extends ConcurrentCircularArrayQueue<E> {
    public static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    public SpscArrayQueueColdField(int i) {
        super(i);
        Math.min(i / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }
}
