package scala.concurrent.forkjoin;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/forkjoin/TransferQueue.class */
public interface TransferQueue<E> extends BlockingQueue<E> {
    int getWaitingConsumerCount();

    boolean hasWaitingConsumer();

    void transfer(E e) throws InterruptedException;

    boolean tryTransfer(E e);

    boolean tryTransfer(E e, long j, TimeUnit timeUnit) throws InterruptedException;
}
