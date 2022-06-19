package com.callapp.contacts.manager.task;

import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.C18341g;
import kotlinx.coroutines.AbstractC20163as;
import kotlinx.coroutines.C20172az;
import kotlinx.coroutines.C20260h;
import kotlinx.coroutines.TimeoutCancellationException;
import p091b.C3170a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/task/Task.class */
public abstract class Task implements Runnable {
    protected static final String TAG = "Task";
    private boolean cancelled;
    private final AbstractC18335f coroutineContext;
    private AbstractC20163as deferred;
    private DoneListener listener;
    private String metaData;
    private final long millisSinceCreation;
    private String name;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/task/Task$DoneListener.class */
    public interface DoneListener {
        void onDone();
    }

    public Task() {
        this(null);
    }

    public Task(AbstractC18335f abstractC18335f) {
        this.metaData = "";
        this.coroutineContext = abstractC18335f == null ? C20172az.m1061a() : abstractC18335f;
        this.millisSinceCreation = System.currentTimeMillis();
    }

    public boolean await(long j) {
        try {
            C3170a.C3171a c3171a = C3170a.f11528a;
            C18524p.m3840d(this, "task");
            C20260h.m902a(C18341g.f63443a, new C3170a.C3171a.C3172a(this, j, null));
            return true;
        } catch (TimeoutCancellationException e) {
            return false;
        }
    }

    public final void cancel() {
        doCancel();
        this.listener = null;
        this.cancelled = true;
    }

    public void doCancel() {
        AbstractC20163as abstractC20163as = this.deferred;
        if (abstractC20163as == null || abstractC20163as.mo939l()) {
            return;
        }
        abstractC20163as.mo970a((CancellationException) null);
    }

    public abstract void doTask();

    public Task execute() {
        return schedule(0);
    }

    public long getMiilisSinceTaskCreation() {
        return System.currentTimeMillis() - this.millisSinceCreation;
    }

    public String getName() {
        if (this.name == null) {
            this.name = StringUtils.m26058a(getClass());
        }
        return this.name;
    }

    public boolean isCancelled() {
        return this.cancelled;
    }

    public boolean isDone() {
        AbstractC20163as abstractC20163as = this.deferred;
        return abstractC20163as != null && abstractC20163as.mo940k();
    }

    public boolean isRunning() {
        AbstractC20163as abstractC20163as = this.deferred;
        return abstractC20163as != null && !abstractC20163as.mo940k();
    }

    public final boolean markAsCancelWithoutCancelling() {
        this.cancelled = true;
        return true;
    }

    public void onError(Throwable th) {
        CLog.m27589b(TAG, new TaskException(th), "%s.doTask() error on Task[%s][%s] ", StringUtils.m26058a(getClass()), getName(), this.metaData);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r9 != null) goto L6;
     */
    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r6 = this;
            long r0 = java.lang.System.currentTimeMillis()
            r7 = r0
            r0 = r6
            r0.doTask()     // Catch: java.lang.Throwable -> L1a
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L2f
        L11:
            r0 = r9
            r0.onDone()
            goto L2f
        L1a:
            r9 = move-exception
            r0 = r6
            r1 = r9
            r0.onError(r1)     // Catch: java.lang.Throwable -> L61
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            if (r0 == 0) goto L2f
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            r9 = r0
            goto L11
        L2f:
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r6
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ".doTask() took "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            long r1 = java.lang.System.currentTimeMillis()
            r2 = r7
            long r1 = r1 - r2
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r9
            java.lang.String r1 = r1.toString()
            com.callapp.contacts.util.CLog.m27611a(r0, r1)
            return
        L61:
            r9 = move-exception
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            if (r0 == 0) goto L72
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            r0.onDone()
        L72:
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.task.Task.run():void");
    }

    public Task schedule(int i) {
        this.cancelled = false;
        doCancel();
        C3170a.C3171a c3171a = C3170a.f11528a;
        this.deferred = C3170a.C3171a.m39248a(this, i, this.coroutineContext);
        return this;
    }

    public Task setDoneListener(DoneListener doneListener) {
        this.listener = doneListener;
        return this;
    }

    public Task setMetaData(String str) {
        this.metaData = str;
        return this;
    }

    public Task setName(String str) {
        this.name = str;
        return this;
    }
}
