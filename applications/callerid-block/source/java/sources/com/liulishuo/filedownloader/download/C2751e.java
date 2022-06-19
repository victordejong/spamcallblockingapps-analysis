package com.liulishuo.filedownloader.download;

import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.message.C2764b;
import com.liulishuo.filedownloader.message.C2767c;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.services.C2783f;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3063e;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.download.e */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/e.class */
public class C2751e implements Handler.Callback {

    /* renamed from: b */
    private final FileDownloadModel f11413b;

    /* renamed from: d */
    private final C2752a f11415d;

    /* renamed from: e */
    private final int f11416e;

    /* renamed from: f */
    private final int f11417f;

    /* renamed from: g */
    private final int f11418g;

    /* renamed from: h */
    private long f11419h;

    /* renamed from: i */
    private Handler f11420i;

    /* renamed from: j */
    private HandlerThread f11421j;

    /* renamed from: l */
    private volatile Thread f11423l;

    /* renamed from: k */
    private volatile boolean f11422k = false;

    /* renamed from: m */
    private volatile long f11424m = 0;

    /* renamed from: n */
    private final AtomicLong f11425n = new AtomicLong();

    /* renamed from: o */
    private final AtomicBoolean f11426o = new AtomicBoolean(false);

    /* renamed from: p */
    private final AtomicBoolean f11427p = new AtomicBoolean(false);

    /* renamed from: q */
    private final AtomicBoolean f11428q = new AtomicBoolean(true);

    /* renamed from: c */
    private final AbstractC3026a f11414c = C2746c.m1933j().m1937f();

    /* renamed from: com.liulishuo.filedownloader.download.e$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/e$a.class */
    public static class C2752a {

        /* renamed from: a */
        private boolean f11429a;

        /* renamed from: b */
        private Exception f11430b;

        /* renamed from: c */
        private int f11431c;

        /* renamed from: a */
        public Exception m1890a() {
            return this.f11430b;
        }

        /* renamed from: b */
        public int m1889b() {
            return this.f11431c;
        }

        /* renamed from: c */
        public boolean m1888c() {
            return this.f11429a;
        }

        /* renamed from: d */
        void m1887d(Exception exc) {
            this.f11430b = exc;
        }

        /* renamed from: e */
        void m1886e(boolean z) {
            this.f11429a = z;
        }

        /* renamed from: f */
        void m1885f(int i) {
            this.f11431c = i;
        }
    }

