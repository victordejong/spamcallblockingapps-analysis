package scala.collection.parallel;

import scala.concurrent.forkjoin.ForkJoinPool;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTaskSupport$.class */
public final class ForkJoinTaskSupport$ {
    public static final ForkJoinTaskSupport$ MODULE$ = null;

    static {
        new ForkJoinTaskSupport$();
    }

    private ForkJoinTaskSupport$() {
        MODULE$ = this;
    }

    public ForkJoinPool $lessinit$greater$default$1() {
        return ForkJoinTasks$.MODULE$.defaultForkJoinPool();
    }
}
