package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.AbstractC2338y;
import com.google.android.gms.ads.internal.overlay.C2329p;
import com.google.android.gms.ads.internal.overlay.View$OnClickListenerC2330q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cdf.class */
public final class cdf extends dzm implements AbstractC2338y, arl, dva {
    @GuardedBy("this")

    /* renamed from: a */
    protected ake f12757a;

    /* renamed from: b */
    private final afh f12758b;

    /* renamed from: c */
    private final Context f12759c;

    /* renamed from: d */
    private final ViewGroup f12760d;

    /* renamed from: e */
    private AtomicBoolean f12761e = new AtomicBoolean();

    /* renamed from: f */
    private final String f12762f;

    /* renamed from: g */
    private final ccy f12763g;

    /* renamed from: h */
    private final cdn f12764h;

    /* renamed from: i */
    private final C3647yd f12765i;

    /* renamed from: j */
    private long f12766j;

    /* renamed from: k */
    private ajp f12767k;

    public cdf(afh afhVar, Context context, String str, ccy ccyVar, cdn cdnVar, C3647yd c3647yd) {
        this.f12760d = new FrameLayout(context);
        this.f12758b = afhVar;
        this.f12759c = context;
        this.f12762f = str;
        this.f12763g = ccyVar;
        this.f12764h = cdnVar;
        cdnVar.m11453a(this);
        this.f12765i = c3647yd;
    }

    /* renamed from: b */
    public final View$OnClickListenerC2330q m11467b(ake akeVar) {
        boolean m13028f = akeVar.m13028f();
        int intValue = ((Integer) dyx.m8158e().m7876a(edi.f16480cg)).intValue();
        C2329p c2329p = new C2329p();
        c2329p.f6733e = 50;
        c2329p.f6729a = m13028f ? intValue : 0;
        c2329p.f6730b = m13028f ? 0 : intValue;
        c2329p.f6731c = 0;
        c2329p.f6732d = intValue;
        return new View$OnClickListenerC2330q(this.f12759c, c2329p, this);
    }

    /* renamed from: c */
    public static RelativeLayout.LayoutParams m11464c(ake akeVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(akeVar.m13028f() ? 11 : 9);
        return layoutParams;
    }

    /* renamed from: d */
    public final void m11462d(ake akeVar) {
        akeVar.m13034a(this);
    }

    /* renamed from: w */
    public final void m11458v() {
        if (this.f12761e.compareAndSet(false, true)) {
            if (this.f12757a != null && this.f12757a.m13026h() != null) {
                this.f12764h.m11449a(this.f12757a.m13026h());
            }
            this.f12764h.m11454a();
            this.f12760d.removeAllViews();
            if (this.f12767k != null) {
                C2341q.m14741f().m8563b(this.f12767k);
            }
            if (this.f12757a != null) {
                this.f12757a.m13035a(C2341q.m14737j().mo13861b() - this.f12766j);
            }
            mo7947b();
        }
    }

    /* renamed from: x */
    public final dyd m11456x() {
        return chk.m11312a(this.f12759c, Collections.singletonList(this.f12757a.m13036a()));
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final AbstractC2731a mo7967a() {
        C2662s.m13974b("getAdFrame must be called on the main UI thread.");
        return BinderC2734b.m13794a(this.f12760d);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7966a(dve dveVar) {
        this.f12764h.m11450a(dveVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7964a(dyd dydVar) {
        synchronized (this) {
            C2662s.m13974b("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7963a(dyk dykVar) {
        this.f12763g.m11474a(dykVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7962a(dyz dyzVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7961a(dza dzaVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7960a(dzr dzrVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7959a(dzw dzwVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7958a(eac eacVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7957a(eau eauVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7956a(ebg ebgVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7954a(ecn ecnVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7953a(AbstractC3382oi abstractC3382oi) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7952a(AbstractC3388oo abstractC3388oo, String str) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7951a(AbstractC3456rb abstractC3456rb) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7950a(AbstractC3535u abstractC3535u) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7949a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7948a(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final boolean mo7965a(dya dyaVar) {
        boolean z = false;
        synchronized (this) {
            C2662s.m13974b("loadAd must be called on the main UI thread.");
            C2341q.m14744c();
            if (C3567ve.m6944o(this.f12759c) && dyaVar.f16085s == null) {
                C3556uu.m6749c("Failed to load the ad because app ID is missing.");
                this.f12764h.mo11258a(8);
            } else if (!mo7930q()) {
                this.f12761e = new AtomicBoolean();
                z = this.f12763g.mo11391a(dyaVar, this.f12762f, new cdk(this), new cdj(this));
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7947b() {
        synchronized (this) {
            C2662s.m13974b("destroy must be called on the main UI thread.");
            if (this.f12757a != null) {
                this.f12757a.mo12297k();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7946b(String str) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7945b(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: c */
    public final boolean mo7944c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: d */
    public final void mo7943d() {
        synchronized (this) {
            C2662s.m13974b("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: e */
    public final void mo7942e() {
        synchronized (this) {
            C2662s.m13974b("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: f */
    public final Bundle mo7941f() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: g */
    public final void mo7940g() {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: h */
    public final void mo7939h() {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: i */
    public final void mo7938i() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: j */
    public final dyd mo7937j() {
        dyd m11312a;
        synchronized (this) {
            C2662s.m13974b("getAdSize must be called on the main UI thread.");
            m11312a = this.f12757a != null ? chk.m11312a(this.f12759c, Collections.singletonList(this.f12757a.m13036a())) : null;
        }
        return m11312a;
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2338y
    /* renamed from: j_ */
    public final void mo11460j_() {
        m11458v();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: k */
    public final String mo7936k() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: l */
    public final String mo7935l() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: m */
    public final eav mo7934m() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: n */
    public final String mo7933n() {
        String str;
        synchronized (this) {
            str = this.f12762f;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: o */
    public final dzw mo7932o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: p */
    public final dza mo7931p() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: q */
    public final boolean mo7930q() {
        boolean mo11396a;
        synchronized (this) {
            mo11396a = this.f12763g.mo11396a();
        }
        return mo11396a;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: r */
    public final eba mo7929r() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.arl
    /* renamed from: s */
    public final void mo11448s() {
        if (this.f12757a == null) {
            return;
        }
        this.f12766j = C2341q.m14737j().mo13861b();
        int m13031c = this.f12757a.m13031c();
        if (m13031c <= 0) {
            return;
        }
        this.f12767k = new ajp(this.f12758b.mo13371b(), C2341q.m14737j());
        this.f12767k.m13061a(m13031c, new Runnable(this) { // from class: com.google.android.gms.internal.ads.cdh

            /* renamed from: a */
            private final cdf f12774a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12774a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12774a.m11459u();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.dva
    /* renamed from: t */
    public final void mo8515t() {
        m11458v();
    }

    /* renamed from: u */
    public final /* synthetic */ void m11459u() {
        this.f12758b.mo13374a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cdi

            /* renamed from: a */
            private final cdf f12775a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12775a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12775a.m11458v();
            }
        });
    }
}
