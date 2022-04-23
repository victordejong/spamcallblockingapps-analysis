package io.objectbox;

import io.objectbox.b.b;
import io.objectbox.exception.DbException;
import java.io.Closeable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/Transaction.class */
public class Transaction implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static boolean f36181a;

    /* renamed from: b  reason: collision with root package name */
    final long f36182b;

    /* renamed from: c  reason: collision with root package name */
    final BoxStore f36183c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f36184d;
    int e;
    volatile boolean f;
    private final Throwable g;

    public Transaction(BoxStore boxStore, long j, int i) {
        this.f36183c = boxStore;
        this.f36182b = j;
        this.e = i;
        this.f36184d = nativeIsReadOnly(j);
        this.g = f36181a ? new Throwable() : null;
    }

    public final <T> Cursor<T> a(Class<T> cls) {
        a();
        c<T> c2 = this.f36183c.c(cls);
        b<T> cursorFactory = c2.getCursorFactory();
        long nativeCreateCursor = nativeCreateCursor(this.f36182b, c2.getDbName(), cls);
        if (nativeCreateCursor != 0) {
            return cursorFactory.createCursor(this, nativeCreateCursor, this.f36183c);
        }
        throw new DbException("Could not create native cursor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f) {
            throw new IllegalStateException("Transaction is closed");
        }
    }

    public final void b() {
        a();
        this.f36183c.a(nativeCommit(this.f36182b));
    }

    public final boolean c() {
        a();
        return nativeIsRecycled(this.f36182b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f) {
                this.f = true;
                BoxStore boxStore = this.f36183c;
                synchronized (boxStore.f) {
                    boxStore.f.remove(this);
                }
                if (!nativeIsOwnerThread(this.f36182b)) {
                    boolean nativeIsActive = nativeIsActive(this.f36182b);
                    boolean nativeIsRecycled = nativeIsRecycled(this.f36182b);
                    if (nativeIsActive || nativeIsRecycled) {
                        String str = " (initial commit count: " + this.e + ").";
                        if (nativeIsActive) {
                            System.err.println("Transaction is still active".concat(String.valueOf(str)));
                        } else {
                            System.out.println("Hint: use closeThreadResources() to avoid finalizing recycled transactions".concat(String.valueOf(str)));
                            System.out.flush();
                        }
                        if (this.g != null) {
                            System.err.println("Transaction was initially created here:");
                            this.g.printStackTrace();
                        }
                        System.err.flush();
                    }
                }
                if (!this.f36183c.m) {
                    nativeDestroy(this.f36182b);
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public native void nativeAbort(long j);

    native int[] nativeCommit(long j);

    native long nativeCreateCursor(long j, String str, Class<?> cls);

    native void nativeDestroy(long j);

    native boolean nativeIsActive(long j);

    native boolean nativeIsOwnerThread(long j);

    native boolean nativeIsReadOnly(long j);

    native boolean nativeIsRecycled(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public native void nativeRecycle(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public native void nativeRenew(long j);

    public String toString() {
        StringBuilder sb = new StringBuilder("TX ");
        sb.append(Long.toString(this.f36182b, 16));
        sb.append(" (");
        sb.append(this.f36184d ? "read-only" : "write");
        sb.append(", initialCommitCount=");
        sb.append(this.e);
        sb.append(")");
        return sb.toString();
    }
}
