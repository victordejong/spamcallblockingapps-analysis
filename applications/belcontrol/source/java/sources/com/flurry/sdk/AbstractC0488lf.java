package com.flurry.sdk;

import com.flurry.sdk.AbstractC0487le;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.lf */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lf.class */
public abstract class AbstractC0488lf<ReportInfo extends AbstractC0487le> {

    /* renamed from: a */
    private static final String f3535a = "lf";

    /* renamed from: b */
    public static long f3536b = 10000;

    /* renamed from: c */
    public boolean f3537c;

    /* renamed from: j */
    private final AbstractC0471kp<jy> f3544j;

    /* renamed from: e */
    private final int f3539e = Integer.MAX_VALUE;

    /* renamed from: g */
    private final List<ReportInfo> f3541g = new ArrayList();

    /* renamed from: i */
    private final Runnable f3543i = new 1(this);

    /* renamed from: f */
    private final C0469kn<List<ReportInfo>> f3540f = m4561a();

    /* renamed from: d */
    public long f3538d = f3536b;

    /* renamed from: h */
    private int f3542h = -1;

    public AbstractC0488lf() {
        AbstractC0471kp<?> abstractC0471kp = new 2<>(this);
        this.f3544j = abstractC0471kp;
        C0472kq.m4617a().m4613a("com.flurry.android.sdk.NetworkStateEvent", abstractC0471kp);
        C0462kg.m4652a().m4647b(new 3(this));
    }

    /* renamed from: b */
    public void m4557b() {
        synchronized (this) {
            if (this.f3537c) {
                return;
            }
            if (this.f3542h >= 0) {
                C0478ku.m4596a(3, f3535a, "Transmit is in progress");
                return;
            }
            m4550d();
            if (this.f3541g.isEmpty()) {
                this.f3538d = f3536b;
                this.f3542h = -1;
                return;
            }
            this.f3542h = 0;
            C0462kg.m4652a().m4647b(new 4(this));
        }
    }

    /* renamed from: d */
    private void m4550d() {
        synchronized (this) {
            Iterator<ReportInfo> it = this.f3541g.iterator();
            while (it.hasNext()) {
                ReportInfo next = it.next();
                if (next.f3530o) {
                    String str = f3535a;
                    C0478ku.m4596a(3, str, "Url transmitted - " + next.f3532q + " Attempts: " + next.f3531p);
                } else if (next.f3531p > next.m4564a()) {
                    String str2 = f3535a;
                    C0478ku.m4596a(3, str2, "Exceeded max no of attempts - " + next.f3532q + " Attempts: " + next.f3531p);
                } else if (System.currentTimeMillis() > next.f3529n && next.f3531p > 0) {
                    String str3 = f3535a;
                    C0478ku.m4596a(3, str3, "Expired: Time expired - " + next.f3532q + " Attempts: " + next.f3531p);
                }
                it.remove();
            }
        }
    }

    /* renamed from: e */
    public void m4548e() {
        ReportInfo reportinfo;
        synchronized (this) {
            C0505md.m4482b();
            if (C0454jz.m4671a().f3429b) {
                do {
                    reportinfo = null;
                    if (this.f3542h >= this.f3541g.size()) {
                        break;
                    }
                    List<ReportInfo> list = this.f3541g;
                    int i = this.f3542h;
                    this.f3542h = i + 1;
                    reportinfo = list.get(i);
                } while (reportinfo.f3530o);
            } else {
                C0478ku.m4596a(3, f3535a, "Network is not available, aborting transmission");
                reportinfo = null;
            }
            if (reportinfo == null) {
                m4547f();
            } else {
                m4560a((AbstractC0488lf<ReportInfo>) reportinfo);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: f */
    private void m4547f() {
        char c;
        synchronized (this) {
            m4550d();
            m4554b(this.f3541g);
            if (this.f3537c) {
                C0478ku.m4596a(3, f3535a, "Reporter paused");
                c = f3536b;
            } else if (this.f3541g.isEmpty()) {
                C0478ku.m4596a(3, f3535a, "All reports sent successfully");
                c = f3536b;
            } else {
                this.f3538d <<= 1;
                C0478ku.m4596a(3, f3535a, "One or more reports failed to send, backing off: " + this.f3538d + "ms");
                C0462kg.m4652a().m4648a(this.f3543i, this.f3538d);
                this.f3542h = -1;
            }
            this.f3538d = c;
            this.f3542h = -1;
        }
    }

    /* renamed from: a */
    public abstract C0469kn<List<ReportInfo>> m4561a();

    /* renamed from: a */
    public abstract void m4560a(ReportInfo reportinfo);

    /* renamed from: a */
    public void m4558a(List<ReportInfo> list) {
        synchronized (this) {
            C0505md.m4482b();
            List<ReportInfo> m4623a = this.f3540f.m4623a();
            if (m4623a != null) {
                list.addAll(m4623a);
            }
        }
    }

    /* renamed from: b */
    public final void m4556b(ReportInfo reportinfo) {
        synchronized (this) {
            if (reportinfo == null) {
                return;
            }
            this.f3541g.add(reportinfo);
            C0462kg.m4652a().m4647b(new 6(this));
        }
    }

    /* renamed from: b */
    public void m4554b(List<ReportInfo> list) {
        synchronized (this) {
            C0505md.m4482b();
            this.f3540f.m4622a(new ArrayList(list));
        }
    }

    /* renamed from: c */
    public final void m4553c() {
        this.f3537c = false;
        C0462kg.m4652a().m4647b(new 5(this));
    }

    /* renamed from: c */
    public final void m4552c(ReportInfo reportinfo) {
        synchronized (this) {
            reportinfo.f3530o = true;
            C0462kg.m4652a().m4647b(new 7(this));
        }
    }

    /* renamed from: d */
    public final void m4549d(ReportInfo reportinfo) {
        synchronized (this) {
            reportinfo.m4562a_();
            C0462kg.m4652a().m4647b(new 8(this));
        }
    }
}
