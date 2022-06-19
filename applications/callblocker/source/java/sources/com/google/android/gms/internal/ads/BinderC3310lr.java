package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.C2377s;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lr.class */
public final class BinderC3310lr extends AbstractBinderC3295lc {

    /* renamed from: a */
    private final C2377s f16937a;

    public BinderC3310lr(C2377s c2377s) {
        this.f16937a = c2377s;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: a */
    public final String mo7556a() {
        return this.f16937a.m14670i();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: a */
    public final void mo7555a(AbstractC2731a abstractC2731a) {
        this.f16937a.m14698c((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: a */
    public final void mo7554a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        this.f16937a.m14705a((View) BinderC2734b.m13795a(abstractC2731a), (HashMap) BinderC2734b.m13795a(abstractC2731a2), (HashMap) BinderC2734b.m13795a(abstractC2731a3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: b */
    public final List mo7553b() {
        ArrayList arrayList;
        List<AbstractC2252c.AbstractC2254b> m14669j = this.f16937a.m14669j();
        if (m14669j != null) {
            arrayList = new ArrayList();
            for (AbstractC2252c.AbstractC2254b abstractC2254b : m14669j) {
                arrayList.add(new BinderC2831bh(abstractC2254b.mo11547a(), abstractC2254b.mo11546b(), abstractC2254b.mo11545c(), abstractC2254b.mo11544d(), abstractC2254b.mo11543e()));
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: b */
    public final void mo7552b(AbstractC2731a abstractC2731a) {
        this.f16937a.mo14706a((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: c */
    public final String mo7551c() {
        return this.f16937a.m14668k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: c */
    public final void mo7550c(AbstractC2731a abstractC2731a) {
        this.f16937a.m14701b((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: d */
    public final AbstractC2844bu mo7549d() {
        AbstractC2252c.AbstractC2254b m14667l = this.f16937a.m14667l();
        return m14667l != null ? new BinderC2831bh(m14667l.mo11547a(), m14667l.mo11546b(), m14667l.mo11545c(), m14667l.mo11544d(), m14667l.mo11543e()) : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: e */
    public final String mo7548e() {
        return this.f16937a.m14666m();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: f */
    public final String mo7547f() {
        return this.f16937a.m14665n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: g */
    public final void mo7546g() {
        this.f16937a.m14696e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: h */
    public final boolean mo7545h() {
        return this.f16937a.m14707a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: i */
    public final boolean mo7544i() {
        return this.f16937a.m14702b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: j */
    public final Bundle mo7543j() {
        return this.f16937a.m14699c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: k */
    public final AbstractC2731a mo7542k() {
        View m14697d = this.f16937a.m14697d();
        return m14697d == null ? null : BinderC2734b.m13794a(m14697d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: l */
    public final eba mo7541l() {
        return this.f16937a.m14694g() != null ? this.f16937a.m14694g().m14617a() : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: m */
    public final AbstractC2837bn mo7540m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: n */
    public final AbstractC2731a mo7539n() {
        View m14695f = this.f16937a.m14695f();
        return m14695f == null ? null : BinderC2734b.m13794a(m14695f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: o */
    public final AbstractC2731a mo7538o() {
        return null;
    }
}
