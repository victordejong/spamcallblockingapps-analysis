package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.download.C9345a;
import com.liulishuo.filedownloader.model.C9379a;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.download.d */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/d.class */
public class RunnableC9353d implements Runnable {

    /* renamed from: d */
    private final C9345a f39996d;

    /* renamed from: e */
    private final AbstractC9361g f39997e;

    /* renamed from: f */
    private final String f39998f;

    /* renamed from: g */
    private final boolean f39999g;

    /* renamed from: h */
    private C9358f f40000h;

    /* renamed from: i */
    private volatile boolean f40001i;

    /* renamed from: j */
    private final int f40002j;

    /* renamed from: k */
    final int f40003k;

    /* renamed from: com.liulishuo.filedownloader.download.d$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/d$b.class */
    public static class C9355b {

        /* renamed from: a */
        private final C9345a.C9347b f40004a = new C9345a.C9347b();

        /* renamed from: b */
        private AbstractC9361g f40005b;

        /* renamed from: c */
        private String f40006c;

        /* renamed from: d */
        private Boolean f40007d;

        /* renamed from: e */
        private Integer f40008e;

        /* renamed from: a */
        public RunnableC9353d m970a() {
            if (this.f40005b == null || this.f40006c == null || this.f40007d == null || this.f40008e == null) {
                throw new IllegalArgumentException(C2040f.m28206o("%s %s %B", this.f40005b, this.f40006c, this.f40007d));
            }
            C9345a m1000a = this.f40004a.m1000a();
            return new RunnableC9353d(m1000a.f39970a, this.f40008e.intValue(), m1000a, this.f40005b, this.f40007d.booleanValue(), this.f40006c);
        }

        /* renamed from: b */
        public C9355b m969b(AbstractC9361g abstractC9361g) {
            this.f40005b = abstractC9361g;
            return this;
        }

        /* renamed from: c */
        public C9355b m968c(Integer num) {
            this.f40008e = num;
            return this;
        }

        /* renamed from: d */
        public C9355b m967d(C9348b c9348b) {
            this.f40004a.m999b(c9348b);
            return this;
        }

        /* renamed from: e */
        public C9355b m966e(String str) {
            this.f40004a.m997d(str);
            return this;
        }

        /* renamed from: f */
        public C9355b m965f(FileDownloadHeader fileDownloadHeader) {
            this.f40004a.m996e(fileDownloadHeader);
            return this;
        }

        /* renamed from: g */
        public C9355b m964g(int i) {
            this.f40004a.m998c(i);
            return this;
        }

        /* renamed from: h */
        public C9355b m963h(String str) {
            this.f40006c = str;
            return this;
        }

        /* renamed from: i */
        public C9355b m962i(String str) {
            this.f40004a.m995f(str);
            return this;
        }

        /* renamed from: j */
        public C9355b m961j(boolean z) {
            this.f40007d = Boolean.valueOf(z);
            return this;
        }
    }

    private RunnableC9353d(int i, int i2, C9345a c9345a, AbstractC9361g abstractC9361g, boolean z, String str) {
        this.f40002j = i;
        this.f40003k = i2;
        this.f40001i = false;
        this.f39997e = abstractC9361g;
        this.f39998f = str;
        this.f39996d = c9345a;
        this.f39999g = z;
    }

    /* renamed from: b */
    private long m972b() {
        AbstractC2003a m983f = C9351c.m979j().m983f();
        if (this.f40003k < 0) {
            FileDownloadModel mo28310o = m983f.mo28310o(this.f40002j);
            if (mo28310o == null) {
                return 0L;
            }
            return mo28310o.m857g();
        }
        for (C9379a c9379a : m983f.mo28311n(this.f40002j)) {
            if (c9379a.m833d() == this.f40003k) {
                return c9379a.m836a();
            }
        }
        return 0L;
    }

    /* renamed from: a */
    public void m973a() {
        m971c();
    }

    /* renamed from: c */
    public void m971c() {
        this.f40001i = true;
        C9358f c9358f = this.f40000h;
        if (c9358f != null) {
            c9358f.m929b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0233  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.RunnableC9353d.run():void");
    }
}
