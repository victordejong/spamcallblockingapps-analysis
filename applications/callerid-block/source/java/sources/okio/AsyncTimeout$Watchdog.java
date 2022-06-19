package okio;
/* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$Watchdog.class */
final class AsyncTimeout$Watchdog extends Thread {
    AsyncTimeout$Watchdog() {
        super("Okio Watchdog");
        setDaemon(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
        r0.timedOut();
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r3 = this;
        L0:
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L36
            okio.AsyncTimeout r0 = okio.AsyncTimeout.awaitTimeout()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L36
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L11
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            goto L0
        L11:
            r0 = r4
            okio.AsyncTimeout r1 = okio.AsyncTimeout.head     // Catch: java.lang.Throwable -> L2a
            if (r0 != r1) goto L20
            r0 = 0
            okio.AsyncTimeout.head = r0     // Catch: java.lang.Throwable -> L2a
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            return
        L20:
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            r0 = r4
            r0.timedOut()     // Catch: java.lang.InterruptedException -> L36
            goto L0
        L2a:
            r4 = move-exception
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            goto L33
        L31:
            r0 = r4
            throw r0
        L33:
            goto L31
        L36:
            r4 = move-exception
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout$Watchdog.run():void");
    }
}
