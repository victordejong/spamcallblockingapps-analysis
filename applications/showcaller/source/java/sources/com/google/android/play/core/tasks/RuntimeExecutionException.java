package com.google.android.play.core.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/RuntimeExecutionException.class */
public class RuntimeExecutionException extends AbstractC8578j {
    public RuntimeExecutionException(Throwable th) {
        super(th);
    }

    @Override // com.google.android.play.core.tasks.AbstractC8578j
    public final int getErrorCode() {
        return -100;
    }
}
