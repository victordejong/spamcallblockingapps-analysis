package com.liulishuo.filedownloader.download;

import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.message.C9369b;
import com.liulishuo.filedownloader.message.C9372c;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.services.C9388f;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2037e;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.download.e */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/e.class */
public class C9356e implements Handler.Callback {

    /* renamed from: d */
    private final FileDownloadModel f40009d;

    /* renamed from: f */
    private final C9357a f40011f;

    /* renamed from: g */
    private final int f40012g;

    /* renamed from: h */
    private final int f40013h;

    /* renamed from: i */
    private final int f40014i;

    /* renamed from: j */
    private long f40015j;

    /* renamed from: k */
    private Handler f40016k;

    /* renamed from: l */
    private HandlerThread f40017l;

    /* renamed from: n */
    private volatile Thread f40019n;

    /* renamed from: m */
    private volatile boolean f40018m = false;

    /* renamed from: o */
    private volatile long f40020o = 0;

    /* renamed from: p */
    private final AtomicLong f40021p = new AtomicLong();

    /* renamed from: q */
    private final AtomicBoolean f40022q = new AtomicBoolean(false);

    /* renamed from: r */
    private final AtomicBoolean f40023r = new AtomicBoolean(false);

    /* renamed from: s */
    private final AtomicBoolean f40024s = new AtomicBoolean(true);

    /* renamed from: e */
    private final AbstractC2003a f40010e = C9351c.m979j().m983f();

    /* renamed from: com.liulishuo.filedownloader.download.e$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/e$a.class */
    public static class C9357a {

        /* renamed from: a */
        private boolean f40025a;

        /* renamed from: b */
        private Exception f40026b;

        /* renamed from: c */
        private int f40027c;

        /* renamed from: a */
        public Exception m936a() {
            return this.f40026b;
        }

        /* renamed from: b */
        public int m935b() {
            return this.f40027c;
        }

        /* renamed from: c */
        public boolean m934c() {
            return this.f40025a;
        }

        /* renamed from: d */
        void m933d(Exception exc) {
            this.f40026b = exc;
        }

        /* renamed from: e */
        void m932e(boolean z) {
            this.f40025a = z;
        }

        /* renamed from: f */
        void m931f(int i) {
            this.f40027c = i;
        }
    }

