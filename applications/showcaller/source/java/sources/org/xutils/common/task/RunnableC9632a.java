package org.xutils.common.task;
/* renamed from: org.xutils.common.task.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/common/task/a.class */
class RunnableC9632a implements Runnable {

    /* renamed from: d */
    long f40591d;

    /* renamed from: e */
    public final Priority f40592e;

    /* renamed from: f */
    private final Runnable f40593f;

    public RunnableC9632a(Priority priority, Runnable runnable) {
        this.f40592e = priority == null ? Priority.DEFAULT : priority;
        this.f40593f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f40593f.run();
    }
}
