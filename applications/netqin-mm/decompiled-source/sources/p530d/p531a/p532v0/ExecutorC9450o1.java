package p530d.p531a.p532v0;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: d.a.v0.o1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/o1.class */
public class ExecutorC9450o1 implements Executor {

    /* renamed from: c */
    public static final Logger f36231c = Logger.getLogger(ExecutorC9450o1.class.getName());

    /* renamed from: a */
    public boolean f36232a;

    /* renamed from: b */
    public ArrayDeque<Runnable> f36233b;

    /* renamed from: a */
    public final void m2717a() {
        while (true) {
            Runnable poll = this.f36233b.poll();
            if (poll != null) {
                try {
                    poll.run();
                } catch (Throwable th) {
                    Logger logger = f36231c;
                    Level level = Level.SEVERE;
                    logger.log(level, "Exception while executing runnable " + poll, th);
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m2716b(Runnable runnable) {
        if (this.f36233b == null) {
            this.f36233b = new ArrayDeque<>(4);
        }
        this.f36233b.add(runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005f, code lost:
        if (r5.f36233b == null) goto L_0x0024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
        return;
     */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(java.lang.Runnable r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "'task' must not be null."
            java.lang.Object r0 = p131c.p161d.p266c.p267a.C4933n.m24794a(r0, r1)
            r0 = r5
            boolean r0 = r0.f36232a
            if (r0 != 0) goto L_0x0078
            r0 = r5
            r1 = 1
            r0.f36232a = r1
            r0 = r6
            r0.run()     // Catch: all -> 0x002c
            r0 = r5
            java.util.ArrayDeque<java.lang.Runnable> r0 = r0.f36233b
            if (r0 == 0) goto L_0x0024
        L_0x0020:
            r0 = r5
            r0.m2717a()
        L_0x0024:
            r0 = r5
            r1 = 0
            r0.f36232a = r1
            goto L_0x007d
        L_0x002c:
            r7 = move-exception
            java.util.logging.Logger r0 = p530d.p531a.p532v0.ExecutorC9450o1.f36231c     // Catch: all -> 0x0065
            r8 = r0
            java.util.logging.Level r0 = java.util.logging.Level.SEVERE     // Catch: all -> 0x0065
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0065
            r10 = r0
            r0 = r10
            r0.<init>()     // Catch: all -> 0x0065
            r0 = r10
            java.lang.String r1 = "Exception while executing runnable "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0065
            r0 = r10
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0065
            r0 = r8
            r1 = r9
            r2 = r10
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x0065
            r3 = r7
            r0.log(r1, r2, r3)     // Catch: all -> 0x0065
            r0 = r5
            java.util.ArrayDeque<java.lang.Runnable> r0 = r0.f36233b
            if (r0 == 0) goto L_0x0024
            goto L_0x0020
        L_0x0065:
            r6 = move-exception
            r0 = r5
            java.util.ArrayDeque<java.lang.Runnable> r0 = r0.f36233b
            if (r0 == 0) goto L_0x0071
            r0 = r5
            r0.m2717a()
        L_0x0071:
            r0 = r5
            r1 = 0
            r0.f36232a = r1
            r0 = r6
            throw r0
        L_0x0078:
            r0 = r5
            r1 = r6
            r0.m2716b(r1)
        L_0x007d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.ExecutorC9450o1.execute(java.lang.Runnable):void");
    }
}
