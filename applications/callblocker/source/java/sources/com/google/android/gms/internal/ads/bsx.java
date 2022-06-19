package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.atf;
import java.util.Collections;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsx.class */
public final class bsx extends dzm implements asd {

    /* renamed from: a */
    private final afh f12193a;

    /* renamed from: b */
    private final Context f12194b;

    /* renamed from: c */
    private final ViewGroup f12195c;

    /* renamed from: h */
    private final arz f12200h;

    /* renamed from: i */
    private dyd f12201i;
    @GuardedBy("this")

    /* renamed from: k */
    private AbstractC3535u f12203k;
    @GuardedBy("this")

    /* renamed from: l */
    private akk f12204l;
    @GuardedBy("this")

    /* renamed from: m */
    private crt<akk> f12205m;

    /* renamed from: d */
    private final bte f12196d = new bte();

    /* renamed from: e */
    private final btb f12197e = new btb();

    /* renamed from: f */
    private final btd f12198f = new btd();

    /* renamed from: g */
    private final bsz f12199g = new bsz();
    @GuardedBy("this")

    /* renamed from: j */
    private final chj f12202j = new chj();

    public bsx(afh afhVar, Context context, dyd dydVar, String str) {
        this.f12195c = new FrameLayout(context);
        this.f12193a = afhVar;
        this.f12194b = context;
        this.f12202j.m11341a(dydVar).m11336a(str);
        this.f12200h = afhVar.mo13365e();
        this.f12200h.m12773a(this, this.f12193a.mo13374a());
        this.f12201i = dydVar;
    }

    /* renamed from: a */
    private final alh m11663a(chh chhVar) {
        alh mo12979a;
        synchronized (this) {
            mo12979a = this.f12193a.mo13359h().mo12976a(new apb.C2790a().m12840a(this.f12194b).m12836a(chhVar).m12841a()).mo12975a(new atf.C2797a().m12746a((dxs) this.f12196d, this.f12193a.mo13374a()).m12746a(this.f12197e, this.f12193a.mo13374a()).m12755a((AbstractC2792app) this.f12196d, this.f12193a.mo13374a()).m12751a((arg) this.f12196d, this.f12193a.mo13374a()).m12754a((apv) this.f12196d, this.f12193a.mo13374a()).m12757a(this.f12198f, this.f12193a.mo13374a()).m12749a(this.f12199g, this.f12193a.mo13374a()).m12758a()).mo12973a(new bsa(this.f12203k)).mo12974a(new axk(azg.f10688a, null)).mo12977a(new ame(this.f12200h)).mo12978a(new akf(this.f12195c)).mo12979a();
        }
        return mo12979a;
    }

