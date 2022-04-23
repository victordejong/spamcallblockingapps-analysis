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
        L_0x0000:
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-enter(r0)     // Catch: InterruptedException -> 0x0036
            okio.AsyncTimeout r0 = okio.AsyncTimeout.awaitTimeout()     // Catch: all -> 0x002a, InterruptedException -> 0x0036
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0011
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: all -> 0x002a
            goto L_0x0000
        L_0x0011:
            r0 = r4
            okio.AsyncTimeout r1 = okio.AsyncTimeout.head     // Catch: all -> 0x002a
            if (r0 != r1) goto L_0x0020
            r0 = 0
            okio.AsyncTimeout.head = r0     // Catch: all -> 0x002a
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: all -> 0x002a
            return
        L_0x0020:
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: all -> 0x002a
            r0 = r4
            r0.timedOut()     // Catch: InterruptedException -> 0x0036
            goto L_0x0000
        L_0x002a:
            r4 = move-exception
            java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
            monitor-exit(r0)     // Catch: all -> 0x002a
            goto L_0x0033
        L_0x0031:
            r0 = r4
            throw r0
        L_0x0033:
            goto L_0x0031
        L_0x0036:
            r4 = move-exception
            goto L_0x0000
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout$Watchdog.run():void");
    }
}
