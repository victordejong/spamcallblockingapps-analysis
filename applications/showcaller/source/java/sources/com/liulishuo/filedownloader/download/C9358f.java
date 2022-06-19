package com.liulishuo.filedownloader.download;

import android.os.SystemClock;
import java.io.IOException;
import p078c.p122d.p123a.p124e0.AbstractC1995b;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p127h0.AbstractC2024a;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.download.f */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/f.class */
public class C9358f {

    /* renamed from: a */
    private final AbstractC9361g f40028a;

    /* renamed from: b */
    private final int f40029b;

    /* renamed from: c */
    private final int f40030c;

    /* renamed from: d */
    private final RunnableC9353d f40031d;

    /* renamed from: e */
    private final AbstractC1995b f40032e;

    /* renamed from: f */
    private final boolean f40033f;

    /* renamed from: g */
    private final long f40034g;

    /* renamed from: h */
    private final long f40035h;

    /* renamed from: i */
    private final long f40036i;

    /* renamed from: j */
    private final String f40037j;

    /* renamed from: k */
    long f40038k;

    /* renamed from: l */
    private AbstractC2024a f40039l;

    /* renamed from: m */
    private volatile boolean f40040m;

    /* renamed from: n */
    private final AbstractC2003a f40041n;

    /* renamed from: o */
    private volatile long f40042o;

    /* renamed from: p */
    private volatile long f40043p;

    /* renamed from: com.liulishuo.filedownloader.download.f$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/f$b.class */
    public static class C9360b {

        /* renamed from: a */
        RunnableC9353d f40044a;

        /* renamed from: b */
        AbstractC1995b f40045b;

        /* renamed from: c */
        C9348b f40046c;

        /* renamed from: d */
        AbstractC9361g f40047d;

        /* renamed from: e */
        String f40048e;

        /* renamed from: f */
        Boolean f40049f;

        /* renamed from: g */
        Integer f40050g;

        /* renamed from: h */
        Integer f40051h;

        /* renamed from: a */
        public C9358f m926a() {
            AbstractC1995b abstractC1995b;
            C9348b c9348b;
            Integer num;
            if (this.f40049f == null || (abstractC1995b = this.f40045b) == null || (c9348b = this.f40046c) == null || this.f40047d == null || this.f40048e == null || (num = this.f40051h) == null || this.f40050g == null) {
                throw new IllegalArgumentException();
            }
            return new C9358f(abstractC1995b, c9348b, this.f40044a, num.intValue(), this.f40050g.intValue(), this.f40049f.booleanValue(), this.f40047d, this.f40048e);
        }

        /* renamed from: b */
        public C9360b m925b(AbstractC9361g abstractC9361g) {
            this.f40047d = abstractC9361g;
            return this;
        }

        /* renamed from: c */
        public C9360b m924c(AbstractC1995b abstractC1995b) {
            this.f40045b = abstractC1995b;
            return this;
        }

        /* renamed from: d */
        public C9360b m923d(int i) {
            this.f40050g = Integer.valueOf(i);
            return this;
        }

        /* renamed from: e */
        public C9360b m922e(C9348b c9348b) {
            this.f40046c = c9348b;
            return this;
        }

        /* renamed from: f */
        public C9360b m921f(int i) {
            this.f40051h = Integer.valueOf(i);
            return this;
        }

        /* renamed from: g */
        public C9360b m920g(RunnableC9353d runnableC9353d) {
            this.f40044a = runnableC9353d;
            return this;
        }

        /* renamed from: h */
        public C9360b m919h(String str) {
            this.f40048e = str;
            return this;
        }

        /* renamed from: i */
        public C9360b m918i(boolean z) {
            this.f40049f = Boolean.valueOf(z);
            return this;
        }
    }

    private C9358f(AbstractC1995b abstractC1995b, C9348b c9348b, RunnableC9353d runnableC9353d, int i, int i2, boolean z, AbstractC9361g abstractC9361g, String str) {
        this.f40042o = 0L;
        this.f40043p = 0L;
        this.f40028a = abstractC9361g;
        this.f40037j = str;
        this.f40032e = abstractC1995b;
        this.f40033f = z;
        this.f40031d = runnableC9353d;
        this.f40030c = i2;
        this.f40029b = i;
        this.f40041n = C9351c.m979j().m983f();
        this.f40034g = c9348b.f39982a;
        this.f40035h = c9348b.f39984c;
        this.f40038k = c9348b.f39983b;
        this.f40036i = c9348b.f39985d;
    }

    /* renamed from: a */
    private void m930a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (C2040f.m28230L(this.f40038k - this.f40042o, elapsedRealtime - this.f40043p)) {
            m927d();
            this.f40042o = this.f40038k;
            this.f40043p = elapsedRealtime;
        }
    }

    /* renamed from: d */
    private void m927d() {
        boolean z;
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            this.f40039l.mo28277b();
            z = true;
        } catch (IOException e) {
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s", e);
            }
            z = false;
        }
        if (z) {
            int i = this.f40030c;
            if (i >= 0) {
                this.f40041n.mo28319f(this.f40029b, i, this.f40038k);
            } else {
                this.f40028a.mo912f();
            }
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28253a(this, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]", Integer.valueOf(this.f40029b), Integer.valueOf(this.f40030c), Long.valueOf(this.f40038k), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
        }
    }

    /* renamed from: b */
    public void m929b() {
        this.f40040m = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0351, code lost:
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0355, code lost:
        throw new com.liulishuo.filedownloader.exception.FileDownloadNetworkPolicyException();
     */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m928c() {
        /*
            Method dump skipped, instructions count: 991
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C9358f.m928c():void");
    }
}
