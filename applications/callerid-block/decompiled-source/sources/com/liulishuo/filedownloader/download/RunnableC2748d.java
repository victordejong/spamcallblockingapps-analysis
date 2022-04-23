package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.download.C2740a;
import com.liulishuo.filedownloader.model.C2774a;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.download.d */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/d.class */
public class RunnableC2748d implements Runnable {

    /* renamed from: b */
    private final C2740a f11400b;

    /* renamed from: c */
    private final AbstractC2756g f11401c;

    /* renamed from: d */
    private final String f11402d;

    /* renamed from: e */
    private final boolean f11403e;

    /* renamed from: f */
    private C2753f f11404f;

    /* renamed from: g */
    private volatile boolean f11405g;

    /* renamed from: h */
    private final int f11406h;

    /* renamed from: i */
    final int f11407i;

    /* renamed from: com.liulishuo.filedownloader.download.d$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/d$b.class */
    public static class C2750b {

        /* renamed from: a */
        private final C2740a.C2742b f11408a = new C2740a.C2742b();

        /* renamed from: b */
        private AbstractC2756g f11409b;

        /* renamed from: c */
        private String f11410c;

        /* renamed from: d */
        private Boolean f11411d;

        /* renamed from: e */
        private Integer f11412e;

        /* renamed from: a */
        public RunnableC2748d m1924a() {
            if (this.f11409b == null || this.f11410c == null || this.f11411d == null || this.f11412e == null) {
                throw new IllegalArgumentException(C3066f.m367o("%s %s %B", this.f11409b, this.f11410c, this.f11411d));
            }
            C2740a a = this.f11408a.m1954a();
            return new RunnableC2748d(a.f11374a, this.f11412e.intValue(), a, this.f11409b, this.f11411d.booleanValue(), this.f11410c);
        }

        /* renamed from: b */
        public C2750b m1923b(AbstractC2756g gVar) {
            this.f11409b = gVar;
            return this;
        }

        /* renamed from: c */
        public C2750b m1922c(Integer num) {
            this.f11412e = num;
            return this;
        }

        /* renamed from: d */
        public C2750b m1921d(C2743b bVar) {
            this.f11408a.m1953b(bVar);
            return this;
        }

        /* renamed from: e */
        public C2750b m1920e(String str) {
            this.f11408a.m1951d(str);
            return this;
        }

        /* renamed from: f */
        public C2750b m1919f(FileDownloadHeader fileDownloadHeader) {
            this.f11408a.m1950e(fileDownloadHeader);
            return this;
        }

        /* renamed from: g */
        public C2750b m1918g(int i) {
            this.f11408a.m1952c(i);
            return this;
        }

        /* renamed from: h */
        public C2750b m1917h(String str) {
            this.f11410c = str;
            return this;
        }

        /* renamed from: i */
        public C2750b m1916i(String str) {
            this.f11408a.m1949f(str);
            return this;
        }

        /* renamed from: j */
        public C2750b m1915j(boolean z) {
            this.f11411d = Boolean.valueOf(z);
            return this;
        }
    }

    private RunnableC2748d(int i, int i2, C2740a aVar, AbstractC2756g gVar, boolean z, String str) {
        this.f11406h = i;
        this.f11407i = i2;
        this.f11405g = false;
        this.f11401c = gVar;
        this.f11402d = str;
        this.f11400b = aVar;
        this.f11403e = z;
    }

    /* renamed from: b */
    private long m1926b() {
        AbstractC3026a f = C2746c.m1933j().m1937f();
        if (this.f11407i >= 0) {
            for (C2774a aVar : f.mo487n(this.f11406h)) {
                if (aVar.m1788d() == this.f11407i) {
                    return aVar.m1791a();
                }
            }
            return 0L;
        }
        FileDownloadModel o = f.mo486o(this.f11406h);
        if (o != null) {
            return o.m1811g();
        }
        return 0L;
    }

    /* renamed from: a */
    public void m1927a() {
        m1925c();
    }

    /* renamed from: c */
    public void m1925c() {
        this.f11405g = true;
        C2753f fVar = this.f11404f;
        if (fVar != null) {
            fVar.m1883b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x02d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0265  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.RunnableC2748d.run():void");
    }
}
