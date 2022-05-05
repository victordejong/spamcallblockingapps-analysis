package org.apache.commons.p018io;
/* renamed from: org.apache.commons.io.ThreadMonitor */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/ThreadMonitor.class */
class ThreadMonitor implements Runnable {
    private final Thread thread;
    private final long timeout;

    private ThreadMonitor(Thread thread, long j) {
        this.thread = thread;
        this.timeout = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void sleep(long r5) throws java.lang.InterruptedException {
        /*
            long r0 = java.lang.System.currentTimeMillis()
            r7 = r0
            r0 = r5
            r9 = r0
        L_0x0007:
            r0 = r9
            java.lang.Thread.sleep(r0)
            r0 = r7
            r1 = r5
            long r0 = r0 + r1
            long r1 = java.lang.System.currentTimeMillis()
            long r0 = r0 - r1
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0007
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.ThreadMonitor.sleep(long):void");
    }

    public static Thread start(long j) {
        return start(Thread.currentThread(), j);
    }

    public static Thread start(Thread thread, long j) {
        Thread thread2;
        if (j > 0) {
            thread2 = new Thread(new ThreadMonitor(thread, j), ThreadMonitor.class.getSimpleName());
            thread2.setDaemon(true);
            thread2.start();
        } else {
            thread2 = null;
        }
        return thread2;
    }

    public static void stop(Thread thread) {
        if (thread != null) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            sleep(this.timeout);
            this.thread.interrupt();
        } catch (InterruptedException e) {
        }
    }
}