    public C9356e(FileDownloadModel fileDownloadModel, int i, int i2, int i3) {
        this.f40009d = fileDownloadModel;
        this.f40013h = i2 < 5 ? 5 : i2;
        this.f40014i = i3;
        this.f40011f = new C9357a();
        this.f40012g = i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    private static long m960a(long j, long j2) {
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
        if (p078c.p122d.p123a.p128i0.C2037e.m28244a().f7157f != false) goto L6;
     */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Exception m958c(java.lang.Exception r11) {
        /*
            r10 = this;
            r0 = r10
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f40009d
            java.lang.String r0 = r0.m854j()
            r12 = r0
            r0 = r10
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f40009d
            boolean r0 = r0.m850n()
            if (r0 != 0) goto L1d
            r0 = r11
            r13 = r0
            c.d.a.i0.e r0 = p078c.p122d.p123a.p128i0.C2037e.m28244a()
            boolean r0 = r0.f7157f
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
            long r0 = p078c.p122d.p123a.p128i0.C2040f.m28197x(r0)
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
            p078c.p122d.p123a.p128i0.C2036d.m28251c(r0, r1, r2, r3)
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
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C9356e.m958c(java.lang.Exception):java.lang.Exception");
    }

    /* renamed from: d */
    private void m957d() {
        m938w();
        this.f40009d.m867B((byte) -3);
        this.f40010e.mo28321d(this.f40009d.m859e(), this.f40009d.m853k());
        this.f40010e.mo28317h(this.f40009d.m859e());
        m939v((byte) -3);
        if (C2037e.m28244a().f7158g) {
            C9388f.m774a(this.f40009d);
        }
    }

    /* renamed from: e */
    private void m956e(Exception exc) {
        Exception m958c = m958c(exc);
        if (m958c instanceof SQLiteFullException) {
            m952i((SQLiteFullException) m958c);
            e = m958c;
        } else {
            try {
                this.f40009d.m867B((byte) -1);
                this.f40009d.m844v(exc.toString());
                this.f40010e.mo28314k(this.f40009d.m859e(), m958c, this.f40009d.m857g());
                e = m958c;
            } catch (SQLiteFullException e) {
                e = e;
                m952i(e);
            }
        }
        this.f40011f.m933d(e);
        m939v((byte) -1);
    }

    /* renamed from: f */
    private void m955f() {
        this.f40009d.m867B((byte) -2);
        this.f40010e.mo28308q(this.f40009d.m859e(), this.f40009d.m857g());
        m939v((byte) -2);
    }

    /* renamed from: g */
    private void m954g() {
        if (this.f40009d.m857g() == this.f40009d.m853k()) {
            this.f40010e.mo28313l(this.f40009d.m859e(), this.f40009d.m857g());
            return;
        }
        if (this.f40023r.compareAndSet(true, false)) {
            if (C2036d.f7151a) {
                C2036d.m28249e(this, "handleProgress update model's status with progress", new Object[0]);
            }
            this.f40009d.m867B((byte) 3);
        }
        if (!this.f40022q.compareAndSet(true, false)) {
            return;
        }
        if (C2036d.f7151a) {
            C2036d.m28249e(this, "handleProgress notify user progress status", new Object[0]);
        }
        m939v((byte) 3);
    }

    /* renamed from: h */
    private void m953h(Exception exc, int i) {
        Exception m958c = m958c(exc);
        this.f40011f.m933d(m958c);
        this.f40011f.m931f(this.f40012g - i);
        this.f40009d.m867B((byte) 5);
        this.f40009d.m844v(m958c.toString());
        this.f40010e.mo28322c(this.f40009d.m859e(), m958c);
        m939v((byte) 5);
    }

    /* renamed from: i */
    private void m952i(SQLiteFullException sQLiteFullException) {
        int m859e = this.f40009d.m859e();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly.", Integer.valueOf(m859e), sQLiteFullException.toString());
        }
        this.f40009d.m844v(sQLiteFullException.toString());
        this.f40009d.m867B((byte) -1);
        this.f40010e.remove(m859e);
        this.f40010e.mo28317h(m859e);
    }

    /* renamed from: j */
    private void m951j(long j) {
        boolean z;
        if (!this.f40024s.compareAndSet(true, false)) {
            long j2 = this.f40020o;
            if (this.f40015j == -1 || this.f40021p.get() < this.f40015j || j - j2 < this.f40013h) {
                z = false;
                if (z || !this.f40022q.compareAndSet(false, true)) {
                }
                if (C2036d.f7151a) {
                    C2036d.m28249e(this, "inspectNeedCallbackToUser need callback to user", new Object[0]);
                }
                this.f40020o = j;
                this.f40021p.set(0L);
                return;
            }
        }
        z = true;
        if (z) {
        }
    }

    /* renamed from: k */
    private boolean m950k() {
        if (this.f40009d.m850n()) {
            FileDownloadModel fileDownloadModel = this.f40009d;
            fileDownloadModel.m866C(fileDownloadModel.m857g());
            return false;
        } else if (this.f40009d.m857g() == this.f40009d.m853k()) {
            return false;
        } else {
            m946o(new FileDownloadGiveUpRetryException(C2040f.m28206o("sofar[%d] not equal total[%d]", Long.valueOf(this.f40009d.m857g()), Long.valueOf(this.f40009d.m853k()))));
            return true;
        }
    }

    /* renamed from: v */
    private void m939v(byte b) {
        if (b != -2) {
            C9369b.m885a().m884b(C9372c.m878d(b, this.f40009d, this.f40011f));
        } else if (!C2036d.f7151a) {
        } else {
            C2036d.m28253a(this, "High concurrent cause, Already paused and we don't need to call-back to Task in here, %d", Integer.valueOf(this.f40009d.m859e()));
        }
    }

    /* renamed from: w */
    private void m938w() {
        boolean z;
        Throwable th;
        String m854j = this.f40009d.m854j();
        String m855i = this.f40009d.m855i();
        File file = new File(m854j);
        try {
            File file2 = new File(m855i);
            if (file2.exists()) {
                long length = file2.length();
                if (!file2.delete()) {
                    throw new IOException(C2040f.m28206o("Can't delete the old file([%s], [%d]), so can't replace it with the new downloaded one.", m855i, Long.valueOf(length)));
                }
                C2036d.m28245i(this, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]", m855i, Long.valueOf(length), Long.valueOf(file.length()));
            }
            z = !file.renameTo(file2);
            if (!z) {
                if (!z || !file.exists() || file.delete()) {
                    return;
                }
                C2036d.m28245i(this, "delete the temp file(%s) failed, on completed downloading.", m854j);
                return;
            }
            try {
                throw new IOException(C2040f.m28206o("Can't rename the  temp downloaded file(%s) to the target file(%s)", m854j, m855i));
            } catch (Throwable th2) {
                th = th2;
                if (z && file.exists() && !file.delete()) {
                    C2036d.m28245i(this, "delete the temp file(%s) failed, on completed downloading.", m854j);
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            z = true;
        }
    }

    /* renamed from: x */
    private void m937x(Message message) {
        synchronized (this) {
            if (!this.f40017l.isAlive()) {
                if (C2036d.f7151a) {
                    C2036d.m28253a(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
                }
                return;
            }
            try {
                this.f40016k.sendMessage(message);
            } catch (IllegalStateException e) {
                if (this.f40017l.isAlive()) {
                    throw e;
                }
                if (C2036d.f7151a) {
                    C2036d.m28253a(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
                }
            }
        }
    }

    /* renamed from: b */
    public void m959b() {
        Handler handler = this.f40016k;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f40017l.quit();
            this.f40019n = Thread.currentThread();
            while (this.f40018m) {
                LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(100L));
            }
            this.f40019n = null;
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
            r0.f40018m = r1
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
            r0.m953h(r1, r2)     // Catch: java.lang.Throwable -> L42
            goto L2d
        L29:
            r0 = r4
            r0.m954g()     // Catch: java.lang.Throwable -> L42
        L2d:
            r0 = r4
            r1 = 0
            r0.f40018m = r1
            r0 = r4
            java.lang.Thread r0 = r0.f40019n
            if (r0 == 0) goto L40
            r0 = r4
            java.lang.Thread r0 = r0.f40019n
            java.util.concurrent.locks.LockSupport.unpark(r0)
        L40:
            r0 = 1
            return r0
        L42:
            r5 = move-exception
            r0 = r4
            r1 = 0
            r0.f40018m = r1
            r0 = r4
            java.lang.Thread r0 = r0.f40019n
            if (r0 == 0) goto L56
            r0 = r4
            java.lang.Thread r0 = r0.f40019n
            java.util.concurrent.locks.LockSupport.unpark(r0)
        L56:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C9356e.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: l */
    public boolean m949l() {
        HandlerThread handlerThread = this.f40017l;
        return handlerThread != null && handlerThread.isAlive();
    }

    /* renamed from: m */
    public void m948m() {
        if (m950k()) {
            return;
        }
        m957d();
    }

    /* renamed from: n */
    public void m947n(boolean z, long j, String str, String str2) {
        String m862b = this.f40009d.m862b();
        if (m862b == null || m862b.equals(str)) {
            this.f40011f.m932e(z);
            this.f40009d.m867B((byte) 2);
            this.f40009d.m866C(j);
            this.f40009d.m845u(str);
            this.f40009d.m843w(str2);
            this.f40010e.mo28312m(this.f40009d.m859e(), j, str, str2);
            m939v((byte) 2);
            this.f40015j = m960a(j, this.f40014i);
            this.f40023r.compareAndSet(false, true);
            return;
        }
        throw new IllegalArgumentException(C2040f.m28206o("callback onConnected must with precondition succeed, but the etag is changes(%s != %s)", str, m862b));
    }

    /* renamed from: o */
    public void m946o(Exception exc) {
        m956e(exc);
    }

    /* renamed from: p */
    public void m945p() {
        HandlerThread handlerThread = new HandlerThread("source-status-callback");
        this.f40017l = handlerThread;
        handlerThread.start();
        this.f40016k = new Handler(this.f40017l.getLooper(), this);
    }

    /* renamed from: q */
    public void m944q() {
        m955f();
    }

    /* renamed from: r */
    public void m943r() {
        this.f40009d.m867B((byte) 1);
        this.f40010e.mo28324a(this.f40009d.m859e());
        m939v((byte) 1);
    }

    /* renamed from: s */
    public void m942s(long j) {
        this.f40021p.addAndGet(j);
        this.f40009d.m851m(j);
        m951j(SystemClock.elapsedRealtime());
        if (this.f40016k == null) {
            m954g();
        } else if (!this.f40022q.get()) {
        } else {
            m937x(this.f40016k.obtainMessage(3));
        }
    }

    /* renamed from: t */
    public void m941t(Exception exc, int i) {
        this.f40021p.set(0L);
        Handler handler = this.f40016k;
        if (handler == null) {
            m953h(exc, i);
        } else {
            m937x(handler.obtainMessage(5, i, 0, exc));
        }
    }

    /* renamed from: u */
    public void m940u() {
        this.f40009d.m867B((byte) 6);
        m939v((byte) 6);
        this.f40010e.mo28316i(this.f40009d.m859e());
    }
}
