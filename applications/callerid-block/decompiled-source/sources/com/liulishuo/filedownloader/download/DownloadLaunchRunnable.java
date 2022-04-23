package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.download.C2740a;
import com.liulishuo.filedownloader.download.C2743b;
import com.liulishuo.filedownloader.download.RunnableC2748d;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.exception.FileDownloadHttpException;
import com.liulishuo.filedownloader.exception.FileDownloadNetworkPolicyException;
import com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException;
import com.liulishuo.filedownloader.model.C2774a;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import p092e.p096e.p097a.AbstractC3095x;
import p092e.p096e.p097a.p098d0.AbstractC3020b;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p101g0.AbstractC3047a;
import p092e.p096e.p097a.p102h0.C3054b;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3063e;
import p092e.p096e.p097a.p102h0.C3066f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable.class */
public class DownloadLaunchRunnable implements Runnable, AbstractC2756g {

    /* renamed from: x */
    private static final ThreadPoolExecutor f11343x = C3054b.m427c("ConnectionBlock");

    /* renamed from: b */
    private final C2751e f11344b;

    /* renamed from: c */
    private final FileDownloadModel f11345c;

    /* renamed from: d */
    private final FileDownloadHeader f11346d;

    /* renamed from: e */
    private final boolean f11347e;

    /* renamed from: f */
    private final boolean f11348f;

    /* renamed from: g */
    private final AbstractC3026a f11349g;

    /* renamed from: h */
    private final AbstractC3095x f11350h;

    /* renamed from: i */
    private boolean f11351i;

    /* renamed from: j */
    int f11352j;

    /* renamed from: k */
    private boolean f11353k;

    /* renamed from: l */
    private final boolean f11354l;

    /* renamed from: m */
    private final ArrayList<RunnableC2748d> f11355m;

    /* renamed from: n */
    private RunnableC2748d f11356n;

    /* renamed from: o */
    private boolean f11357o;

    /* renamed from: p */
    private boolean f11358p;

    /* renamed from: q */
    private boolean f11359q;

    /* renamed from: r */
    private boolean f11360r;

    /* renamed from: s */
    private final AtomicBoolean f11361s;

    /* renamed from: t */
    private volatile boolean f11362t;

    /* renamed from: u */
    private volatile boolean f11363u;

    /* renamed from: v */
    private volatile Exception f11364v;

    /* renamed from: w */
    private String f11365w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely.class */
    public class DiscardSafely extends Throwable {
        DiscardSafely() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly.class */
    public class RetryDirectly extends Throwable {
        RetryDirectly() {
        }
    }

    /* renamed from: com.liulishuo.filedownloader.download.DownloadLaunchRunnable$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable$b.class */
    public static class C2739b {

        /* renamed from: a */
        private FileDownloadModel f11366a;

        /* renamed from: b */
        private FileDownloadHeader f11367b;

        /* renamed from: c */
        private AbstractC3095x f11368c;

        /* renamed from: d */
        private Integer f11369d;

        /* renamed from: e */
        private Integer f11370e;

        /* renamed from: f */
        private Boolean f11371f;

        /* renamed from: g */
        private Boolean f11372g;

        /* renamed from: h */
        private Integer f11373h;

        /* renamed from: a */
        public DownloadLaunchRunnable m1972a() {
            if (this.f11366a != null && this.f11368c != null && this.f11369d != null && this.f11370e != null && this.f11371f != null && this.f11372g != null && this.f11373h != null) {
                return new DownloadLaunchRunnable(this.f11366a, this.f11367b, this.f11368c, this.f11369d.intValue(), this.f11370e.intValue(), this.f11371f.booleanValue(), this.f11372g.booleanValue(), this.f11373h.intValue());
            }
            throw new IllegalArgumentException();
        }

        /* renamed from: b */
        public C2739b m1971b(Integer num) {
            this.f11370e = num;
            return this;
        }