    /* renamed from: b */
    private final boolean m11661b(dya dyaVar) {
        boolean z;
        synchronized (this) {
            C2662s.m13974b("loadAd must be called on the main UI thread.");
            C2341q.m14744c();
            if (C3567ve.m6944o(this.f12194b) && dyaVar.f16085s == null) {
                C3556uu.m6749c("Failed to load the ad because app ID is missing.");
                if (this.f12196d != null) {
                    this.f12196d.mo11258a(8);
                }
                z = false;
            } else if (this.f12205m != null) {
                z = false;
            } else {
                chp.m11299a(this.f12194b, dyaVar.f16072f);
                chh m11325e = this.f12202j.m11342a(dyaVar).m11325e();
                if (!C2795as.f10260b.mo13599a().booleanValue() || !this.f12202j.m11333b().f16100k || this.f12196d == null) {
                    alh m11663a = m11663a(m11325e);
                    this.f12205m = m11663a.mo12969b().m12891b();
                    crg.m10781a(this.f12205m, new bta(this, m11663a), this.f12193a.mo13374a());
                    z = true;
                } else {
                    this.f12196d.mo11258a(1);
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final AbstractC2731a mo7967a() {
        C2662s.m13974b("destroy must be called on the main UI thread.");
        return BinderC2734b.m13794a(this.f12195c);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7966a(dve dveVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7964a(dyd dydVar) {
        synchronized (this) {
            C2662s.m13974b("setAdSize must be called on the main UI thread.");
            this.f12202j.m11341a(dydVar);
            this.f12201i = dydVar;
            if (this.f12204l != null) {
                this.f12204l.mo12961a(this.f12195c, dydVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7963a(dyk dykVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7962a(dyz dyzVar) {
        C2662s.m13974b("setAdListener must be called on the main UI thread.");
        this.f12197e.m11657a(dyzVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7961a(dza dzaVar) {
        C2662s.m13974b("setAdListener must be called on the main UI thread.");
        this.f12196d.m11653a(dzaVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7960a(dzr dzrVar) {
        C2662s.m13974b("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7959a(dzw dzwVar) {
        C2662s.m13974b("setAppEventListener must be called on the main UI thread.");
        this.f12198f.m11655a(dzwVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7958a(eac eacVar) {
        synchronized (this) {
            C2662s.m13974b("setCorrelationIdProvider must be called on the main UI thread");
            this.f12202j.m11339a(eacVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7957a(eau eauVar) {
        C2662s.m13974b("setPaidEventListener must be called on the main UI thread.");
        this.f12199g.m11658a(eauVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7956a(ebg ebgVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7954a(ecn ecnVar) {
        synchronized (this) {
            C2662s.m13974b("setVideoOptions must be called on the main UI thread.");
            this.f12202j.m11338a(ecnVar);
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
            C2662s.m13974b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f12203k = abstractC3535u;
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
            C2662s.m13974b("setManualImpressionsEnabled must be called from the main thread.");
            this.f12202j.m11330b(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final boolean mo7965a(dya dyaVar) {
        boolean m11661b;
        synchronized (this) {
            this.f12202j.m11341a(this.f12201i);
            this.f12202j.m11334a(this.f12201i.f16102m);
            m11661b = m11661b(dyaVar);
        }
        return m11661b;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7947b() {
        synchronized (this) {
            C2662s.m13974b("destroy must be called on the main UI thread.");
            if (this.f12204l != null) {
                this.f12204l.mo12297k();
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
            if (this.f12204l != null) {
                this.f12204l.m12947i().m12809a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: e */
    public final void mo7942e() {
        synchronized (this) {
            C2662s.m13974b("resume must be called on the main UI thread.");
            if (this.f12204l != null) {
                this.f12204l.m12947i().m12807b(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: f */
    public final Bundle mo7941f() {
        C2662s.m13974b("getAdMetadata must be called on the main UI thread.");
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
            C2662s.m13974b("recordManualImpression must be called on the main UI thread.");
            if (this.f12204l != null) {
                this.f12204l.mo12955f();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: j */
    public final dyd mo7937j() {
        dyd m11312a;
        synchronized (this) {
            C2662s.m13974b("getAdSize must be called on the main UI thread.");
            m11312a = this.f12204l != null ? chk.m11312a(this.f12194b, Collections.singletonList(this.f12204l.mo12958c())) : this.f12202j.m11333b();
        }
        return m11312a;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: k */
    public final String mo7936k() {
        String mo8095a;
        synchronized (this) {
            mo8095a = (this.f12204l == null || this.f12204l.m12946j() == null) ? null : this.f12204l.m12946j().mo8095a();
        }
        return mo8095a;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: l */
    public final String mo7935l() {
        String mo8095a;
        synchronized (this) {
            mo8095a = (this.f12204l == null || this.f12204l.m12946j() == null) ? null : this.f12204l.m12946j().mo8095a();
        }
        return mo8095a;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: m */
    public final eav mo7934m() {
        apk m12946j;
        synchronized (this) {
            m12946j = !((Boolean) dyx.m8158e().m7876a(edi.f16502dB)).booleanValue() ? null : this.f12204l == null ? null : this.f12204l.m12946j();
        }
        return m12946j;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: n */
    public final String mo7933n() {
        String m11329c;
        synchronized (this) {
            m11329c = this.f12202j.m11329c();
        }
        return m11329c;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: o */
    public final dzw mo7932o() {
        return this.f12198f.m11656a();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: p */
    public final dza mo7931p() {
        return this.f12196d.m11651i();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: q */
    public final boolean mo7930q() {
        boolean z;
        synchronized (this) {
            if (this.f12205m != null) {
                if (!this.f12205m.isDone()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: r */
    public final eba mo7929r() {
        eba mo12959b;
        synchronized (this) {
            C2662s.m13974b("getVideoController must be called from the main thread.");
            mo12959b = this.f12204l != null ? this.f12204l.mo12959b() : null;
        }
        return mo12959b;
    }

    @Override // com.google.android.gms.internal.ads.asd
    /* renamed from: s */
    public final void mo11659s() {
        boolean m6994a;
        synchronized (this) {
            ViewParent parent = this.f12195c.getParent();
            if (!(parent instanceof View)) {
                m6994a = false;
            } else {
                View view = (View) parent;
                m6994a = C2341q.m14744c().m6994a(view, view.getContext());
            }
            if (m6994a) {
                if (this.f12204l != null && this.f12204l.mo12957d() != null) {
                    this.f12202j.m11341a(chk.m11312a(this.f12194b, Collections.singletonList(this.f12204l.mo12957d())));
                }
                m11661b(this.f12202j.m11348a());
            } else {
                this.f12200h.m12787a(60);
            }
        }
    }
}
