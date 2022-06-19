package com.liulishuo.filedownloader.download;

import android.os.SystemClock;
import java.io.IOException;
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p101g0.AbstractC3047a;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.download.f */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/f.class */
public class C2753f {

    /* renamed from: a */
    private final AbstractC2756g f11432a;

    /* renamed from: b */
    private final int f11433b;

    /* renamed from: c */
    private final int f11434c;

    /* renamed from: d */
    private final RunnableC2748d f11435d;

    /* renamed from: e */
    private final AbstractC3020b f11436e;

    /* renamed from: f */
    private final boolean f11437f;

    /* renamed from: g */
    private final long f11438g;

    /* renamed from: h */
    private final long f11439h;

    /* renamed from: i */
    private final long f11440i;

    /* renamed from: j */
    private final String f11441j;

    /* renamed from: k */
    long f11442k;

    /* renamed from: l */
    private AbstractC3047a f11443l;

    /* renamed from: m */
    private volatile boolean f11444m;

    /* renamed from: n */
    private final AbstractC3026a f11445n;

    /* renamed from: o */
    private volatile long f11446o;

    /* renamed from: p */
    private volatile long f11447p;

    /* renamed from: com.liulishuo.filedownloader.download.f$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/f$b.class */
    public static class C2755b {

        /* renamed from: a */
        RunnableC2748d f11448a;

        /* renamed from: b */
        AbstractC3020b f11449b;

        /* renamed from: c */
        C2743b f11450c;

        /* renamed from: d */
        AbstractC2756g f11451d;

        /* renamed from: e */
        String f11452e;

        /* renamed from: f */
        Boolean f11453f;

        /* renamed from: g */
        Integer f11454g;

        /* renamed from: h */
        Integer f11455h;

        /* renamed from: a */
        public C2753f m1880a() {
            AbstractC3020b abstractC3020b;
            C2743b c2743b;
            Integer num;
            if (this.f11453f == null || (abstractC3020b = this.f11449b) == null || (c2743b = this.f11450c) == null || this.f11451d == null || this.f11452e == null || (num = this.f11455h) == null || this.f11454g == null) {
                throw new IllegalArgumentException();
            }
            return new C2753f(abstractC3020b, c2743b, this.f11448a, num.intValue(), this.f11454g.intValue(), this.f11453f.booleanValue(), this.f11451d, this.f11452e);
        }

        /* renamed from: b */
        public C2755b m1879b(AbstractC2756g abstractC2756g) {
            this.f11451d = abstractC2756g;
            return this;
        }

        /* renamed from: c */
        public C2755b m1878c(AbstractC3020b abstractC3020b) {
            this.f11449b = abstractC3020b;
            return this;
        }

        /* renamed from: d */
        public C2755b m1877d(int i) {
            this.f11454g = Integer.valueOf(i);
            return this;
        }

        /* renamed from: e */
        public C2755b m1876e(C2743b c2743b) {
            this.f11450c = c2743b;
            return this;
        }

        /* renamed from: f */
        public C2755b m1875f(int i) {
            this.f11455h = Integer.valueOf(i);
            return this;
        }

        /* renamed from: g */
        public C2755b m1874g(RunnableC2748d runnableC2748d) {
            this.f11448a = runnableC2748d;
            return this;
        }

        /* renamed from: h */
        public C2755b m1873h(String str) {
            this.f11452e = str;
            return this;
        }

        /* renamed from: i */
        public C2755b m1872i(boolean z) {
            this.f11453f = Boolean.valueOf(z);
            return this;
        }
    }

    private C2753f(AbstractC3020b abstractC3020b, C2743b c2743b, RunnableC2748d runnableC2748d, int i, int i2, boolean z, AbstractC2756g abstractC2756g, String str) {
        this.f11446o = 0L;
        this.f11447p = 0L;
        this.f11432a = abstractC2756g;
        this.f11441j = str;
        this.f11436e = abstractC3020b;
        this.f11437f = z;
        this.f11435d = runnableC2748d;
        this.f11434c = i2;
        this.f11433b = i;
        this.f11445n = C2746c.m1933j().m1937f();
        this.f11438g = c2743b.f11386a;
        this.f11439h = c2743b.f11388c;
        this.f11442k = c2743b.f11387b;
        this.f11440i = c2743b.f11389d;
    }

    /* renamed from: a */
    private void m1884a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (C3066f.m391L(this.f11442k - this.f11446o, elapsedRealtime - this.f11447p)) {
            m1881d();
            this.f11446o = this.f11442k;
            this.f11447p = elapsedRealtime;
        }
    }

    /* renamed from: d */
    private void m1881d() {
        boolean z;
        long uptimeMillis = SystemClock.uptimeMillis();
        try {
            this.f11443l.mo446b();
            z = true;
        } catch (IOException e) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s", e);
            }
            z = false;
        }
        if (z) {
            int i = this.f11434c;
            if (i >= 0) {
                this.f11445n.mo490k(this.f11433b, i, this.f11442k);
            } else {
                this.f11432a.mo1867e();
            }
            if (!C3062d.f12682a) {
                return;
            }
            C3062d.m414a(this, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]", Integer.valueOf(this.f11433b), Integer.valueOf(this.f11434c), Long.valueOf(this.f11442k), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
        }
    }

    /* renamed from: b */
    public void m1883b() {
        this.f11444m = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:151:0x0377, code lost:
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x037b, code lost:
        throw new com.liulishuo.filedownloader.exception.FileDownloadNetworkPolicyException();
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1882c() {
        /*
            Method dump skipped, instructions count: 1044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.C2753f.m1882c():void");
    }
}
