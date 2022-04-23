package com.callapp.contacts.manager.task;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/task/SafeRunnable.class */
public abstract class SafeRunnable implements Runnable {
    protected abstract void doTask();

    protected abstract void handleException(Throwable th);

    @Override // java.lang.Runnable
    public void run() {
        try {
            doTask();
        } catch (Throwable th) {
            handleException(th);
        }
    }
}
