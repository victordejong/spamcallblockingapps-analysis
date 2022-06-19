package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.download.C9345a;
import com.liulishuo.filedownloader.download.C9348b;
import com.liulishuo.filedownloader.download.RunnableC9353d;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.exception.FileDownloadHttpException;
import com.liulishuo.filedownloader.exception.FileDownloadNetworkPolicyException;
import com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException;
import com.liulishuo.filedownloader.model.C9379a;
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
import p078c.p122d.p123a.AbstractC2069y;
import p078c.p122d.p123a.p124e0.AbstractC1995b;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p127h0.AbstractC2024a;
import p078c.p122d.p123a.p128i0.C2029b;
import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2037e;
import p078c.p122d.p123a.p128i0.C2040f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable.class */
public class DownloadLaunchRunnable implements Runnable, AbstractC9361g {

    /* renamed from: d */
    private static final ThreadPoolExecutor f39934d = C2029b.m28263c("ConnectionBlock");

    /* renamed from: A */
    private String f39935A;

    /* renamed from: B */
    private long f39936B;

    /* renamed from: C */
    private long f39937C;

    /* renamed from: D */
    private long f39938D;

    /* renamed from: E */
    private long f39939E;

    /* renamed from: e */
    private final C9356e f39940e;

    /* renamed from: f */
    private final int f39941f;

    /* renamed from: g */
    private final FileDownloadModel f39942g;

    /* renamed from: h */
    private final FileDownloadHeader f39943h;

    /* renamed from: i */
    private final boolean f39944i;

    /* renamed from: j */
    private final boolean f39945j;

    /* renamed from: k */
    private final AbstractC2003a f39946k;

    /* renamed from: l */
    private final AbstractC2069y f39947l;

    /* renamed from: m */
    private boolean f39948m;

    /* renamed from: n */
    int f39949n;

    /* renamed from: o */
    private boolean f39950o;

    /* renamed from: p */
    private final boolean f39951p;

    /* renamed from: q */
    private final ArrayList<RunnableC9353d> f39952q;

    /* renamed from: r */
    private RunnableC9353d f39953r;

    /* renamed from: s */
    private boolean f39954s;

    /* renamed from: t */
    private boolean f39955t;

    /* renamed from: u */
    private boolean f39956u;

    /* renamed from: v */
    private boolean f39957v;

    /* renamed from: w */
    private final AtomicBoolean f39958w;

    /* renamed from: x */
    private volatile boolean f39959x;

    /* renamed from: y */
    private volatile boolean f39960y;

