package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bst.class */
public final class bst extends dzm {

    /* renamed from: a */
    private final Context f12174a;

    /* renamed from: b */
    private final dza f12175b;

    /* renamed from: c */
    private final chh f12176c;

    /* renamed from: d */
    private final akk f12177d;

    /* renamed from: e */
    private final ViewGroup f12178e;

    public bst(Context context, dza dzaVar, chh chhVar, akk akkVar) {
        this.f12174a = context;
        this.f12175b = dzaVar;
        this.f12176c = chhVar;
        this.f12177d = akkVar;
        FrameLayout frameLayout = new FrameLayout(this.f12174a);
        frameLayout.removeAllViews();
        frameLayout.addView(this.f12177d.mo12962a(), C2341q.m14742e().mo6924b());
        frameLayout.setMinimumHeight(mo7937j().f16092c);
        frameLayout.setMinimumWidth(mo7937j().f16095f);
        this.f12178e = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final AbstractC2731a mo7967a() {
        return BinderC2734b.m13794a(this.f12178e);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7966a(dve dveVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7964a(dyd dydVar) {
        C2662s.m13974b("setAdSize must be called on the main UI thread.");
        if (this.f12177d != null) {
            this.f12177d.mo12961a(this.f12178e, dydVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7963a(dyk dykVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7962a(dyz dyzVar) {
        C3556uu.m6747d("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7961a(dza dzaVar) {
        C3556uu.m6747d("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7960a(dzr dzrVar) {
        C3556uu.m6747d("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7959a(dzw dzwVar) {
        C3556uu.m6747d("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7958a(eac eacVar) {
        C3556uu.m6747d("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7957a(eau eauVar) {
        C3556uu.m6747d("setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7956a(ebg ebgVar) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7954a(ecn ecnVar) {
        C3556uu.m6747d("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
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
        C3556uu.m6747d("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7949a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final void mo7948a(boolean z) {
        C3556uu.m6747d("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: a */
    public final boolean mo7965a(dya dyaVar) {
        C3556uu.m6747d("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: b */
    public final void mo7947b() {
        C2662s.m13974b("destroy must be called on the main UI thread.");
        this.f12177d.mo12297k();
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
        C2662s.m13974b("destroy must be called on the main UI thread.");
        this.f12177d.m12947i().m12809a((Context) null);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: e */
    public final void mo7942e() {
        C2662s.m13974b("destroy must be called on the main UI thread.");
        this.f12177d.m12947i().m12807b(null);
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: f */
    public final Bundle mo7941f() {
        C3556uu.m6747d("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
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
        this.f12177d.mo12955f();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: j */
    public final dyd mo7937j() {
        C2662s.m13974b("getAdSize must be called on the main UI thread.");
        return chk.m11312a(this.f12174a, Collections.singletonList(this.f12177d.mo12958c()));
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: k */
    public final String mo7936k() {
        return this.f12177d.m12946j() != null ? this.f12177d.m12946j().mo8095a() : null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: l */
    public final String mo7935l() {
        return this.f12177d.m12946j() != null ? this.f12177d.m12946j().mo8095a() : null;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: m */
    public final eav mo7934m() {
        return this.f12177d.m12946j();
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: n */
    public final String mo7933n() {
        return this.f12176c.f13042f;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: o */
    public final dzw mo7932o() {
        return this.f12176c.f13049m;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: p */
    public final dza mo7931p() {
        return this.f12175b;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: q */
    public final boolean mo7930q() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dzn
    /* renamed from: r */
    public final eba mo7929r() {
        return this.f12177d.mo12959b();
    }
}