        /* renamed from: c */
        public C2739b m1970c(Boolean bool) {
            this.f11371f = bool;
            return this;
        }

        /* renamed from: d */
        public C2739b m1969d(FileDownloadHeader fileDownloadHeader) {
            this.f11367b = fileDownloadHeader;
            return this;
        }

        /* renamed from: e */
        public C2739b m1968e(Integer num) {
            this.f11373h = num;
            return this;
        }

        /* renamed from: f */
        public C2739b m1967f(Integer num) {
            this.f11369d = num;
            return this;
        }

        /* renamed from: g */
        public C2739b m1966g(FileDownloadModel fileDownloadModel) {
            this.f11366a = fileDownloadModel;
            return this;
        }

        /* renamed from: h */
        public C2739b m1965h(AbstractC3095x xVar) {
            this.f11368c = xVar;
            return this;
        }

        /* renamed from: i */
        public C2739b m1964i(Boolean bool) {
            this.f11372g = bool;
            return this;
        }
    }

    private DownloadLaunchRunnable(FileDownloadModel fileDownloadModel, FileDownloadHeader fileDownloadHeader, AbstractC3095x xVar, int i, int i2, boolean z, boolean z2, int i3) {
        this.f11353k = false;
        this.f11355m = new ArrayList<>(5);
        this.f11361s = new AtomicBoolean(true);
        this.f11362t = false;
        this.f11351i = false;
        this.f11345c = fileDownloadModel;
        this.f11346d = fileDownloadHeader;
        this.f11347e = z;
        this.f11348f = z2;
        this.f11349g = C2746c.m1933j().m1937f();
        this.f11354l = C2746c.m1933j().m1930m();
        this.f11350h = xVar;
        this.f11352j = i3;
        this.f11344b = new C2751e(fileDownloadModel, i3, i, i2);
    }

    /* renamed from: g */
    private int m1989g(long j) {
        if (m1979q()) {
            return this.f11358p ? this.f11345c.m1817a() : C2746c.m1933j().m1940c(this.f11345c.m1813e(), this.f11345c.m1806n(), this.f11345c.m1812f(), j);
        }
        return 1;
    }

    /* renamed from: h */
    private void m1988h() {
        int e = this.f11345c.m1813e();
        if (this.f11345c.m1802s()) {
            String i = this.f11345c.m1809i();
            int r = C3066f.m364r(this.f11345c.m1806n(), i);
            if (!C3056c.m423d(e, i, this.f11347e, false)) {
                FileDownloadModel o = this.f11349g.mo486o(r);
                if (o != null) {
                    if (!C3056c.m422e(e, o, this.f11350h, false)) {
                        List<C2774a> n = this.f11349g.mo487n(r);
                        this.f11349g.remove(r);
                        this.f11349g.mo498c(r);
                        C3066f.m377e(this.f11345c.m1809i());
                        if (C3066f.m396G(r, o)) {
                            this.f11345c.m1822C(o.m1811g());
                            this.f11345c.m1820E(o.m1807m());
                            this.f11345c.m1799w(o.m1816b());
                            this.f11345c.m1800v(o.m1817a());
                            this.f11349g.mo493h(this.f11345c);
                            if (n != null) {
                                for (C2774a aVar : n) {
                                    aVar.m1783i(e);
                                    this.f11349g.mo499b(aVar);
                                }
                            }
                            throw new RetryDirectly();
                        }
                    } else {
                        this.f11349g.remove(e);
                        this.f11349g.mo498c(e);
                        throw new DiscardSafely();
                    }
                }
                if (C3056c.m424c(e, this.f11345c.m1811g(), this.f11345c.m1808l(), i, this.f11350h)) {
                    this.f11349g.remove(e);
                    this.f11349g.mo498c(e);
                    throw new DiscardSafely();
                }
                return;
            }
            this.f11349g.remove(e);
            this.f11349g.mo498c(e);
            throw new DiscardSafely();
        }
    }

