package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.C2301c;
import com.google.android.gms.ads.internal.overlay.AbstractC2333t;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/beh.class */
public final class beh {

    /* renamed from: a */
    private final apo f11073a;

    /* renamed from: b */
    private final aqq f11074b;

    /* renamed from: c */
    private final arf f11075c;

    /* renamed from: d */
    private final aro f11076d;

    /* renamed from: e */
    private final asr f11077e;

    /* renamed from: f */
    private final Executor f11078f;

    /* renamed from: g */
    private final aup f11079g;

    /* renamed from: h */
    private final ajb f11080h;

    /* renamed from: i */
    private final C2301c f11081i;

    /* renamed from: j */
    private final aqk f11082j;

    /* renamed from: k */
    private final AbstractC3501st f11083k;

    /* renamed from: l */
    private final ctl f11084l;

    /* renamed from: m */
    private final asg f11085m;

    public beh(apo apoVar, aqq aqqVar, arf arfVar, aro aroVar, asr asrVar, Executor executor, aup aupVar, ajb ajbVar, C2301c c2301c, aqk aqkVar, AbstractC3501st abstractC3501st, ctl ctlVar, asg asgVar) {
        this.f11073a = apoVar;
        this.f11074b = aqqVar;
        this.f11075c = arfVar;
        this.f11076d = aroVar;
        this.f11077e = asrVar;
        this.f11078f = executor;
        this.f11079g = aupVar;
        this.f11080h = ajbVar;
        this.f11081i = c2301c;
        this.f11082j = aqkVar;
        this.f11083k = abstractC3501st;
        this.f11084l = ctlVar;
        this.f11085m = asgVar;
    }

    /* renamed from: a */
    public static crt<?> m12032a(act actVar, String str, String str2) {
        C3658yo c3658yo = new C3658yo();
        actVar.mo13426v().mo13528a(new aee(c3658yo) { // from class: com.google.android.gms.internal.ads.bes

            /* renamed from: a */
            private final C3658yo f11097a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11097a = c3658yo;
            }

            @Override // com.google.android.gms.internal.ads.aee
            /* renamed from: a */
            public final void mo11712a(boolean z) {
                C3658yo c3658yo2 = this.f11097a;
                if (z) {
                    c3658yo2.m6731b(null);
                } else {
                    c3658yo2.m6733a(new Exception("Ad Web View failed to load."));
                }
            }
        });
        actVar.mo13461a(str, str2, (String) null);
        return c3658yo;
    }

    /* renamed from: a */
    public final /* synthetic */ void m12036a() {
        this.f11074b.m12803b();
    }

    /* renamed from: a */
    public final /* synthetic */ void m12035a(View view) {
        this.f11081i.m14802a();
        if (this.f11083k != null) {
            this.f11083k.mo7176c();
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m12033a(act actVar, act actVar2, Map map) {
        this.f11080h.m13082a(actVar);
    }

    /* renamed from: a */
    public final void m12031a(act actVar, boolean z) {
        cjd m10670a;
        actVar.mo13426v().mo13525a(new dxs(this) { // from class: com.google.android.gms.internal.ads.bek

            /* renamed from: a */
            private final beh f11088a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11088a = this;
            }

            @Override // com.google.android.gms.internal.ads.dxs
            /* renamed from: e */
            public final void mo8200e() {
                this.f11088a.m12028b();
            }
        }, this.f11075c, this.f11076d, new AbstractC3113ek(this) { // from class: com.google.android.gms.internal.ads.bej

            /* renamed from: a */
            private final beh f11087a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11087a = this;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3113ek
            /* renamed from: a */
            public final void mo7859a(String str, String str2) {
                this.f11087a.m12029a(str, str2);
            }
        }, new AbstractC2333t(this) { // from class: com.google.android.gms.internal.ads.bem

            /* renamed from: a */
            private final beh f11090a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11090a = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.AbstractC2333t
            /* renamed from: f */
            public final void mo12024f() {
                this.f11090a.m12036a();
            }
        }, z, null, this.f11081i, new ber(this), this.f11083k);
        actVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.bel

            /* renamed from: a */
            private final beh f11089a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11089a = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f11089a.m12034a(view, motionEvent);
            }
        });
        actVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.beo

            /* renamed from: a */
            private final beh f11092a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11092a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f11092a.m12035a(view);
            }
        });
        if (((Boolean) dyx.m8158e().m7876a(edi.f16367aZ)).booleanValue() && (m10670a = this.f11084l.m10670a()) != null) {
            m10670a.mo11046a(actVar.getView());
        }
        this.f11079g.m12773a(actVar, this.f11078f);
        this.f11079g.m12773a(new dtr(actVar) { // from class: com.google.android.gms.internal.ads.ben

            /* renamed from: a */
            private final act f11091a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11091a = actVar;
            }

            @Override // com.google.android.gms.internal.ads.dtr
            /* renamed from: a */
            public final void mo7170a(dtt dttVar) {
                this.f11091a.mo13426v().mo13534a(dttVar.f15733d.left, dttVar.f15733d.top, false);
            }
        }, this.f11078f);
        this.f11079g.m12420a(actVar.getView());
        actVar.mo13462a("/trackActiveViewUnit", new AbstractC3131fa(this, actVar) { // from class: com.google.android.gms.internal.ads.beq

            /* renamed from: a */
            private final beh f11094a;

            /* renamed from: b */
            private final act f11095b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11094a = this;
                this.f11095b = actVar;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                this.f11094a.m12033a(this.f11095b, (act) obj, map);
            }
        });
        this.f11080h.m13081a((Object) actVar);
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16378ak)).booleanValue()) {
            aqk aqkVar = this.f11082j;
            actVar.getClass();
            aqkVar.m12808a(bep.m12022a(actVar), this.f11078f);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m12029a(String str, String str2) {
        this.f11077e.mo7859a(str, str2);
    }

    /* renamed from: a */
    public final /* synthetic */ boolean m12034a(View view, MotionEvent motionEvent) {
        this.f11081i.m14802a();
        if (this.f11083k != null) {
            this.f11083k.mo7176c();
            return false;
        }
        return false;
    }

    /* renamed from: b */
    public final /* synthetic */ void m12028b() {
        this.f11073a.mo8200e();
    }
}
