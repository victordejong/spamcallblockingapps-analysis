package io.fabric.sdk.android.services.concurrency;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/Task.class */
public interface Task {
    Throwable getError();

    boolean isFinished();

    void setError(Throwable th);

    void setFinished(boolean z);
}
