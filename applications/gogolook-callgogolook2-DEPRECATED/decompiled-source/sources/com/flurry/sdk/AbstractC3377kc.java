package com.flurry.sdk;

import com.flurry.sdk.AbstractC3376kb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.kc */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kc.class */
public abstract class AbstractC3377kc<ReportInfo extends AbstractC3376kb> {

    /* renamed from: a */
    public static final String f5802a = "kc";

    /* renamed from: b */
    public static long f5803b = 10000;

    /* renamed from: c */
    public boolean f5804c;

    /* renamed from: g */
    public final List<ReportInfo> f5807g = new ArrayList();

    /* renamed from: i */
    public final Runnable f5809i = new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.1
        @Override // com.flurry.sdk.AbstractRunnableC3447lc
        /* renamed from: a */
        public final void mo32300a() {
            AbstractC3377kc.this.m32562b();
        }
    };

    /* renamed from: j */
    public final AbstractC3344jl<C3309iq> f5810j = new AbstractC3344jl<C3309iq>() { // from class: com.flurry.sdk.kc.2
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3309iq iqVar) {
            if (iqVar.f5613a) {
                AbstractC3377kc.this.m32562b();
            }
        }
    };

    /* renamed from: f */
    public final C3342jj<List<ReportInfo>> f5806f = mo32566a();

    /* renamed from: d */
    public long f5805d = f5803b;

    /* renamed from: h */
    public int f5808h = -1;

    public AbstractC3377kc() {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.NetworkStateEvent", this.f5810j);
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.3
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                AbstractC3377kc kcVar = AbstractC3377kc.this;
                kcVar.mo32563a(kcVar.f5807g);
                AbstractC3377kc.this.m32562b();
            }
        });
    }

    /* renamed from: a */
    public abstract C3342jj<List<ReportInfo>> mo32566a();

    /* renamed from: a */
    public abstract void mo32565a(ReportInfo reportinfo);

    /* renamed from: a */
    public void mo32563a(List<ReportInfo> list) {
        synchronized (this) {
            C3445la.m32460b();
            List<ReportInfo> a = this.f5806f.m32641a();
            if (a != null) {
                list.addAll(a);
            }
        }
    }

    /* renamed from: b */
    public final void m32562b() {
        synchronized (this) {
            if (!this.f5804c) {
                if (this.f5808h >= 0) {
                    C3356jq.m32615a(3, f5802a, "Transmit is in progress");
                    return;
                }
                m32555d();
                if (this.f5807g.isEmpty()) {
                    this.f5805d = f5803b;
                    this.f5808h = -1;
                    return;
                }
                this.f5808h = 0;
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.4
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        AbstractC3377kc.this.m32553e();
                    }
                });
            }
        }
    }

    /* renamed from: b */
    public final void m32561b(ReportInfo reportinfo) {
        synchronized (this) {
            if (reportinfo != null) {
                this.f5807g.add(reportinfo);
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.6
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        AbstractC3377kc.this.m32562b();
                    }
                });
            }
        }
    }

    /* renamed from: b */
    public void mo32559b(List<ReportInfo> list) {
        synchronized (this) {
            C3445la.m32460b();
            this.f5806f.m32640a(new ArrayList(list));
        }
    }

    /* renamed from: c */
    public final void m32558c() {
        this.f5804c = false;
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.5
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                AbstractC3377kc.this.m32562b();
            }
        });
    }

    /* renamed from: c */
    public final void m32557c(ReportInfo reportinfo) {
        synchronized (this) {
            reportinfo.f5797o = true;
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.7
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    AbstractC3377kc.this.m32553e();
                }
            });
        }
    }

    /* renamed from: d */
    public final void m32555d() {
        synchronized (this) {
            Iterator<ReportInfo> it = this.f5807g.iterator();
            while (it.hasNext()) {
                ReportInfo next = it.next();
                if (next.f5797o) {
                    String str = f5802a;
                    C3356jq.m32615a(3, str, "Url transmitted - " + next.f5799q + " Attempts: " + next.f5798p);
                    it.remove();
                } else if (next.f5798p > next.mo32569a()) {
                    String str2 = f5802a;
                    C3356jq.m32615a(3, str2, "Exceeded max no of attempts - " + next.f5799q + " Attempts: " + next.f5798p);
                    it.remove();
                } else if (System.currentTimeMillis() > next.f5796n && next.f5798p > 0) {
                    String str3 = f5802a;
                    C3356jq.m32615a(3, str3, "Expired: Time expired - " + next.f5799q + " Attempts: " + next.f5798p);
                    it.remove();
                }
            }
        }
    }

    /* renamed from: d */
    public final void m32554d(ReportInfo reportinfo) {
        synchronized (this) {
            reportinfo.mo32567a_();
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kc.8
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    AbstractC3377kc.this.m32553e();
                }
            });
        }
    }

    /* renamed from: e */
    public final void m32553e() {
        ReportInfo reportinfo;
        synchronized (this) {
            C3445la.m32460b();
            if (C3310ir.m32715a().f5616b) {
                do {
                    reportinfo = null;
                    if (this.f5808h >= this.f5807g.size()) {
                        break;
                    }
                    List<ReportInfo> list = this.f5807g;
                    int i = this.f5808h;
                    this.f5808h = i + 1;
                    reportinfo = list.get(i);
                } while (reportinfo.f5797o);
            } else {
                C3356jq.m32615a(3, f5802a, "Network is not available, aborting transmission");
                reportinfo = null;
            }
            if (reportinfo == null) {
                m32552f();
            } else {
                mo32565a((AbstractC3377kc<ReportInfo>) reportinfo);
            }
        }
    }

    /* renamed from: f */
    public final void m32552f() {
        synchronized (this) {
            m32555d();
            mo32559b(this.f5807g);
            if (this.f5804c) {
                C3356jq.m32615a(3, f5802a, "Reporter paused");
                this.f5805d = f5803b;
            } else if (this.f5807g.isEmpty()) {
                C3356jq.m32615a(3, f5802a, "All reports sent successfully");
                this.f5805d = f5803b;
            } else {
                this.f5805d <<= 1;
                C3356jq.m32615a(3, f5802a, "One or more reports failed to send, backing off: " + this.f5805d + "ms");
                C3331jb.m32681a().m32677a(this.f5809i, this.f5805d);
            }
            this.f5808h = -1;
        }
    }
}
