package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.C2374r;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lo.class */
public final class BinderC3307lo extends AbstractBinderC3294lb {

    /* renamed from: a */
    private final C2374r f16922a;

    public BinderC3307lo(C2374r c2374r) {
        this.f16922a = c2374r;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: a */
    public final String mo7612a() {
        return this.f16922a.m14684i();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: a */
    public final void mo7611a(AbstractC2731a abstractC2731a) {
        this.f16922a.m14698c((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: a */
    public final void mo7610a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        this.f16922a.m14705a((View) BinderC2734b.m13795a(abstractC2731a), (HashMap) BinderC2734b.m13795a(abstractC2731a2), (HashMap) BinderC2734b.m13795a(abstractC2731a3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: b */
    public final List mo7609b() {
        ArrayList arrayList;
        List<AbstractC2252c.AbstractC2254b> m14683j = this.f16922a.m14683j();
        if (m14683j != null) {
            arrayList = new ArrayList();
            for (AbstractC2252c.AbstractC2254b abstractC2254b : m14683j) {
                arrayList.add(new BinderC2831bh(abstractC2254b.mo11547a(), abstractC2254b.mo11546b(), abstractC2254b.mo11545c(), abstractC2254b.mo11544d(), abstractC2254b.mo11543e()));
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: b */
    public final void mo7608b(AbstractC2731a abstractC2731a) {
        this.f16922a.mo14706a((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: c */
    public final String mo7607c() {
        return this.f16922a.m14682k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: c */
    public final void mo7606c(AbstractC2731a abstractC2731a) {
        this.f16922a.m14701b((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: d */
    public final AbstractC2844bu mo7605d() {
        AbstractC2252c.AbstractC2254b m14681l = this.f16922a.m14681l();
        return m14681l != null ? new BinderC2831bh(m14681l.mo11547a(), m14681l.mo11546b(), m14681l.mo11545c(), m14681l.mo11544d(), m14681l.mo11543e()) : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: e */
    public final String mo7604e() {
        return this.f16922a.m14680m();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: f */
    public final double mo7603f() {
        return this.f16922a.m14679n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: g */
    public final String mo7602g() {
        return this.f16922a.m14678o();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: h */
    public final String mo7601h() {
        return this.f16922a.m14677p();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: i */
    public final void mo7600i() {
        this.f16922a.m14696e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: j */
    public final boolean mo7599j() {
        return this.f16922a.m14707a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: k */
    public final boolean mo7598k() {
        return this.f16922a.m14702b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: l */
    public final Bundle mo7597l() {
        return this.f16922a.m14699c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: m */
    public final eba mo7596m() {
        return this.f16922a.m14694g() != null ? this.f16922a.m14694g().m14617a() : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: n */
    public final AbstractC2731a mo7595n() {
        View m14697d = this.f16922a.m14697d();
        return m14697d == null ? null : BinderC2734b.m13794a(m14697d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: o */
    public final AbstractC2837bn mo7594o() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: p */
    public final AbstractC2731a mo7593p() {
        View m14695f = this.f16922a.m14695f();
        return m14695f == null ? null : BinderC2734b.m13794a(m14695f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: q */
    public final AbstractC2731a mo7592q() {
        return null;
    }
}
