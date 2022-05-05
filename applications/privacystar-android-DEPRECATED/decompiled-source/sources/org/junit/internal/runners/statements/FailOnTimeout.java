package org.junit.internal.runners.statements;

import java.lang.management.ManagementFactory;
import java.lang.management.ThreadMXBean;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.junit.runners.model.MultipleFailureException;
import org.junit.runners.model.Statement;
import org.junit.runners.model.TestTimedOutException;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/statements/FailOnTimeout.class */
public class FailOnTimeout extends Statement {
    private final boolean lookForStuckThread;
    private final Statement originalStatement;
    private volatile ThreadGroup threadGroup;
    private final TimeUnit timeUnit;
    private final long timeout;

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/statements/FailOnTimeout$Builder.class */
    public static class Builder {
        private boolean lookForStuckThread;
        private long timeout;
        private TimeUnit unit;

        private Builder() {
            this.lookForStuckThread = false;
            this.timeout = 0L;
            this.unit = TimeUnit.SECONDS;
        }

        public FailOnTimeout build(Statement statement) {
            if (statement != null) {
                return new FailOnTimeout(this, statement);
            }
            throw new NullPointerException("statement cannot be null");
        }

        public Builder withLookingForStuckThread(boolean z) {
            this.lookForStuckThread = z;
            return this;
        }

        public Builder withTimeout(long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException("timeout must be non-negative");
            } else if (timeUnit == null) {
                throw new NullPointerException("TimeUnit cannot be null");
            } else {
                this.timeout = j;
                this.unit = timeUnit;
                return this;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/internal/runners/statements/FailOnTimeout$CallableStatement.class */
    private class CallableStatement implements Callable<Throwable> {
        private final CountDownLatch startLatch;

        private CallableStatement() {
            this.startLatch = new CountDownLatch(1);
        }

        public void awaitStarted() throws InterruptedException {
            this.startLatch.await();
        }

        @Override // java.util.concurrent.Callable
        public Throwable call() throws Exception {
            try {
                this.startLatch.countDown();
                FailOnTimeout.this.originalStatement.evaluate();
                return null;
            } catch (Exception e) {
                throw e;
            } catch (Throwable th) {
                return th;
            }
        }
    }

    private FailOnTimeout(Builder builder, Statement statement) {
        this.threadGroup = null;
        this.originalStatement = statement;
        this.timeout = builder.timeout;
        this.timeUnit = builder.unit;
        this.lookForStuckThread = builder.lookForStuckThread;
    }

    @Deprecated
    public FailOnTimeout(Statement statement, long j) {
        this(builder().withTimeout(j, TimeUnit.MILLISECONDS), statement);
    }

    public static Builder builder() {
        return new Builder();
    }

    private Thread[] copyThreads(Thread[] threadArr, int i) {
        int min = Math.min(i, threadArr.length);
        Thread[] threadArr2 = new Thread[min];
        for (int i2 = 0; i2 < min; i2++) {
            threadArr2[i2] = threadArr[i2];
        }
        return threadArr2;
    }

    private long cpuTime(Thread thread) {
        ThreadMXBean threadMXBean = ManagementFactory.getThreadMXBean();
        if (!threadMXBean.isThreadCpuTimeSupported()) {
            return 0L;
        }
        try {
            return threadMXBean.getThreadCpuTime(thread.getId());
        } catch (UnsupportedOperationException e) {
            return 0L;
        }
    }

    private Exception createTimeoutException(Thread thread) {
        StackTraceElement[] stackTrace = thread.getStackTrace();
        Thread stuckThread = this.lookForStuckThread ? getStuckThread(thread) : null;
        TestTimedOutException testTimedOutException = new TestTimedOutException(this.timeout, this.timeUnit);
        if (stackTrace != null) {
            testTimedOutException.setStackTrace(stackTrace);
            thread.interrupt();
        }
        if (stuckThread == null) {
            return testTimedOutException;
        }
        Exception exc = new Exception("Appears to be stuck in thread " + stuckThread.getName());
        exc.setStackTrace(getStackTrace(stuckThread));
        return new MultipleFailureException(Arrays.asList(testTimedOutException, exc));
    }

    private Throwable getResult(FutureTask<Throwable> futureTask, Thread thread) {
        try {
            return this.timeout > 0 ? futureTask.get(this.timeout, this.timeUnit) : futureTask.get();
        } catch (InterruptedException e) {
            return e;
        } catch (ExecutionException e2) {
            return e2.getCause();
        } catch (TimeoutException e3) {
            return createTimeoutException(thread);
        }
    }

    private StackTraceElement[] getStackTrace(Thread thread) {
        try {
            return thread.getStackTrace();
        } catch (SecurityException e) {
            return new StackTraceElement[0];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Thread getStuckThread(java.lang.Thread r6) {
        /*
            r5 = this;
            r0 = r5
            java.lang.ThreadGroup r0 = r0.threadGroup
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            r1 = r5
            java.lang.ThreadGroup r1 = r1.threadGroup
            java.lang.Thread[] r0 = r0.getThreadArray(r1)
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x001e
            r0 = 0
            return r0
        L_0x001e:
            r0 = r9
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = 0
            r7 = r0
        L_0x002b:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x007b
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r14 = r0
            r0 = r7
            r15 = r0
            r0 = r12
            r16 = r0
            r0 = r14
            java.lang.Thread$State r0 = r0.getState()
            java.lang.Thread$State r1 = java.lang.Thread.State.RUNNABLE
            if (r0 != r1) goto L_0x006e
            r0 = r5
            r1 = r14
            long r0 = r0.cpuTime(r1)
            r18 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0066
            r0 = r7
            r15 = r0
            r0 = r12
            r16 = r0
            r0 = r18
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006e
        L_0x0066:
            r0 = r14
            r15 = r0
            r0 = r18
            r16 = r0
        L_0x006e:
            int r11 = r11 + 1
            r0 = r15
            r7 = r0
            r0 = r16
            r12 = r0
            goto L_0x002b
        L_0x007b:
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L_0x0085
            r0 = r8
            r6 = r0
            goto L_0x0087
        L_0x0085:
            r0 = r7
            r6 = r0
        L_0x0087:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.junit.internal.runners.statements.FailOnTimeout.getStuckThread(java.lang.Thread):java.lang.Thread");
    }

    private Thread[] getThreadArray(ThreadGroup threadGroup) {
        int i;
        int max = Math.max(threadGroup.activeCount() * 2, 100);
        int i2 = 0;
        do {
            Thread[] threadArr = new Thread[max];
            int enumerate = threadGroup.enumerate(threadArr);
            if (enumerate < max) {
                return copyThreads(threadArr, enumerate);
            }
            max += 100;
            i = i2 + 1;
            i2 = i;
        } while (i < 5);
        return null;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Throwable {
        CallableStatement callableStatement = new CallableStatement();
        FutureTask<Throwable> futureTask = new FutureTask<>(callableStatement);
        this.threadGroup = new ThreadGroup("FailOnTimeoutGroup");
        Thread thread = new Thread(this.threadGroup, futureTask, "Time-limited test");
        thread.setDaemon(true);
        thread.start();
        callableStatement.awaitStarted();
        Throwable result = getResult(futureTask, thread);
        if (result != null) {
            throw result;
        }
    }
}