    public C2751e(FileDownloadModel fileDownloadModel, int i, int i2, int i3) {
        this.f11413b = fileDownloadModel;
        this.f11417f = i2 < 5 ? 5 : i2;
        this.f11418g = i3;
        this.f11415d = new C2752a();
        this.f11416e = i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    private static long m1914a(long j, long j2) {
        if (j2 <= 0) {
            return -1L;
        }
        if (j == -1) {
            return 1L;
        }
        char c = j / j2;
        if (c <= 0) {
            c = 1;
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (p092e.p096e.p097a.p102h0.C3063e.m405a().f12688f != false) goto L6;
     */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Exception m1912c(java.lang.Exception r11) {
        /*
            r10 = this;
            r0 = r10
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11413b
            java.lang.String r0 = r0.m1808l()
            r12 = r0
            r0 = r10
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11413b
            boolean r0 = r0.m1804p()
            if (r0 != 0) goto L1d
            r0 = r11
            r13 = r0
            e.e.a.h0.e r0 = p092e.p096e.p097a.p102h0.C3063e.m405a()
            boolean r0 = r0.f12688f
            if (r0 == 0) goto L98
        L1d:
            r0 = r11
            r13 = r0
            r0 = r11
            boolean r0 = r0 instanceof java.io.IOException
            if (r0 == 0) goto L98
            r0 = r11
            r13 = r0
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r12
            r1.<init>(r2)
            boolean r0 = r0.exists()
            if (r0 == 0) goto L98
            r0 = r12
            long r0 = p092e.p096e.p097a.p102h0.C3066f.m358x(r0)
            r14 = r0
            r0 = r11
            r13 = r0
            r0 = r14
            r1 = 4096(0x1000, double:2.0237E-320)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L98
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r12
            r1.<init>(r2)
            r13 = r0
            r0 = r13
            boolean r0 = r0.exists()
            if (r0 != 0) goto L68
            r0 = r10
            r1 = r11
            java.lang.String r2 = "Exception with: free space isn't enough, and the target file not exist."
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]
            p092e.p096e.p097a.p102h0.C3062d.m412c(r0, r1, r2, r3)
            r0 = 0
            r16 = r0
            goto L6e
        L68:
            r0 = r13
            long r0 = r0.length()
            r16 = r0
        L6e:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 9
            if (r0 < r1) goto L89
            com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException r0 = new com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException
            r1 = r0
            r2 = r14
            r3 = 4096(0x1000, double:2.0237E-320)
            r4 = r16
            r5 = r11
            r1.<init>(r2, r3, r4, r5)
            r13 = r0
            goto L98
        L89:
            com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException r0 = new com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException
            r1 = r0
            r2 = r14
            r3 = 4096(0x1000, double:2.0237E-320)
            r4 = r16
            r1.<init>(r2, r3, r4)
            r13 = r0
        L98:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C2751e.m1912c(java.lang.Exception):java.lang.Exception");
    }

    /* renamed from: d */
    private void m1911d() {
        m1892w();
        this.f11413b.m1821D((byte) -3);
        this.f11414c.mo494g(this.f11413b.m1813e(), this.f11413b.m1807m());
        this.f11414c.mo498c(this.f11413b.m1813e());
        m1893v((byte) -3);
        if (C3063e.m405a().f12689g) {
            C2783f.m1755a(this.f11413b);
        }
    }

    /* renamed from: e */
    private void m1910e(Exception exc) {
        Exception m1912c = m1912c(exc);
        if (m1912c instanceof SQLiteFullException) {
            m1906i((SQLiteFullException) m1912c);
            e = m1912c;
        } else {
            try {
                this.f11413b.m1821D((byte) -1);
                this.f11413b.m1798x(exc.toString());
                this.f11414c.mo492i(this.f11413b.m1813e(), m1912c, this.f11413b.m1811g());
                e = m1912c;
            } catch (SQLiteFullException e) {
                e = e;
                m1906i(e);
            }
        }
        this.f11415d.m1887d(e);
        m1893v((byte) -1);
    }

    /* renamed from: f */
    private void m1909f() {
        this.f11413b.m1821D((byte) -2);
        this.f11414c.mo484q(this.f11413b.m1813e(), this.f11413b.m1811g());
        m1893v((byte) -2);
    }

    /* renamed from: g */
    private void m1908g() {
        if (this.f11413b.m1811g() == this.f11413b.m1807m()) {
            this.f11414c.mo489l(this.f11413b.m1813e(), this.f11413b.m1811g());
            return;
        }
        if (this.f11427p.compareAndSet(true, false)) {
            if (C3062d.f12682a) {
                C3062d.m410e(this, "handleProgress update model's status with progress", new Object[0]);
            }
            this.f11413b.m1821D((byte) 3);
        }
        if (!this.f11426o.compareAndSet(true, false)) {
            return;
        }
        if (C3062d.f12682a) {
            C3062d.m410e(this, "handleProgress notify user progress status", new Object[0]);
        }
        m1893v((byte) 3);
    }

    /* renamed from: h */
    private void m1907h(Exception exc, int i) {
        Exception m1912c = m1912c(exc);
        this.f11415d.m1887d(m1912c);
        this.f11415d.m1885f(this.f11416e - i);
        this.f11413b.m1821D((byte) 5);
        this.f11413b.m1798x(m1912c.toString());
        this.f11414c.mo496e(this.f11413b.m1813e(), m1912c);
        m1893v((byte) 5);
    }

    /* renamed from: i */
    private void m1906i(SQLiteFullException sQLiteFullException) {
        int m1813e = this.f11413b.m1813e();
        if (C3062d.f12682a) {
            C3062d.m414a(this, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly.", Integer.valueOf(m1813e), sQLiteFullException.toString());
        }
        this.f11413b.m1798x(sQLiteFullException.toString());
        this.f11413b.m1821D((byte) -1);
        this.f11414c.remove(m1813e);
        this.f11414c.mo498c(m1813e);
    }

    /* renamed from: j */
    private void m1905j(long j) {
        boolean z;
        if (!this.f11428q.compareAndSet(true, false)) {
            long j2 = this.f11424m;
            if (this.f11419h == -1 || this.f11425n.get() < this.f11419h || j - j2 < this.f11417f) {
                z = false;
                if (z || !this.f11426o.compareAndSet(false, true)) {
                }
                if (C3062d.f12682a) {
                    C3062d.m410e(this, "inspectNeedCallbackToUser need callback to user", new Object[0]);
                }
                this.f11424m = j;
                this.f11425n.set(0L);
                return;
            }
        }
        z = true;
        if (z) {
        }
    }

    /* renamed from: k */
    private boolean m1904k() {
        if (this.f11413b.m1804p()) {
            FileDownloadModel fileDownloadModel = this.f11413b;
            fileDownloadModel.m1820E(fileDownloadModel.m1811g());
            return false;
        } else if (this.f11413b.m1811g() == this.f11413b.m1807m()) {
            return false;
        } else {
            m1900o(new FileDownloadGiveUpRetryException(C3066f.m367o("sofar[%d] not equal total[%d]", Long.valueOf(this.f11413b.m1811g()), Long.valueOf(this.f11413b.m1807m()))));
            return true;
        }
    }

    /* renamed from: v */
    private void m1893v(byte b) {
        if (b != -2) {
            C2764b.m1840a().m1839b(C2767c.m1833d(b, this.f11413b, this.f11415d));
        } else if (!C3062d.f12682a) {
        } else {
            C3062d.m414a(this, "High concurrent cause, Already paused and we don't need to call-back to Task in here, %d", Integer.valueOf(this.f11413b.m1813e()));
        }
    }

    /* renamed from: w */
    private void m1892w() {
        boolean z;
        Throwable th;
        String m1808l = this.f11413b.m1808l();
        String m1809i = this.f11413b.m1809i();
        File file = new File(m1808l);
        try {
            File file2 = new File(m1809i);
            if (file2.exists()) {
                long length = file2.length();
                if (!file2.delete()) {
                    throw new IOException(C3066f.m367o("Can't delete the old file([%s], [%d]), so can't replace it with the new downloaded one.", m1809i, Long.valueOf(length)));
                }
                C3062d.m406i(this, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]", m1809i, Long.valueOf(length), Long.valueOf(file.length()));
            }
            z = !file.renameTo(file2);
            if (!z) {
                if (!z || !file.exists() || file.delete()) {
                    return;
                }
                C3062d.m406i(this, "delete the temp file(%s) failed, on completed downloading.", m1808l);
                return;
            }
            try {
                throw new IOException(C3066f.m367o("Can't rename the  temp downloaded file(%s) to the target file(%s)", m1808l, m1809i));
            } catch (Throwable th2) {
                th = th2;
                if (z && file.exists() && !file.delete()) {
                    C3062d.m406i(this, "delete the temp file(%s) failed, on completed downloading.", m1808l);
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            z = true;
        }
    }

    /* renamed from: x */
    private void m1891x(Message message) {
        synchronized (this) {
            if (!this.f11421j.isAlive()) {
                if (C3062d.f12682a) {
                    C3062d.m414a(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
                }
                return;
            }
            try {
                this.f11420i.sendMessage(message);
            } catch (IllegalStateException e) {
                if (this.f11421j.isAlive()) {
                    throw e;
                }
                if (C3062d.f12682a) {
                    C3062d.m414a(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
                }
            }
        }
    }

    /* renamed from: b */
    public void m1913b() {
        Handler handler = this.f11420i;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f11421j.quit();
            this.f11423l = Thread.currentThread();
            while (this.f11422k) {
                LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(100L));
            }
            this.f11423l = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = 1
            r0.f11422k = r1
            r0 = r5
            int r0 = r0.what
            r6 = r0
            r0 = r6
            r1 = 3
            if (r0 == r1) goto L29
            r0 = r6
            r1 = 5
            if (r0 == r1) goto L17
            goto L2d
        L17:
            r0 = r4
            r1 = r5
            java.lang.Object r1 = r1.obj     // Catch: java.lang.Throwable -> L42
            java.lang.Exception r1 = (java.lang.Exception) r1     // Catch: java.lang.Throwable -> L42
            r2 = r5
            int r2 = r2.arg1     // Catch: java.lang.Throwable -> L42
            r0.m1907h(r1, r2)     // Catch: java.lang.Throwable -> L42
            goto L2d
        L29:
            r0 = r4
            r0.m1908g()     // Catch: java.lang.Throwable -> L42
        L2d:
            r0 = r4
            r1 = 0
            r0.f11422k = r1
            r0 = r4
            java.lang.Thread r0 = r0.f11423l
            if (r0 == 0) goto L40
            r0 = r4
            java.lang.Thread r0 = r0.f11423l
            java.util.concurrent.locks.LockSupport.unpark(r0)
        L40:
            r0 = 1
            return r0
        L42:
            r5 = move-exception
            r0 = r4
            r1 = 0
            r0.f11422k = r1
            r0 = r4
            java.lang.Thread r0 = r0.f11423l
            if (r0 == 0) goto L56
            r0 = r4
            java.lang.Thread r0 = r0.f11423l
            java.util.concurrent.locks.LockSupport.unpark(r0)
        L56:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C2751e.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: l */
    public boolean m1903l() {
        HandlerThread handlerThread = this.f11421j;
        return handlerThread != null && handlerThread.isAlive();
    }

    /* renamed from: m */
    public void m1902m() {
        if (m1904k()) {
            return;
        }
        m1911d();
    }

    /* renamed from: n */
    public void m1901n(boolean z, long j, String str, String str2) {
        String m1816b = this.f11413b.m1816b();
        if (m1816b == null || m1816b.equals(str)) {
            this.f11415d.m1886e(z);
            this.f11413b.m1821D((byte) 2);
            this.f11413b.m1820E(j);
            this.f11413b.m1799w(str);
            this.f11413b.m1797y(str2);
            this.f11414c.mo488m(this.f11413b.m1813e(), j, str, str2);
            m1893v((byte) 2);
            this.f11419h = m1914a(j, this.f11418g);
            this.f11427p.compareAndSet(false, true);
            return;
        }
        throw new IllegalArgumentException(C3066f.m367o("callback onConnected must with precondition succeed, but the etag is changes(%s != %s)", str, m1816b));
    }

    /* renamed from: o */
    public void m1900o(Exception exc) {
        m1910e(exc);
    }

    /* renamed from: p */
    public void m1899p() {
        HandlerThread handlerThread = new HandlerThread("source-status-callback");
        this.f11421j = handlerThread;
        handlerThread.start();
        this.f11420i = new Handler(this.f11421j.getLooper(), this);
    }

    /* renamed from: q */
    public void m1898q() {
        m1909f();
    }

    /* renamed from: r */
    public void m1897r() {
        this.f11413b.m1821D((byte) 1);
        this.f11414c.mo500a(this.f11413b.m1813e());
        m1893v((byte) 1);
    }

    /* renamed from: s */
    public void m1896s(long j) {
        this.f11425n.addAndGet(j);
        this.f11413b.m1805o(j);
        m1905j(SystemClock.elapsedRealtime());
        if (this.f11420i == null) {
            m1908g();
        } else if (!this.f11426o.get()) {
        } else {
            m1891x(this.f11420i.obtainMessage(3));
        }
    }

    /* renamed from: t */
    public void m1895t(Exception exc, int i) {
        this.f11425n.set(0L);
        Handler handler = this.f11420i;
        if (handler == null) {
            m1907h(exc, i);
        } else {
            m1891x(handler.obtainMessage(5, i, 0, exc));
        }
    }

    /* renamed from: u */
    public void m1894u() {
        this.f11413b.m1821D((byte) 6);
        m1893v((byte) 6);
        this.f11414c.mo495f(this.f11413b.m1813e());
    }
}