    /* renamed from: i */
    private void m1987i() {
        if (this.f11348f && !C3066f.m381a("android.permission.ACCESS_NETWORK_STATE")) {
            throw new FileDownloadGiveUpRetryException(C3066f.m367o("Task[%d] can't start the download runnable, because this task require wifi, but user application nor current process has %s, so we can't check whether the network type connection.", Integer.valueOf(this.f11345c.m1813e()), "android.permission.ACCESS_NETWORK_STATE"));
        } else if (this.f11348f && C3066f.m390M()) {
            throw new FileDownloadNetworkPolicyException();
        }
    }

    /* renamed from: j */
    private void m1986j(List<C2774a> list, long j) {
        int e = this.f11345c.m1813e();
        String str = this.f11345c.m1816b();
        String str2 = this.f11365w;
        if (str2 == null) {
            str2 = this.f11345c.m1806n();
        }
        String l = this.f11345c.m1808l();
        if (C3062d.f12682a) {
            C3062d.m414a(this, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]", Integer.valueOf(list.size()), Integer.valueOf(e), Long.valueOf(j));
        }
        boolean z = this.f11358p;
        long j2 = 0;
        for (C2774a aVar : list) {
            long a = aVar.m1790b() == -1 ? j - aVar.m1791a() : (aVar.m1790b() - aVar.m1791a()) + 1;
            j2 += aVar.m1791a() - aVar.m1787e();
            if (a != 0) {
                RunnableC2748d.C2750b bVar = new RunnableC2748d.C2750b();
                C2743b b = C2743b.C2745b.m1946b(aVar.m1787e(), aVar.m1791a(), aVar.m1790b(), a);
                bVar.m1918g(e);
                bVar.m1922c(Integer.valueOf(aVar.m1788d()));
                bVar.m1923b(this);
                bVar.m1916i(str2);
                if (!z) {
                    str = null;
                }
                bVar.m1920e(str);
                bVar.m1919f(this.f11346d);
                bVar.m1915j(this.f11348f);
                bVar.m1921d(b);
                bVar.m1917h(l);
                RunnableC2748d a2 = bVar.m1924a();
                if (C3062d.f12682a) {
                    C3062d.m414a(this, "enable multiple connection: %s", aVar);
                }
                if (a2 != null) {
                    this.f11355m.add(a2);
                } else {
                    throw new IllegalArgumentException("the download runnable must not be null!");
                }
            } else if (C3062d.f12682a) {
                C3062d.m414a(this, "pass connection[%d-%d], because it has been completed", Integer.valueOf(aVar.m1789c()), Integer.valueOf(aVar.m1788d()));
            }
        }
        if (j2 != this.f11345c.m1811g()) {
            C3062d.m406i(this, "correct the sofar[%d] from connection table[%d]", Long.valueOf(this.f11345c.m1811g()), Long.valueOf(j2));
            this.f11345c.m1822C(j2);
        }
        ArrayList arrayList = new ArrayList(this.f11355m.size());
        Iterator<RunnableC2748d> it = this.f11355m.iterator();
        while (it.hasNext()) {
            RunnableC2748d next = it.next();
            if (this.f11362t) {
                next.m1925c();
            } else {
                arrayList.add(Executors.callable(next));
            }
        }
        if (this.f11362t) {
            this.f11345c.m1821D((byte) -2);
            return;
        }
        List<Future> invokeAll = f11343x.invokeAll(arrayList);
        if (C3062d.f12682a) {
            for (Future future : invokeAll) {
                C3062d.m414a(this, "finish sub-task for [%d] %B %B", Integer.valueOf(e), Boolean.valueOf(future.isDone()), Boolean.valueOf(future.isCancelled()));
            }
        }
    }