    /* renamed from: z */
    private volatile Exception f39961z;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable$DiscardSafely.class */
    public class DiscardSafely extends Throwable {
        DiscardSafely() {
            DownloadLaunchRunnable.this = r4;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable$RetryDirectly.class */
    public class RetryDirectly extends Throwable {
        RetryDirectly() {
            DownloadLaunchRunnable.this = r4;
        }
    }

    /* renamed from: com.liulishuo.filedownloader.download.DownloadLaunchRunnable$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/download/DownloadLaunchRunnable$b.class */
    public static class C9344b {

        /* renamed from: a */
        private FileDownloadModel f39962a;

        /* renamed from: b */
        private FileDownloadHeader f39963b;

        /* renamed from: c */
        private AbstractC2069y f39964c;

        /* renamed from: d */
        private Integer f39965d;

        /* renamed from: e */
        private Integer f39966e;

        /* renamed from: f */
        private Boolean f39967f;

        /* renamed from: g */
        private Boolean f39968g;

        /* renamed from: h */
        private Integer f39969h;

        /* renamed from: a */
        public DownloadLaunchRunnable m1018a() {
            if (this.f39962a == null || this.f39964c == null || this.f39965d == null || this.f39966e == null || this.f39967f == null || this.f39968g == null || this.f39969h == null) {
                throw new IllegalArgumentException();
            }
            return new DownloadLaunchRunnable(this.f39962a, this.f39963b, this.f39964c, this.f39965d.intValue(), this.f39966e.intValue(), this.f39967f.booleanValue(), this.f39968g.booleanValue(), this.f39969h.intValue());
        }

        /* renamed from: b */
        public C9344b m1017b(Integer num) {
            this.f39966e = num;
            return this;
        }

        /* renamed from: c */
        public C9344b m1016c(Boolean bool) {
            this.f39967f = bool;
            return this;
        }

        /* renamed from: d */
        public C9344b m1015d(FileDownloadHeader fileDownloadHeader) {
            this.f39963b = fileDownloadHeader;
            return this;
        }

        /* renamed from: e */
        public C9344b m1014e(Integer num) {
            this.f39969h = num;
            return this;
        }

        /* renamed from: f */
        public C9344b m1013f(Integer num) {
            this.f39965d = num;
            return this;
        }

        /* renamed from: g */
        public C9344b m1012g(FileDownloadModel fileDownloadModel) {
            this.f39962a = fileDownloadModel;
            return this;
        }

        /* renamed from: h */
        public C9344b m1011h(AbstractC2069y abstractC2069y) {
            this.f39964c = abstractC2069y;
            return this;
        }

        /* renamed from: i */
        public C9344b m1010i(Boolean bool) {
            this.f39968g = bool;
            return this;
        }
    }

    private DownloadLaunchRunnable(FileDownloadModel fileDownloadModel, FileDownloadHeader fileDownloadHeader, AbstractC2069y abstractC2069y, int i, int i2, boolean z, boolean z2, int i3) {
        this.f39941f = 5;
        this.f39950o = false;
        this.f39952q = new ArrayList<>(5);
        this.f39936B = 0L;
        this.f39937C = 0L;
        this.f39938D = 0L;
        this.f39939E = 0L;
        this.f39958w = new AtomicBoolean(true);
        this.f39959x = false;
        this.f39948m = false;
        this.f39942g = fileDownloadModel;
        this.f39943h = fileDownloadHeader;
        this.f39944i = z;
        this.f39945j = z2;
        this.f39946k = C9351c.m979j().m983f();
        this.f39951p = C9351c.m979j().m976m();
        this.f39947l = abstractC2069y;
        this.f39949n = i3;
        this.f39940e = new C9356e(fileDownloadModel, i3, i, i2);
    }

    /* renamed from: g */
    private int m1035g(long j) {
        if (m1025q()) {
            return this.f39955t ? this.f39942g.m863a() : C9351c.m979j().m986c(this.f39942g.m859e(), this.f39942g.m852l(), this.f39942g.m858f(), j);
        }
        return 1;
    }

    /* renamed from: h */
    private void m1034h() {
        int m859e = this.f39942g.m859e();
        if (this.f39942g.m848r()) {
            String m855i = this.f39942g.m855i();
            int m28203r = C2040f.m28203r(this.f39942g.m852l(), m855i);
            if (C2031c.m28259d(m859e, m855i, this.f39944i, false)) {
                this.f39946k.remove(m859e);
                this.f39946k.mo28317h(m859e);
                throw new DiscardSafely();
            }
            FileDownloadModel mo28310o = this.f39946k.mo28310o(m28203r);
            if (mo28310o != null) {
                if (C2031c.m28258e(m859e, mo28310o, this.f39947l, false)) {
                    this.f39946k.remove(m859e);
                    this.f39946k.mo28317h(m859e);
                    throw new DiscardSafely();
                }
                List<C9379a> mo28311n = this.f39946k.mo28311n(m28203r);
                this.f39946k.remove(m28203r);
                this.f39946k.mo28317h(m28203r);
                C2040f.m28216e(this.f39942g.m855i());
                if (C2040f.m28235G(m28203r, mo28310o)) {
                    this.f39942g.m868A(mo28310o.m857g());
                    this.f39942g.m866C(mo28310o.m853k());
                    this.f39942g.m845u(mo28310o.m862b());
                    this.f39942g.m846t(mo28310o.m863a());
                    this.f39946k.mo28315j(this.f39942g);
                    if (mo28311n != null) {
                        for (C9379a c9379a : mo28311n) {
                            c9379a.m828i(m859e);
                            this.f39946k.mo28318g(c9379a);
                        }
                    }
                    throw new RetryDirectly();
                }
            }
            if (!C2031c.m28260c(m859e, this.f39942g.m857g(), this.f39942g.m854j(), m855i, this.f39947l)) {
                return;
            }
            this.f39946k.remove(m859e);
            this.f39946k.mo28317h(m859e);
            throw new DiscardSafely();
        }
    }

    /* renamed from: i */
    private void m1033i() {
        if (!this.f39945j || C2040f.m28220a("android.permission.ACCESS_NETWORK_STATE")) {
            if (this.f39945j && C2040f.m28229M()) {
                throw new FileDownloadNetworkPolicyException();
            }
            return;
        }
        throw new FileDownloadGiveUpRetryException(C2040f.m28206o("Task[%d] can't start the download runnable, because this task require wifi, but user application nor current process has %s, so we can't check whether the network type connection.", Integer.valueOf(this.f39942g.m859e()), "android.permission.ACCESS_NETWORK_STATE"));
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: j */
    private void m1032j(List<C9379a> list, long j) {
        int m859e = this.f39942g.m859e();
        String m862b = this.f39942g.m862b();
        String str = this.f39935A;
        if (str == null) {
            str = this.f39942g.m852l();
        }
        String m854j = this.f39942g.m854j();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]", Integer.valueOf(list.size()), Integer.valueOf(m859e), Long.valueOf(j));
        }
        boolean z = this.f39955t;
        char c = 0;
        for (C9379a c9379a : list) {
            char m836a = c9379a.m835b() == -1 ? j - c9379a.m836a() : (c9379a.m835b() - c9379a.m836a()) + 1;
            c += c9379a.m836a() - c9379a.m832e();
            if (m836a != 0) {
                RunnableC9353d m970a = new RunnableC9353d.C9355b().m964g(m859e).m968c(Integer.valueOf(c9379a.m833d())).m969b(this).m962i(str).m966e(z ? m862b : null).m965f(this.f39943h).m961j(this.f39945j).m967d(C9348b.C9350b.m992b(c9379a.m832e(), c9379a.m836a(), c9379a.m835b(), m836a)).m963h(m854j).m970a();
                if (C2036d.f7151a) {
                    C2036d.m28253a(this, "enable multiple connection: %s", c9379a);
                }
                if (m970a == null) {
                    throw new IllegalArgumentException("the download runnable must not be null!");
                }
                this.f39952q.add(m970a);
            } else if (C2036d.f7151a) {
                C2036d.m28253a(this, "pass connection[%d-%d], because it has been completed", Integer.valueOf(c9379a.m834c()), Integer.valueOf(c9379a.m833d()));
            }
        }
        if (c != this.f39942g.m857g()) {
            C2036d.m28245i(this, "correct the sofar[%d] from connection table[%d]", Long.valueOf(this.f39942g.m857g()), Long.valueOf(c));
            this.f39942g.m868A(c);
        }
        ArrayList arrayList = new ArrayList(this.f39952q.size());
        Iterator<RunnableC9353d> it = this.f39952q.iterator();
        while (it.hasNext()) {
            RunnableC9353d next = it.next();
            if (this.f39959x) {
                next.m971c();
            } else {
                arrayList.add(Executors.callable(next));
            }
        }
        if (this.f39959x) {
            this.f39942g.m867B((byte) -2);
            return;
        }
        List<Future> invokeAll = f39934d.invokeAll(arrayList);
        if (!C2036d.f7151a) {
            return;
        }
        for (Future future : invokeAll) {
            C2036d.m28253a(this, "finish sub-task for [%d] %B %B", Integer.valueOf(m859e), Boolean.valueOf(future.isDone()), Boolean.valueOf(future.isCancelled()));
        }
    }

