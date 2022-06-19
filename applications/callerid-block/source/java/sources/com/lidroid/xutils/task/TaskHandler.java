package com.lidroid.xutils.task;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/TaskHandler.class */
public interface TaskHandler {
    void cancel();

    boolean isCancelled();

    boolean isPaused();

    void pause();

    void resume();

    boolean supportCancel();

    boolean supportPause();

    boolean supportResume();
}
