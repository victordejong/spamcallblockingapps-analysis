package io.objectbox;

import io.objectbox.exception.DbException;
import io.objectbox.p502b.AbstractC17949b;
import java.io.Closeable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/Transaction.class */
public class Transaction implements Closeable {

    /* renamed from: a */
    static boolean f62700a;

    /* renamed from: b */
    final long f62701b;

    /* renamed from: c */
    final BoxStore f62702c;

    /* renamed from: d */
    final boolean f62703d;

    /* renamed from: e */
    int f62704e;

    /* renamed from: f */
    volatile boolean f62705f;

    /* renamed from: g */
    private final Throwable f62706g;

    public Transaction(BoxStore boxStore, long j, int i) {
        this.f62702c = boxStore;
        this.f62701b = j;
        this.f62704e = i;
        this.f62703d = nativeIsReadOnly(j);
        this.f62706g = f62700a ? new Throwable() : null;
    }

    /* renamed from: a */
    public final <T> Cursor<T> m4721a(Class<T> cls) {
        m4722a();
        AbstractC17957c<T> m4730c = this.f62702c.m4730c(cls);
        AbstractC17949b<T> cursorFactory = m4730c.getCursorFactory();
        long nativeCreateCursor = nativeCreateCursor(this.f62701b, m4730c.getDbName(), cls);
        if (nativeCreateCursor != 0) {
            return cursorFactory.createCursor(this, nativeCreateCursor, this.f62702c);
        }
        throw new DbException("Could not create native cursor");
    }

    /* renamed from: a */
    public final void m4722a() {
        if (!this.f62705f) {
            return;
        }
        throw new IllegalStateException("Transaction is closed");
    }

    /* renamed from: b */
    public final void m4720b() {
        m4722a();
        this.f62702c.m4737a(nativeCommit(this.f62701b));
    }

    /* renamed from: c */
    public final boolean m4719c() {
        m4722a();
        return nativeIsRecycled(this.f62701b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f62705f) {
                this.f62705f = true;
                BoxStore boxStore = this.f62702c;
                synchronized (boxStore.f62682f) {
                    boxStore.f62682f.remove(this);
                }
                if (!nativeIsOwnerThread(this.f62701b)) {
                    boolean nativeIsActive = nativeIsActive(this.f62701b);
                    boolean nativeIsRecycled = nativeIsRecycled(this.f62701b);
                    if (nativeIsActive || nativeIsRecycled) {
                        String str = " (initial commit count: " + this.f62704e + ").";
                        if (nativeIsActive) {
                            System.err.println("Transaction is still active".concat(String.valueOf(str)));
                        } else {
                            System.out.println("Hint: use closeThreadResources() to avoid finalizing recycled transactions".concat(String.valueOf(str)));
                            System.out.flush();
                        }
                        if (this.f62706g != null) {
                            System.err.println("Transaction was initially created here:");
                            this.f62706g.printStackTrace();
                        }
                        System.err.flush();
                    }
                }
                if (!this.f62702c.f62689m) {
                    nativeDestroy(this.f62701b);
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public native void nativeAbort(long j);

    native int[] nativeCommit(long j);

    native long nativeCreateCursor(long j, String str, Class<?> cls);

    native void nativeDestroy(long j);

    native boolean nativeIsActive(long j);

    native boolean nativeIsOwnerThread(long j);

    native boolean nativeIsReadOnly(long j);

    native boolean nativeIsRecycled(long j);

    public native void nativeRecycle(long j);

    public native void nativeRenew(long j);

    public String toString() {
        StringBuilder sb = new StringBuilder("TX ");
        sb.append(Long.toString(this.f62701b, 16));
        sb.append(" (");
        sb.append(this.f62703d ? "read-only" : "write");
        sb.append(", initialCommitCount=");
        sb.append(this.f62704e);
        sb.append(")");
        return sb.toString();
    }
}