    /* renamed from: m */
    private void m1029m(long j, String str) {
        AbstractC2024a abstractC2024a = null;
        AbstractC2024a abstractC2024a2 = null;
        if (j != -1) {
            try {
                AbstractC2024a m28218c = C2040f.m28218c(this.f39942g.m854j());
                long length = new File(str).length();
                long j2 = j - length;
                long m28197x = C2040f.m28197x(str);
                if (m28197x < j2) {
                    throw new FileDownloadOutOfSpaceException(m28197x, j2, length);
                }
                abstractC2024a = m28218c;
                if (!C2037e.m28244a().f7157f) {
                    m28218c.mo28278a(j);
                    abstractC2024a = m28218c;
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    abstractC2024a2.close();
                }
                throw th;
            }
        }
        if (abstractC2024a != null) {
            abstractC2024a.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ce  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1028n(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, com.liulishuo.filedownloader.download.C9345a r11, p078c.p122d.p123a.p124e0.AbstractC1995b r12) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.m1028n(java.util.Map, com.liulishuo.filedownloader.download.a, c.d.a.e0.b):void");
    }

    /* renamed from: q */
    private boolean m1025q() {
        if (!this.f39955t || this.f39942g.m863a() > 1) {
            boolean z = false;
            if (this.f39956u) {
                z = false;
                if (this.f39951p) {
                    z = false;
                    if (!this.f39957v) {
                        z = true;
                    }
                }
            }
            return z;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.liulishuo.filedownloader.download.DownloadLaunchRunnable] */
    /* renamed from: t */
    private void m1022t(long j, int i) {
        long j2 = j / i;
        int m859e = this.f39942g.m859e();
        ArrayList arrayList = new ArrayList();
        char c = 0;
        int i2 = 0;
        while (i2 < i) {
            char c2 = i2 == i - 1 ? -1 : (c + j2) - 1;
            C9379a c9379a = new C9379a();
            c9379a.m828i(m859e);
            c9379a.m827j(i2);
            c9379a.m826k(c);
            c9379a.m830g(c);
            c9379a.m829h(c2);
            arrayList.add(c9379a);
            this.f39946k.mo28318g(c9379a);
            c += j2;
            i2++;
        }
        this.f39942g.m846t(i);
        this.f39946k.mo28309p(m859e, i);
        m1032j(arrayList, j);
    }

    /* renamed from: u */
    private void m1021u(int i, List<C9379a> list) {
        if (i <= 1 || list.size() != i) {
            throw new IllegalArgumentException();
        }
        m1032j(list, this.f39942g.m853k());
    }

    /* renamed from: v */
    private void m1020v(long j) {
        C9348b c9348b;
        if (!this.f39956u) {
            this.f39942g.m868A(0L);
            c9348b = C9348b.C9350b.m993a(j);
        } else {
            c9348b = C9348b.C9350b.m991c(this.f39942g.m857g(), this.f39942g.m857g(), j - this.f39942g.m857g());
        }
        this.f39953r = new RunnableC9353d.C9355b().m964g(this.f39942g.m859e()).m968c(-1).m969b(this).m962i(this.f39942g.m852l()).m966e(this.f39942g.m862b()).m965f(this.f39943h).m961j(this.f39945j).m967d(c9348b).m963h(this.f39942g.m854j()).m970a();
        this.f39942g.m846t(1);
        this.f39946k.mo28309p(this.f39942g.m859e(), 1);
        if (!this.f39959x) {
            this.f39953r.run();
            return;
        }
        this.f39942g.m867B((byte) -2);
        this.f39953r.m971c();
    }

    /* renamed from: w */
    private void m1019w() {
        AbstractC1995b abstractC1995b = null;
        try {
            C9345a m1000a = new C9345a.C9347b().m998c(this.f39942g.m859e()).m995f(this.f39942g.m852l()).m997d(this.f39942g.m862b()).m996e(this.f39943h).m999b(this.f39950o ? C9348b.C9350b.m989e() : C9348b.C9350b.m990d()).m1000a();
            AbstractC1995b m1007c = m1000a.m1007c();
            abstractC1995b = m1007c;
            m1028n(m1000a.m1003g(), m1000a, m1007c);
            if (m1007c == null) {
                return;
            }
            m1007c.mo28345e();
        } catch (Throwable th) {
            if (abstractC1995b != null) {
                abstractC1995b.mo28345e();
            }
            throw th;
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC9361g
    /* renamed from: a */
    public void mo917a(RunnableC9353d runnableC9353d, long j, long j2) {
        if (this.f39959x) {
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28253a(this, "the task[%d] has already been paused, so pass the completed callback", Integer.valueOf(this.f39942g.m859e()));
            return;
        }
        int i = runnableC9353d.f40003k;
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "the connection has been completed(%d): [%d, %d)  %d", Integer.valueOf(i), Long.valueOf(j), Long.valueOf(j2), Long.valueOf(this.f39942g.m853k()));
        }
        if (!this.f39954s) {
            synchronized (this.f39952q) {
                this.f39952q.remove(runnableC9353d);
            }
        } else if (j == 0 || j2 == this.f39942g.m853k()) {
        } else {
            C2036d.m28252b(this, "the single task not completed corrected(%d, %d != %d) for task(%d)", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(this.f39942g.m853k()), Integer.valueOf(this.f39942g.m859e()));
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC9361g
    /* renamed from: b */
    public void mo916b(Exception exc) {
        this.f39960y = true;
        this.f39961z = exc;
        if (this.f39959x) {
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28253a(this, "the task[%d] has already been paused, so pass the error callback", Integer.valueOf(this.f39942g.m859e()));
            return;
        }
        Iterator it = ((ArrayList) this.f39952q.clone()).iterator();
        while (it.hasNext()) {
            RunnableC9353d runnableC9353d = (RunnableC9353d) it.next();
            if (runnableC9353d != null) {
                runnableC9353d.m973a();
            }
        }
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC9361g
    /* renamed from: c */
    public void mo915c(Exception exc) {
        if (this.f39959x) {
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28253a(this, "the task[%d] has already been paused, so pass the retry callback", Integer.valueOf(this.f39942g.m859e()));
            return;
        }
        int i = this.f39949n;
        int i2 = i - 1;
        this.f39949n = i2;
        if (i < 0) {
            C2036d.m28252b(this, "valid retry times is less than 0(%d) for download task(%d)", Integer.valueOf(i2), Integer.valueOf(this.f39942g.m859e()));
        }
        this.f39940e.m941t(exc, this.f39949n);
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC9361g
    /* renamed from: d */
    public void mo914d(long j) {
        if (this.f39959x) {
            return;
        }
        this.f39940e.m942s(j);
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC9361g
    /* renamed from: e */
    public boolean mo913e(Exception exc) {
        boolean z = true;
        if (exc instanceof FileDownloadHttpException) {
            int code = ((FileDownloadHttpException) exc).getCode();
            if (this.f39954s && code == 416 && !this.f39948m) {
                C2040f.m28215f(this.f39942g.m855i(), this.f39942g.m854j());
                this.f39948m = true;
                return true;
            }
        }
        if (this.f39949n <= 0 || (exc instanceof FileDownloadGiveUpRetryException)) {
            z = false;
        }
        return z;
    }

    @Override // com.liulishuo.filedownloader.download.AbstractC9361g
    /* renamed from: f */
    public void mo912f() {
        this.f39946k.mo28313l(this.f39942g.m859e(), this.f39942g.m857g());
    }

    /* renamed from: k */
    public int m1031k() {
        return this.f39942g.m859e();
    }

    /* renamed from: l */
    public String m1030l() {
        return this.f39942g.m854j();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m1027o(java.util.List<com.liulishuo.filedownloader.model.C9379a> r6) {
        /*
            r5 = this;
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f39942g
            int r0 = r0.m863a()
            r7 = r0
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f39942g
            java.lang.String r0 = r0.m854j()
            r8 = r0
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f39942g
            java.lang.String r0 = r0.m855i()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r1 = 1
            if (r0 <= r1) goto L27
            r0 = 1
            r11 = r0
            goto L2a
        L27:
            r0 = 0
            r11 = r0
        L2a:
            r0 = r5
            boolean r0 = r0.f39950o
            if (r0 == 0) goto L37
        L31:
            r0 = 0
            r12 = r0
            goto L92
        L37:
            r0 = r11
            if (r0 == 0) goto L46
            r0 = r5
            boolean r0 = r0.f39951p
            if (r0 != 0) goto L46
            goto L31
        L46:
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f39942g
            int r0 = r0.m859e()
            r1 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r1 = r1.f39942g
            boolean r0 = p078c.p122d.p123a.p128i0.C2040f.m28235G(r0, r1)
            if (r0 == 0) goto L31
            r0 = r5
            boolean r0 = r0.f39951p
            if (r0 != 0) goto L6e
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            long r0 = r0.length()
            r12 = r0
            goto L92
        L6e:
            r0 = r11
            if (r0 == 0) goto L89
            r0 = r7
            r1 = r6
            int r1 = r1.size()
            if (r0 == r1) goto L80
            goto L31
        L80:
            r0 = r6
            long r0 = com.liulishuo.filedownloader.model.C9379a.m831f(r0)
            r12 = r0
            goto L92
        L89:
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f39942g
            long r0 = r0.m857g()
            r12 = r0
        L92:
            r0 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r0.f39942g
            r1 = r12
            r0.m868A(r1)
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto La5
            r0 = 1
            r10 = r0
        La5:
            r0 = r5
            r1 = r10
            r0.f39955t = r1
            r0 = r10
            if (r0 != 0) goto Lc6
            r0 = r5
            c.d.a.f0.a r0 = r0.f39946k
            r1 = r5
            com.liulishuo.filedownloader.model.FileDownloadModel r1 = r1.f39942g
            int r1 = r1.m859e()
            r0.mo28317h(r1)
            r0 = r9
            r1 = r8
            p078c.p122d.p123a.p128i0.C2040f.m28215f(r0, r1)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.m1027o(java.util.List):void");
    }

    /* renamed from: p */
    public boolean m1026p() {
        return this.f39958w.get() || this.f39940e.m949l();
    }

    /* renamed from: r */
    public void m1024r() {
        this.f39959x = true;
        RunnableC9353d runnableC9353d = this.f39953r;
        if (runnableC9353d != null) {
            runnableC9353d.m971c();
        }
        Iterator it = ((ArrayList) this.f39952q.clone()).iterator();
        while (it.hasNext()) {
            RunnableC9353d runnableC9353d2 = (RunnableC9353d) it.next();
            if (runnableC9353d2 != null) {
                runnableC9353d2.m971c();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02ac A[Catch: all -> 0x0302, TRY_LEAVE, TryCatch #1 {all -> 0x0302, blocks: (B:2:0x0000, B:5:0x0012, B:7:0x001e, B:9:0x0024, B:10:0x003f, B:23:0x00c0, B:25:0x00c7, B:27:0x00cf, B:29:0x00d5, B:31:0x00db, B:39:0x011c, B:41:0x0145, B:48:0x0177, B:58:0x01c4, B:60:0x01cb, B:71:0x020b, B:73:0x0216, B:74:0x021e, B:76:0x022c, B:77:0x0235, B:78:0x023e, B:79:0x0258, B:81:0x025a, B:95:0x02a4, B:97:0x02ac, B:98:0x02b4), top: B:125:0x0000, inners: #5, #16, #12, #11 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.run():void");
    }

    /* renamed from: s */
    public void m1023s() {
        m1027o(this.f39946k.mo28311n(this.f39942g.m859e()));
        this.f39940e.m943r();
    }
}
