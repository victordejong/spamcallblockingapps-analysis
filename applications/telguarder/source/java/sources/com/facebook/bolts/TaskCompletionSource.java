package com.facebook.bolts;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/TaskCompletionSource.class */
public class TaskCompletionSource<TResult> {
    private final Task<TResult> task = new Task<>();

    public Task<TResult> getTask() {
        return this.task;
    }

    public void setCancelled() {
        if (trySetCancelled()) {
            return;
        }
        throw new IllegalStateException("Cannot cancel a completed task.");
    }

    public void setError(Exception exc) {
        if (trySetError(exc)) {
            return;
        }
        throw new IllegalStateException("Cannot set the error on a completed task.");
    }

    public void setResult(TResult tresult) {
        if (trySetResult(tresult)) {
            return;
        }
        throw new IllegalStateException("Cannot set the result of a completed task.");
    }

    public boolean trySetCancelled() {
        return this.task.trySetCancelled();
    }

    public boolean trySetError(Exception exc) {
        return this.task.trySetError(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.task.trySetResult(tresult);
    }
}