    /* renamed from: m */
    private void m1983m(long j, String str) {
        AbstractC3047a aVar = null;
        AbstractC3047a aVar2 = null;
        if (j != -1) {
            try {
                AbstractC3047a c = C3066f.m379c(this.f11345c.m1808l());
                long length = new File(str).length();
                long j2 = j - length;
                long x = C3066f.m358x(str);
                if (x >= j2) {
                    aVar = c;
                    if (!C3063e.m405a().f12688f) {
                        c.mo447a(j);
                        aVar = c;
                    }
                } else {
                    throw new FileDownloadOutOfSpaceException(x, j2, length);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    aVar2.close();
                }
                throw th;
            }
        }
        if (aVar != null) {
            aVar.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ce  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1982n(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, com.liulishuo.filedownloader.download.C2740a r11, p092e.p096e.p097a.p098d0.AbstractC3020b r12) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.m1982n(java.util.Map, com.liulishuo.filedownloader.download.a, e.e.a.d0.b):void");
    }

    /* renamed from: q */
    private boolean m1979q() {
        if (this.f11358p && this.f11345c.m1817a() <= 1) {
            return false;
        }
        boolean z = false;
        if (this.f11359q) {
            z = false;
            if (this.f11354l) {
                z = false;
                if (!this.f11360r) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: t */
    private void m1976t(long j, int i) {
        long j2 = j / i;
        int e = this.f11345c.m1813e();
        ArrayList arrayList = new ArrayList();
        long j3 = 0;
        int i2 = 0;
        while (i2 < i) {
            long j4 = i2 == i - 1 ? -1L : (j3 + j2) - 1;
            C2774a aVar = new C2774a();
            aVar.m1783i(e);
            aVar.m1782j(i2);
            aVar.m1781k(j3);
            aVar.m1785g(j3);
            aVar.m1784h(j4);
            arrayList.add(aVar);
            this.f11349g.mo499b(aVar);
            j3 += j2;
            i2++;
        }
        this.f11345c.m1800v(i);
        this.f11349g.mo485p(e, i);
        m1986j(arrayList, j);
    }

    /* renamed from: u */
    private void m1975u(int i, List<C2774a> list) {
        if (i <= 1 || list.size() != i) {
            throw new IllegalArgumentException();
        }
        m1986j(list, this.f11345c.m1807m());
    }

    /* renamed from: v */
    private void m1974v(long j) {
        C2743b bVar;
        if (!this.f11359q) {
            this.f11345c.m1822C(0L);
            bVar = C2743b.C2745b.m1947a(j);
        } else {
            bVar = C2743b.C2745b.m1945c(this.f11345c.m1811g(), this.f11345c.m1811g(), j - this.f11345c.m1811g());
        }
        RunnableC2748d.C2750b bVar2 = new RunnableC2748d.C2750b();
        bVar2.m1918g(this.f11345c.m1813e());
        bVar2.m1922c(-1);
        bVar2.m1923b(this);
        bVar2.m1916i(this.f11345c.m1806n());
        bVar2.m1920e(this.f11345c.m1816b());
        bVar2.m1919f(this.f11346d);
        bVar2.m1915j(this.f11348f);
        bVar2.m1921d(bVar);
        bVar2.m1917h(this.f11345c.m1808l());
        this.f11356n = bVar2.m1924a();
        this.f11345c.m1800v(1);
        this.f11349g.mo485p(this.f11345c.m1813e(), 1);
        if (this.f11362t) {
            this.f11345c.m1821D((byte) -2);
            this.f11356n.m1925c();
            return;
        }
        this.f11356n.run();
    }

    /* renamed from: w */
    private void m1973w() {
        AbstractC3020b bVar = null;
        try {
            C2743b e = this.f11353k ? C2743b.C2745b.m1943e() : C2743b.C2745b.m1944d();
            C2740a.C2742b bVar2 = new C2740a.C2742b();
            bVar2.m1952c(this.f11345c.m1813e());
            bVar2.m1949f(this.f11345c.m1806n());
            bVar2.m1951d(this.f11345c.m1816b());
            bVar2.m1950e(this.f11346d);
            bVar2.m1953b(e);
            C2740a a = bVar2.m1954a();
            AbstractC3020b c = a.m1961c();
            bVar = c;
            m1982n(a.m1957g(), a, c);
            if (c != null) {
                c.mo521f();
            }
        } catch (Throwable th) {
            if (bVar != null) {
                bVar.mo521f();
            }
            throw th;
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC2756g
    /* renamed from: a */
    public void mo1871a(long j) {
        if (!this.f11362t) {
            this.f11344b.m1896s(j);
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC2756g
    /* renamed from: b */
    public boolean mo1870b(Exception exc) {
        boolean z = true;
        if (exc instanceof FileDownloadHttpException) {
            int code = ((FileDownloadHttpException) exc).getCode();
            if (this.f11357o && code == 416 && !this.f11351i) {
                C3066f.m376f(this.f11345c.m1809i(), this.f11345c.m1808l());
                this.f11351i = true;
                return true;
            }
        }
        if (this.f11352j <= 0 || (exc instanceof FileDownloadGiveUpRetryException)) {
            z = false;
        }
        return z;
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC2756g
    /* renamed from: c */
    public void mo1869c(RunnableC2748d dVar, long j, long j2) {
        if (!this.f11362t) {
            int i = dVar.f11407i;
            if (C3062d.f12682a) {
                C3062d.m414a(this, "the connection has been completed(%d): [%d, %d)  %d", Integer.valueOf(i), Long.valueOf(j), Long.valueOf(j2), Long.valueOf(this.f11345c.m1807m()));
            }
            if (!this.f11357o) {
                synchronized (this.f11355m) {
                    this.f11355m.remove(dVar);
                }
            } else if (j != 0 && j2 != this.f11345c.m1807m()) {
                C3062d.m413b(this, "the single task not completed corrected(%d, %d != %d) for task(%d)", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(this.f11345c.m1807m()), Integer.valueOf(this.f11345c.m1813e()));
            }
        } else if (C3062d.f12682a) {
            C3062d.m414a(this, "the task[%d] has already been paused, so pass the completed callback", Integer.valueOf(this.f11345c.m1813e()));
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC2756g
    /* renamed from: d */
    public void mo1868d(Exception exc) {
        this.f11363u = true;
        this.f11364v = exc;
        if (!this.f11362t) {
            Iterator it = ((ArrayList) this.f11355m.clone()).iterator();
            while (it.hasNext()) {
                RunnableC2748d dVar = (RunnableC2748d) it.next();
                if (dVar != null) {
                    dVar.m1927a();
                }
            }
        } else if (C3062d.f12682a) {
            C3062d.m414a(this, "the task[%d] has already been paused, so pass the error callback", Integer.valueOf(this.f11345c.m1813e()));
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC2756g
    /* renamed from: e */
    public void mo1867e() {
        this.f11349g.mo489l(this.f11345c.m1813e(), this.f11345c.m1811g());
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC2756g
    /* renamed from: f */
    public void mo1866f(Exception exc) {
        if (!this.f11362t) {
            int i = this.f11352j;
            int i2 = i - 1;
            this.f11352j = i2;
            if (i < 0) {
                C3062d.m413b(this, "valid retry times is less than 0(%d) for download task(%d)", Integer.valueOf(i2), Integer.valueOf(this.f11345c.m1813e()));
            }
            this.f11344b.m1895t(exc, this.f11352j);
        } else if (C3062d.f12682a) {
            C3062d.m414a(this, "the task[%d] has already been paused, so pass the retry callback", Integer.valueOf(this.f11345c.m1813e()));
        }
    }

    /* renamed from: k */
    public int m1985k() {
        return this.f11345c.m1813e();
    }

    /* renamed from: l */
    public String m1984l() {
        return this.f11345c.m1808l();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m1981o(java.util.List<com.liulishuo.filedownloader.model.C2774a> r6) {
        /*
            r5 = this;
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11345c
            int r0 = r0.m1817a()
            r7 = r0
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11345c
            java.lang.String r0 = r0.m1808l()
            r8 = r0
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11345c
            java.lang.String r0 = r0.m1809i()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r1 = 1
            if (r0 <= r1) goto L_0x0027
            r0 = 1
            r11 = r0
            goto L_0x002a
        L_0x0027:
            r0 = 0
            r11 = r0
        L_0x002a:
            r0 = r5
            boolean r0 = r0.f11353k
            if (r0 == 0) goto L_0x0037
        L_0x0031:
            r0 = 0
            r12 = r0
            goto L_0x0092
        L_0x0037:
            r0 = r11
            if (r0 == 0) goto L_0x0046
            r0 = r5
            boolean r0 = r0.f11354l
            if (r0 != 0) goto L_0x0046
            goto L_0x0031
        L_0x0046:
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11345c
            int r0 = r0.m1813e()
            r1 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r1 = r1.f11345c
            boolean r0 = p092e.p096e.p097a.p102h0.C3066f.m396G(r0, r1)
            if (r0 == 0) goto L_0x0031
            r0 = r5
            boolean r0 = r0.f11354l
            if (r0 != 0) goto L_0x006e
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            long r0 = r0.length()
            r12 = r0
            goto L_0x0092
        L_0x006e:
            r0 = r11
            if (r0 == 0) goto L_0x0089
            r0 = r7
            r1 = r6
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0080
            goto L_0x0031
        L_0x0080:
            r0 = r6
            long r0 = com.liulishuo.filedownloader.model.C2774a.m1786f(r0)
            r12 = r0
            goto L_0x0092
        L_0x0089:
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11345c
            long r0 = r0.m1811g()
            r12 = r0
        L_0x0092:
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f11345c
            r1 = r12
            r0.m1822C(r1)
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00a5
            r0 = 1
            r10 = r0
        L_0x00a5:
            r0 = r5
            r1 = r10
            r0.f11358p = r1
            r0 = r10
            if (r0 != 0) goto L_0x00c6
            r0 = r5
            e.e.a.e0.a r0 = r0.f11349g
            r1 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r1 = r1.f11345c
            int r1 = r1.m1813e()
            r0.mo498c(r1)
            r0 = r9
            r1 = r8
            p092e.p096e.p097a.p102h0.C3066f.m376f(r0, r1)
        L_0x00c6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.m1981o(java.util.List):void");
    }

    /* renamed from: p */
    public boolean m1980p() {
        return this.f11361s.get() || this.f11344b.m1903l();
    }

    /* renamed from: r */
    public void m1978r() {
        this.f11362t = true;
        RunnableC2748d dVar = this.f11356n;
        if (dVar != null) {
            dVar.m1925c();
        }
        Iterator it = ((ArrayList) this.f11355m.clone()).iterator();
        while (it.hasNext()) {
            RunnableC2748d dVar2 = (RunnableC2748d) it.next();
            if (dVar2 != null) {
                dVar2.m1925c();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02ac A[Catch: all -> 0x0302, TRY_LEAVE, TryCatch #1 {all -> 0x0302, blocks: (B:2:0x0000, B:5:0x0012, B:7:0x001e, B:9:0x0024, B:10:0x003f, B:23:0x00c0, B:25:0x00c7, B:27:0x00cf, B:29:0x00d5, B:31:0x00db, B:39:0x011c, B:41:0x0145, B:48:0x0177, B:58:0x01c4, B:60:0x01cb, B:71:0x020b, B:73:0x0216, B:74:0x021e, B:76:0x022c, B:77:0x0235, B:78:0x023e, B:79:0x0258, B:81:0x025a, B:95:0x02a4, B:97:0x02ac, B:98:0x02b4), top: B:126:0x0000, inners: #5, #16, #12, #11 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 853
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.run():void");
    }

    /* renamed from: s */
    public void m1977s() {
        m1981o(this.f11349g.mo487n(this.f11345c.m1813e()));
        this.f11344b.m1897r();
    }
}
