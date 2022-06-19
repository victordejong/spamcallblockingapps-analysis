package com.lidroid.xutils.task;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityRunnable.class */
public class PriorityRunnable extends PriorityObject<Runnable> implements Runnable {
    public PriorityRunnable(Priority priority, Runnable runnable) {
        super(priority, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((Runnable) this.obj).run();
    }
}
