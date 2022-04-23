package com.callapp.contacts.manager.task;

import b.a;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.util.concurrent.CancellationException;
import kotlin.c.f;
import kotlin.jvm.internal.p;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.as;
import kotlinx.coroutines.az;
import kotlinx.coroutines.i;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/task/Task.class */
public abstract class Task implements Runnable {
    protected static final String TAG = "Task";
    private boolean cancelled;
    private final f coroutineContext;
    private as deferred;
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

    public Task(f fVar) {
        this.metaData = "";
        this.coroutineContext = fVar == null ? az.a() : fVar;
        this.millisSinceCreation = System.currentTimeMillis();
    }

    public boolean await(long j) {
        try {
            a.C0124a aVar = a.f6247a;
            p.d(this, "task");
            i.a(null, new a.C0124a.C0125a(this, j, null), 1);
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
        as asVar = this.deferred;
        if (asVar != null && !asVar.l()) {
            asVar.a((CancellationException) null);
        }
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
            this.name = StringUtils.a(getClass());
        }
        return this.name;
    }

    public boolean isCancelled() {
        return this.cancelled;
    }

    public boolean isDone() {
        as asVar = this.deferred;
        return asVar != null && asVar.k();
    }

    public boolean isRunning() {
        as asVar = this.deferred;
        return asVar != null && !asVar.k();
    }

    public final boolean markAsCancelWithoutCancelling() {
        this.cancelled = true;
        return true;
    }

    public void onError(Throwable th) {
        CLog.b(TAG, new TaskException(th), "%s.doTask() error on Task[%s][%s] ", StringUtils.a(getClass()), getName(), this.metaData);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r9 != null) goto L_0x0011;
     */
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
            r0.doTask()     // Catch: all -> 0x001a
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x002f
        L_0x0011:
            r0 = r9
            r0.onDone()
            goto L_0x002f
        L_0x001a:
            r9 = move-exception
            r0 = r6
            r1 = r9
            r0.onError(r1)     // Catch: all -> 0x0061
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            if (r0 == 0) goto L_0x002f
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            r9 = r0
            goto L_0x0011
        L_0x002f:
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
            com.callapp.contacts.util.CLog.a(r0, r1)
            return
        L_0x0061:
            r9 = move-exception
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            if (r0 == 0) goto L_0x0072
            r0 = r6
            com.callapp.contacts.manager.task.Task$DoneListener r0 = r0.listener
            r0.onDone()
        L_0x0072:
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.task.Task.run():void");
    }

    public Task schedule(int i) {
        this.cancelled = false;
        doCancel();
        a.C0124a aVar = a.f6247a;
        this.deferred = a.C0124a.a(this, i, this.coroutineContext);
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
