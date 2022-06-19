package scala.collection.parallel;

import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTaskSupport$.class */
public final class ThreadPoolTaskSupport$ {
    public static final ThreadPoolTaskSupport$ MODULE$ = null;

    static {
        new ThreadPoolTaskSupport$();
    }

    private ThreadPoolTaskSupport$() {
        MODULE$ = this;
    }

    public ThreadPoolExecutor $lessinit$greater$default$1() {
        return ThreadPoolTasks$.MODULE$.defaultThreadPool();
    }
}
