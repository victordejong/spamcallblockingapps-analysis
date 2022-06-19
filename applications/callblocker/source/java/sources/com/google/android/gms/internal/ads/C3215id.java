package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.id */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/id.class */
public final class C3215id {

    /* renamed from: a */
    private final Object f16746a;

    /* renamed from: b */
    private final Context f16747b;

    /* renamed from: c */
    private final String f16748c;

    /* renamed from: d */
    private final C3647yd f16749d;

    /* renamed from: e */
    private AbstractC3599wj<AbstractC3200hp> f16750e;

    /* renamed from: f */
    private AbstractC3599wj<AbstractC3200hp> f16751f;

    /* renamed from: g */
    private C3232iu f16752g;

    /* renamed from: h */
    private int f16753h;

    public C3215id(Context context, C3647yd c3647yd, String str) {
        this.f16746a = new Object();
        this.f16753h = 1;
        this.f16748c = str;
        this.f16747b = context.getApplicationContext();
        this.f16749d = c3647yd;
        this.f16750e = new C3229ir();
        this.f16751f = new C3229ir();
    }

    public C3215id(Context context, C3647yd c3647yd, String str, AbstractC3599wj<AbstractC3200hp> abstractC3599wj, AbstractC3599wj<AbstractC3200hp> abstractC3599wj2) {
        this(context, c3647yd, str);
        this.f16750e = abstractC3599wj;
        this.f16751f = abstractC3599wj2;
    }

    /* renamed from: a */
    public final C3232iu m7765a(ctl ctlVar) {
        C3232iu c3232iu = new C3232iu(this.f16751f);
        C3650yg.f17646e.execute(new Runnable(this, ctlVar, c3232iu) { // from class: com.google.android.gms.internal.ads.ic

            /* renamed from: a */
            private final C3215id f16743a;

            /* renamed from: b */
            private final ctl f16744b;

            /* renamed from: c */
            private final C3232iu f16745c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16743a = this;
                this.f16744b = ctlVar;
                this.f16745c = c3232iu;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16743a.m7764a(this.f16744b, this.f16745c);
            }
        });
        c3232iu.m6726a(new C3224im(this, c3232iu), new C3227ip(this, c3232iu));
        return c3232iu;
    }

    /* renamed from: a */
    public final /* synthetic */ void m7764a(ctl ctlVar, C3232iu c3232iu) {
        try {
            Context context = this.f16747b;
            C3647yd c3647yd = this.f16749d;
            AbstractC3200hp c3186hb = C2826bc.f10917c.mo13599a().booleanValue() ? new C3186hb(context, c3647yd) : new C3202hr(context, c3647yd, ctlVar, null);
            c3186hb.mo7780a(new AbstractC3203hs(this, c3232iu, c3186hb) { // from class: com.google.android.gms.internal.ads.ih

                /* renamed from: a */
                private final C3215id f16759a;

                /* renamed from: b */
                private final C3232iu f16760b;

                /* renamed from: c */
                private final AbstractC3200hp f16761c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16759a = this;
                    this.f16760b = c3232iu;
                    this.f16761c = c3186hb;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC3203hs
                /* renamed from: a */
                public final void mo7754a() {
                    final C3215id c3215id = this.f16759a;
                    final C3232iu c3232iu2 = this.f16760b;
                    final AbstractC3200hp abstractC3200hp2 = this.f16761c;
                    C3567ve.f17498a.postDelayed(new Runnable(c3215id, c3232iu2, abstractC3200hp2) { // from class: com.google.android.gms.internal.ads.ig

                        /* renamed from: a */
                        private final C3215id f16756a;

                        /* renamed from: b */
                        private final C3232iu f16757b;

                        /* renamed from: c */
                        private final AbstractC3200hp f16758c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f16756a = c3215id;
                            this.f16757b = c3232iu2;
                            this.f16758c = abstractC3200hp2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f16756a.m7759a(this.f16757b, this.f16758c);
                        }
                    }, C3226io.f16777b);
                }
            });
            c3186hb.mo7739a("/jsLoaded", new C3220ii(this, c3232iu, c3186hb));
            C3623xg c3623xg = new C3623xg();
            C3223il c3223il = new C3223il(this, ctlVar, c3186hb, c3623xg);
            c3623xg.m6825a(c3223il);
            c3186hb.mo7739a("/requestReload", c3223il);
            if (this.f16748c.endsWith(".js")) {
                c3186hb.mo7778a(this.f16748c);
            } else if (this.f16748c.startsWith("<html>")) {
                c3186hb.mo7776b(this.f16748c);
            } else {
                c3186hb.mo7774c(this.f16748c);
            }
            C3567ve.f17498a.postDelayed(new RunnableC3222ik(this, c3232iu, c3186hb), C3226io.f16776a);
        } catch (Throwable th) {
            C3556uu.m6748c("Error creating webview.", th);
            C2341q.m14740g().m7095a(th, "SdkJavascriptFactory.loadJavascriptEngine");
            c3232iu.m6723d();
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m7763a(AbstractC3200hp abstractC3200hp) {
        if (abstractC3200hp.mo7777b()) {
            this.f16753h = 1;
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m7759a(C3232iu c3232iu, AbstractC3200hp abstractC3200hp) {
        synchronized (this.f16746a) {
            if (c3232iu.m6722e() == -1 || c3232iu.m6722e() == 1) {
                return;
            }
            c3232iu.m6723d();
            crs crsVar = C3650yg.f17646e;
            abstractC3200hp.getClass();
            crsVar.execute(RunnableC3221ij.m7753a(abstractC3200hp));
            C3556uu.m7052a("Could not receive loaded message in a timely manner. Rejecting.");
        }
    }

    /* renamed from: b */
    public final C3228iq m7758b(ctl ctlVar) {
        C3228iq c3228iq;
        synchronized (this.f16746a) {
            synchronized (this.f16746a) {
                if (this.f16752g != null && this.f16753h == 0) {
                    this.f16752g.m6726a(new AbstractC3662ys(this) { // from class: com.google.android.gms.internal.ads.if

                        /* renamed from: a */
                        private final C3215id f16755a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f16755a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.AbstractC3662ys
                        /* renamed from: a */
                        public final void mo6728a(Object obj) {
                            this.f16755a.m7763a((AbstractC3200hp) obj);
                        }
                    }, C3216ie.f16754a);
                }
            }
            if (this.f16752g == null || this.f16752g.m6722e() == -1) {
                this.f16753h = 2;
                this.f16752g = m7765a((ctl) null);
                c3228iq = this.f16752g.m7749a();
            } else if (this.f16753h == 0) {
                c3228iq = this.f16752g.m7749a();
            } else if (this.f16753h == 1) {
                this.f16753h = 2;
                m7765a((ctl) null);
                c3228iq = this.f16752g.m7749a();
            } else {
                c3228iq = this.f16753h == 2 ? this.f16752g.m7749a() : this.f16752g.m7749a();
            }
        }
        return c3228iq;
    }
}
