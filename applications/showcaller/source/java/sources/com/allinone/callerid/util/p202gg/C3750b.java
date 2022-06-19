package com.allinone.callerid.util.p202gg;

import android.app.Activity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p154f.C2578f;
import com.allinone.callerid.util.C3718c0;
import com.google.android.gms.ads.AbstractC5621i;
import com.google.android.gms.ads.AbstractC5840o;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.p267z.AbstractC5864a;
import com.google.android.gms.ads.p267z.AbstractC5865b;
import com.google.android.gms.ads.p267z.AbstractC5866c;
/* renamed from: com.allinone.callerid.util.gg.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/b.class */
public class C3750b {

    /* renamed from: a */
    private static C3750b f11964a = new C3750b();

    /* renamed from: b */
    private AbstractC5865b f11965b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.gg.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/b$a.class */
    public class C3751a extends AbstractC5866c {

        /* renamed from: a */
        final /* synthetic */ AbstractC3754d f11966a;

        C3751a(AbstractC3754d abstractC3754d) {
            C3750b.this = r4;
            this.f11966a = abstractC3754d;
        }

        @Override // com.google.android.gms.ads.AbstractC5598c
        /* renamed from: a */
        public void mo18297a(C5756j c5756j) {
            super.mo18297a(c5756j);
            this.f11966a.mo24336b();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onAdFailedToLoad");
            }
        }

        /* renamed from: c */
        public void mo18296b(AbstractC5865b abstractC5865b) {
            super.mo18296b(abstractC5865b);
            C3750b.this.f11965b = abstractC5865b;
            this.f11966a.mo24337a();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "onAdLoaded");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.gg.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/b$b.class */
    public class C3752b extends AbstractC5621i {

        /* renamed from: a */
        final /* synthetic */ AbstractC3755e f11968a;

        C3752b(AbstractC3755e abstractC3755e) {
            C3750b.this = r4;
            this.f11968a = abstractC3755e;
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: a */
        public void mo18229a() {
            super.mo18229a();
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: b */
        public void mo18228b() {
            super.mo18228b();
            this.f11968a.mo24333c();
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: c */
        public void mo18227c(C5592a c5592a) {
            super.mo18227c(c5592a);
            this.f11968a.mo24332d();
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: d */
        public void mo18226d() {
            super.mo18226d();
        }

        @Override // com.google.android.gms.ads.AbstractC5621i
        /* renamed from: e */
        public void mo18225e() {
            super.mo18225e();
            this.f11968a.mo24334b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.gg.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/b$c.class */
    public class C3753c implements AbstractC5840o {

        /* renamed from: a */
        final /* synthetic */ AbstractC3755e f11970a;

        C3753c(AbstractC3755e abstractC3755e) {
            C3750b.this = r4;
            this.f11970a = abstractC3755e;
        }

        @Override // com.google.android.gms.ads.AbstractC5840o
        /* renamed from: a */
        public void mo17778a(AbstractC5864a abstractC5864a) {
            this.f11970a.mo24335a();
        }
    }

    /* renamed from: com.allinone.callerid.util.gg.b$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/b$d.class */
    public interface AbstractC3754d {
        /* renamed from: a */
        void mo24337a();

        /* renamed from: b */
        void mo24336b();
    }

    /* renamed from: com.allinone.callerid.util.gg.b$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/gg/b$e.class */
    public interface AbstractC3755e {
        /* renamed from: a */
        void mo24335a();

        /* renamed from: b */
        void mo24334b();

        /* renamed from: c */
        void mo24333c();

        /* renamed from: d */
        void mo24332d();
    }

    private C3750b() {
    }

    /* renamed from: b */
    public static C3750b m24341b() {
        return f11964a;
    }

    /* renamed from: c */
    public void m24340c(AbstractC3754d abstractC3754d) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "initRewardAd_request");
        }
        if (this.f11965b == null || System.currentTimeMillis() - C2578f.m27074g() >= 1800000) {
            AbstractC5865b.m17731a(EZCallApplication.m26146c(), "ca-app-pub-5825926894918682/1702975975", new C5603e.C5604a().m18282c(), new C3751a(abstractC3754d));
        } else if (!C3718c0.f11914a) {
        } else {
            C3718c0.m24436a("tony", "initRewardAd_has_cache");
        }
    }

    /* renamed from: d */
    public void m24339d(Activity activity, AbstractC3755e abstractC3755e) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("tony", "rewardedAd_show");
        }
        AbstractC5865b abstractC5865b = this.f11965b;
        if (abstractC5865b == null) {
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("tony", "onRewardedAdLoaded_NotShow");
            return;
        }
        abstractC5865b.mo12305b(new C3752b(abstractC3755e));
        this.f11965b.mo12304c(activity, new C3753c(abstractC3755e));
        this.f11965b = null;
        C2578f.m27062s(0L);
    }
}
