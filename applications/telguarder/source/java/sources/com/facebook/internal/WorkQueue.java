package com.facebook.internal;

import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/WorkQueue.class */
public class WorkQueue {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_MAX_CONCURRENT = 8;
    private final Executor executor;
    private final int maxConcurrent;
    private WorkNode pendingJobs;
    private int runningCount;
    private WorkNode runningJobs;
    private final Object workLock;

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WorkQueue$WorkItem.class */
    public interface WorkItem {
        boolean cancel();

        boolean isRunning();

        void moveToFront();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/WorkQueue$WorkNode.class */
    public class WorkNode implements WorkItem {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Runnable callback;
        private boolean isRunning;
        private WorkNode next;
        private WorkNode prev;

        WorkNode(Runnable runnable) {
            WorkQueue.this = r4;
            this.callback = runnable;
        }

        WorkNode addToList(WorkNode workNode, boolean z) {
            if (workNode == null) {
                this.prev = this;
                this.next = this;
                workNode = this;
            } else {
                this.next = workNode;
                WorkNode workNode2 = workNode.prev;
                this.prev = workNode2;
                workNode2.next = this;
                workNode.prev = this;
            }
            if (z) {
                workNode = this;
            }
            return workNode;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean cancel() {
            synchronized (WorkQueue.this.workLock) {
                if (!isRunning()) {
                    WorkQueue workQueue = WorkQueue.this;
                    workQueue.pendingJobs = removeFromList(workQueue.pendingJobs);
                    return true;
                }
                return false;
            }
        }

        Runnable getCallback() {
            return this.callback;
        }

        WorkNode getNext() {
            return this.next;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean isRunning() {
            return this.isRunning;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public void moveToFront() {
            synchronized (WorkQueue.this.workLock) {
                if (!isRunning()) {
                    WorkQueue workQueue = WorkQueue.this;
                    workQueue.pendingJobs = removeFromList(workQueue.pendingJobs);
                    WorkQueue workQueue2 = WorkQueue.this;
                    workQueue2.pendingJobs = addToList(workQueue2.pendingJobs, true);
                }
            }
        }

        WorkNode removeFromList(WorkNode workNode) {
            WorkNode workNode2 = workNode;
            if (workNode == this) {
                WorkNode workNode3 = this.next;
                workNode2 = workNode3;
                if (workNode3 == this) {
                    workNode2 = null;
                }
            }
            WorkNode workNode4 = this.next;
            workNode4.prev = this.prev;
            this.prev.next = workNode4;
            this.prev = null;
            this.next = null;
            return workNode2;
        }

        void setIsRunning(boolean z) {
            this.isRunning = z;
        }

        void verify(boolean z) {
        }
    }

    public WorkQueue() {
        this(8);
    }

    public WorkQueue(int i) {
        this(i, FacebookSdk.getExecutor());
    }

    public WorkQueue(int i, Executor executor) {
        this.workLock = new Object();
        this.runningJobs = null;
        this.runningCount = 0;
        this.maxConcurrent = i;
        this.executor = executor;
    }

    private void execute(final WorkNode workNode) {
        this.executor.execute(new Runnable() { // from class: com.facebook.internal.WorkQueue.1
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    workNode.getCallback().run();
                    WorkQueue.this.finishItemAndStartNew(workNode);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
    }

    public void finishItemAndStartNew(WorkNode workNode) {
        WorkNode workNode2;
        synchronized (this.workLock) {
            if (workNode != null) {
                this.runningJobs = workNode.removeFromList(this.runningJobs);
                this.runningCount--;
            }
            if (this.runningCount < this.maxConcurrent) {
                WorkNode workNode3 = this.pendingJobs;
                workNode2 = workNode3;
                if (workNode3 != null) {
                    this.pendingJobs = workNode3.removeFromList(workNode3);
                    this.runningJobs = workNode3.addToList(this.runningJobs, false);
                    this.runningCount++;
                    workNode3.setIsRunning(true);
                    workNode2 = workNode3;
                }
            } else {
                workNode2 = null;
            }
        }
        if (workNode2 != null) {
            execute(workNode2);
        }
    }

    private void startItem() {
        finishItemAndStartNew(null);
    }

    public WorkItem addActiveWorkItem(Runnable runnable) {
        return addActiveWorkItem(runnable, true);
    }

    public WorkItem addActiveWorkItem(Runnable runnable, boolean z) {
        WorkNode workNode = new WorkNode(runnable);
        synchronized (this.workLock) {
            this.pendingJobs = workNode.addToList(this.pendingJobs, z);
        }
        startItem();
        return workNode;
    }

    public void validate() {
        WorkNode next;
        synchronized (this.workLock) {
            WorkNode workNode = this.runningJobs;
            if (workNode != null) {
                do {
                    workNode.verify(true);
                    next = workNode.getNext();
                    workNode = next;
                } while (next != this.runningJobs);
            }
        }
    }
}
