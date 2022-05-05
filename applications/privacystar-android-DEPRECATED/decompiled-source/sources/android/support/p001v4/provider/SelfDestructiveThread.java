package android.support.p001v4.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.annotation.GuardedBy;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import java.util.concurrent.Callable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.provider.SelfDestructiveThread */
/* loaded from: classes-dex2jar.jar:android/support/v4/provider/SelfDestructiveThread.class */
public class SelfDestructiveThread {
    private static final int MSG_DESTRUCTION = 0;
    private static final int MSG_INVOKE_RUNNABLE = 1;
    private final int mDestructAfterMillisec;
    @GuardedBy("mLock")
    private Handler mHandler;
    private final int mPriority;
    @GuardedBy("mLock")
    private HandlerThread mThread;
    private final String mThreadName;
    private final Object mLock = new Object();
    private Handler.Callback mCallback = new Handler.Callback() { // from class: android.support.v4.provider.SelfDestructiveThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    SelfDestructiveThread.this.onDestruction();
                    return true;
                case 1:
                    SelfDestructiveThread.this.onInvokeRunnable((Runnable) message.obj);
                    return true;
                default:
                    return true;
            }
        }
    };
    @GuardedBy("mLock")
    private int mGeneration = 0;

    /* renamed from: android.support.v4.provider.SelfDestructiveThread$ReplyCallback */
    /* loaded from: classes-dex2jar.jar:android/support/v4/provider/SelfDestructiveThread$ReplyCallback.class */
    public interface ReplyCallback<T> {
        void onReply(T t);
    }

    public SelfDestructiveThread(String str, int i, int i2) {
        this.mThreadName = str;
        this.mPriority = i;
        this.mDestructAfterMillisec = i2;
    }

    private void post(Runnable runnable) {
        synchronized (this.mLock) {
            if (this.mThread == null) {
                this.mThread = new HandlerThread(this.mThreadName, this.mPriority);
                this.mThread.start();
                this.mHandler = new Handler(this.mThread.getLooper(), this.mCallback);
                this.mGeneration++;
            }
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, runnable));
        }
    }

    @VisibleForTesting
    public int getGeneration() {
        int i;
        synchronized (this.mLock) {
            i = this.mGeneration;
        }
        return i;
    }

    @VisibleForTesting
    public boolean isRunning() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mThread != null;
        }
        return z;
    }

    void onDestruction() {
        synchronized (this.mLock) {
            if (!this.mHandler.hasMessages(1)) {
                this.mThread.quit();
                this.mThread = null;
                this.mHandler = null;
            }
        }
    }

    void onInvokeRunnable(Runnable runnable) {
        runnable.run();
        synchronized (this.mLock) {
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0), this.mDestructAfterMillisec);
        }
    }

    public <T> void postAndReply(final Callable<T> callable, final ReplyCallback<T> replyCallback) {
        final Handler handler = new Handler();
        post(new Runnable() { // from class: android.support.v4.provider.SelfDestructiveThread.2
            @Override // java.lang.Runnable
            public void run() {
                final Object obj;
                try {
                    obj = callable.call();
                } catch (Exception e) {
                    obj = null;
                }
                handler.post(new Runnable() { // from class: android.support.v4.provider.SelfDestructiveThread.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        replyCallback.onReply(obj);
                    }
                });
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T postAndWait(final java.util.concurrent.Callable<T> r11, int r12) throws java.lang.InterruptedException {
        /*
            r10 = this;
            java.util.concurrent.locks.ReentrantLock r0 = new java.util.concurrent.locks.ReentrantLock
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            java.util.concurrent.locks.Condition r0 = r0.newCondition()
            r14 = r0
            java.util.concurrent.atomic.AtomicReference r0 = new java.util.concurrent.atomic.AtomicReference
            r1 = r0
            r1.<init>()
            r15 = r0
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r1 = r0
            r2 = 1
            r1.<init>(r2)
            r16 = r0
            r0 = r10
            android.support.v4.provider.SelfDestructiveThread$3 r1 = new android.support.v4.provider.SelfDestructiveThread$3
            r2 = r1
            r3 = r10
            r4 = r15
            r5 = r11
            r6 = r13
            r7 = r16
            r8 = r14
            r2.<init>()
            r0.post(r1)
            r0 = r13
            r0.lock()
            r0 = r16
            boolean r0 = r0.get()     // Catch: all -> 0x008d
            if (r0 != 0) goto L_0x004d
            r0 = r15
            java.lang.Object r0 = r0.get()     // Catch: all -> 0x008d
            r11 = r0
            r0 = r13
            r0.unlock()
            r0 = r11
            return r0
        L_0x004d:
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: all -> 0x008d
            r1 = r12
            long r1 = (long) r1     // Catch: all -> 0x008d
            long r0 = r0.toNanos(r1)     // Catch: all -> 0x008d
            r17 = r0
        L_0x0057:
            r0 = r14
            r1 = r17
            long r0 = r0.awaitNanos(r1)     // Catch: all -> 0x008d, InterruptedException -> 0x0094
            r19 = r0
        L_0x0062:
            r0 = r16
            boolean r0 = r0.get()     // Catch: all -> 0x008d
            if (r0 != 0) goto L_0x0076
            r0 = r15
            java.lang.Object r0 = r0.get()     // Catch: all -> 0x008d
            r11 = r0
            r0 = r13
            r0.unlock()
            r0 = r11
            return r0
        L_0x0076:
            r0 = r19
            r17 = r0
            r0 = r19
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0057
            java.lang.InterruptedException r0 = new java.lang.InterruptedException     // Catch: all -> 0x008d
            r11 = r0
            r0 = r11
            java.lang.String r1 = "timeout"
            r0.<init>(r1)     // Catch: all -> 0x008d
            r0 = r11
            throw r0     // Catch: all -> 0x008d
        L_0x008d:
            r11 = move-exception
            r0 = r13
            r0.unlock()
            r0 = r11
            throw r0
        L_0x0094:
            r11 = move-exception
            r0 = r17
            r19 = r0
            goto L_0x0062
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.provider.SelfDestructiveThread.postAndWait(java.util.concurrent.Callable, int):java.lang.Object");
    }
}
