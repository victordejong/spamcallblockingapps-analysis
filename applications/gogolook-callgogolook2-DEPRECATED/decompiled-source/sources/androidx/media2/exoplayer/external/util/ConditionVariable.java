package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ConditionVariable.class */
public final class ConditionVariable {
    public boolean isOpen;

    public void block() throws InterruptedException {
        synchronized (this) {
            while (!this.isOpen) {
                wait();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean block(long r7) throws java.lang.InterruptedException {
        /*
            r6 = this;
            r0 = r6
            monitor-enter(r0)
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: all -> 0x0035
            r9 = r0
            r0 = r7
            r1 = r9
            long r0 = r0 + r1
            r11 = r0
            r0 = r9
            r7 = r0
        L_0x000d:
            r0 = r6
            boolean r0 = r0.isOpen     // Catch: all -> 0x0035
            if (r0 != 0) goto L_0x002a
            r0 = r7
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002a
            r0 = r6
            r1 = r11
            r2 = r7
            long r1 = r1 - r2
            r0.wait(r1)     // Catch: all -> 0x0035
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch: all -> 0x0035
            r7 = r0
            goto L_0x000d
        L_0x002a:
            r0 = r6
            boolean r0 = r0.isOpen     // Catch: all -> 0x0035
            r13 = r0
            r0 = r6
            monitor-exit(r0)
            r0 = r13
            return r0
        L_0x0035:
            r14 = move-exception
            r0 = r6
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.ConditionVariable.block(long):boolean");
    }

    public boolean close() {
        boolean z;
        synchronized (this) {
            z = this.isOpen;
            this.isOpen = false;
        }
        return z;
    }

    public boolean open() {
        synchronized (this) {
            if (this.isOpen) {
                return false;
            }
            this.isOpen = true;
            notifyAll();
            return true;
        }
    }
}
