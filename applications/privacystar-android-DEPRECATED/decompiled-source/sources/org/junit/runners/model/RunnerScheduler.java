package org.junit.runners.model;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/model/RunnerScheduler.class */
public interface RunnerScheduler {
    void finished();

    void schedule(Runnable runnable);
}
