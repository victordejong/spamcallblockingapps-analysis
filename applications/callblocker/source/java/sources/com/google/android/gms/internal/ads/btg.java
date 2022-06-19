package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.atf;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btg.class */
public final class btg extends dzm {

    /* renamed from: a */
    private final afh f12216a;

    /* renamed from: b */
    private final Context f12217b;

    /* renamed from: c */
    private final Executor f12218c;
    @GuardedBy("this")

    /* renamed from: i */
    private AbstractC3535u f12224i;
    @GuardedBy("this")

    /* renamed from: j */
    private avq f12225j;
    @GuardedBy("this")

    /* renamed from: k */
    private crt<avq> f12226k;

    /* renamed from: d */
    private final bte f12219d = new bte();

    /* renamed from: e */
    private final btd f12220e = new btd();

    /* renamed from: f */
    private final cfa f12221f = new cfa(new cik());

    /* renamed from: g */
    private final bsz f12222g = new bsz();
    @GuardedBy("this")

    /* renamed from: h */
    private final chj f12223h = new chj();
    @GuardedBy("this")

    /* renamed from: l */
    private boolean f12227l = false;

    public btg(afh afhVar, Context context, dyd dydVar, String str) {
        this.f12216a = afhVar;
        this.f12223h.m11341a(dydVar).m11336a(str);
        this.f12218c = afhVar.mo13374a();
        this.f12217b = context;
    }

    /* renamed from: s */
    private final boolean m11648s() {
        boolean z;
        synchronized (this) {
            if (this.f12225j != null) {
                if (!this.f12225j.m12406a()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final AbstractC2731a mo7967a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7966a(dve dveVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7964a(dyd dydVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7963a(dyk dykVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7962a(dyz dyzVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7961a(dza dzaVar) {
        C2662s.m13974b("setAdListener must be called on the main UI thread.");
        this.f12219d.m11653a(dzaVar);
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
        this.f12220e.m11655a(dzwVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7958a(eac eacVar) {
        synchronized (this) {
            C2662s.m13974b("setCorrelationIdProvider must be called on the main UI thread");
            this.f12223h.m11339a(eacVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7957a(eau eauVar) {
        C2662s.m13974b("setPaidEventListener must be called on the main UI thread.");
        this.f12222g.m11658a(eauVar);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7956a(ebg ebgVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7954a(ecn ecnVar) {
        synchronized (this) {
            this.f12223h.m11338a(ecnVar);
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
        this.f12221f.m11419a(abstractC3456rb);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7950a(AbstractC3535u abstractC3535u) {
        synchronized (this) {
            C2662s.m13974b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.f12224i = abstractC3535u;
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
            this.f12223h.m11330b(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final boolean mo7965a(dya dyaVar) {
        boolean z;
        synchronized (this) {
            C2662s.m13974b("loadAd must be called on the main UI thread.");
            C2341q.m14744c();
            if (!C3567ve.m6944o(this.f12217b) || dyaVar.f16085s != null) {
                z = false;
                if (this.f12226k == null) {
                    z = false;
                    if (!m11648s()) {
                        chp.m11299a(this.f12217b, dyaVar.f16072f);
                        this.f12225j = null;
                        chh m11325e = this.f12223h.m11342a(dyaVar).m11325e();
                        atf.C2797a c2797a = new atf.C2797a();
                        if (this.f12221f != null) {
                            c2797a.m12755a((AbstractC2792app) this.f12221f, this.f12216a.mo13374a()).m12751a((arg) this.f12221f, this.f12216a.mo13374a()).m12754a((apv) this.f12221f, this.f12216a.mo13374a());
                        }
                        awq mo12377a = this.f12216a.mo13353k().mo12376a(new apb.C2790a().m12840a(this.f12217b).m12836a(m11325e).m12841a()).mo12375a(c2797a.m12755a((AbstractC2792app) this.f12219d, this.f12216a.mo13374a()).m12751a((arg) this.f12219d, this.f12216a.mo13374a()).m12754a((apv) this.f12219d, this.f12216a.mo13374a()).m12746a((dxs) this.f12219d, this.f12216a.mo13374a()).m12757a(this.f12220e, this.f12216a.mo13374a()).m12749a(this.f12222g, this.f12216a.mo13374a()).m12758a()).mo12374a(new bsa(this.f12224i)).mo12377a();
                        this.f12226k = mo12377a.mo12371b().m12891b();
                        crg.m10781a(this.f12226k, new btf(this, mo12377a), this.f12218c);
                        z = true;
                    }
                }
            } else {
                C3556uu.m6749c("Failed to load the ad because app ID is missing.");
                z = false;
                if (this.f12219d != null) {
                    this.f12219d.mo11258a(8);
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7947b() {
        synchronized (this) {
            C2662s.m13974b("destroy must be called on the main UI thread.");
            if (this.f12225j != null) {
                this.f12225j.m12947i().m12806c(null);
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
        synchronized (this) {
            C2662s.m13974b("setImmersiveMode must be called on the main UI thread.");
            this.f12227l = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: c */
    public final boolean mo7944c() {
        boolean m11648s;
        synchronized (this) {
            C2662s.m13974b("isLoaded must be called on the main UI thread.");
            m11648s = m11648s();
        }
        return m11648s;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: d */
    public final void mo7943d() {
        synchronized (this) {
            C2662s.m13974b("pause must be called on the main UI thread.");
            if (this.f12225j != null) {
                this.f12225j.m12947i().m12809a((Context) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: e */
    public final void mo7942e() {
        synchronized (this) {
            C2662s.m13974b("resume must be called on the main UI thread.");
            if (this.f12225j != null) {
                this.f12225j.m12947i().m12807b(null);
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
        synchronized (this) {
            C2662s.m13974b("showInterstitial must be called on the main UI thread.");
            if (this.f12225j != null) {
                this.f12225j.m12405a(this.f12227l);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: h */
    public final void mo7939h() {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: i */
    public final void mo7938i() {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: j */
    public final dyd mo7937j() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: k */
    public final String mo7936k() {
        String mo8095a;
        synchronized (this) {
            mo8095a = (this.f12225j == null || this.f12225j.m12946j() == null) ? null : this.f12225j.m12946j().mo8095a();
        }
        return mo8095a;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: l */
    public final String mo7935l() {
        String mo8095a;
        synchronized (this) {
            mo8095a = (this.f12225j == null || this.f12225j.m12946j() == null) ? null : this.f12225j.m12946j().mo8095a();
        }
        return mo8095a;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: m */
    public final eav mo7934m() {
        apk m12946j;
        synchronized (this) {
            m12946j = !((Boolean) dyx.m8158e().m7876a(edi.f16502dB)).booleanValue() ? null : this.f12225j == null ? null : this.f12225j.m12946j();
        }
        return m12946j;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: n */
    public final String mo7933n() {
        String m11329c;
        synchronized (this) {
            m11329c = this.f12223h.m11329c();
        }
        return m11329c;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: o */
    public final dzw mo7932o() {
        return this.f12220e.m11656a();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: p */
    public final dza mo7931p() {
        return this.f12219d.m11651i();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: q */
    public final boolean mo7930q() {
        boolean z;
        synchronized (this) {
            if (this.f12226k != null) {
                if (!this.f12226k.isDone()) {
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
        return null;
    }
}
