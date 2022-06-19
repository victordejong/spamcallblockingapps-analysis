package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.C2381w;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ly */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ly.class */
public final class BinderC3317ly extends AbstractBinderC3300lh {

    /* renamed from: a */
    private final C2381w f16953a;

    public BinderC3317ly(C2381w c2381w) {
        this.f16953a = c2381w;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: a */
    public final String mo7495a() {
        return this.f16953a.m14663a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: a */
    public final void mo7494a(AbstractC2731a abstractC2731a) {
        this.f16953a.m14662a((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: a */
    public final void mo7493a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        this.f16953a.mo14661a((View) BinderC2734b.m13795a(abstractC2731a), (HashMap) BinderC2734b.m13795a(abstractC2731a2), (HashMap) BinderC2734b.m13795a(abstractC2731a3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: b */
    public final List mo7492b() {
        List<AbstractC2252c.AbstractC2254b> m14653b = this.f16953a.m14653b();
        ArrayList arrayList = new ArrayList();
        if (m14653b != null) {
            for (AbstractC2252c.AbstractC2254b abstractC2254b : m14653b) {
                arrayList.add(new BinderC2831bh(abstractC2254b.mo11547a(), abstractC2254b.mo11546b(), abstractC2254b.mo11545c(), abstractC2254b.mo11544d(), abstractC2254b.mo11543e()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: b */
    public final void mo7491b(AbstractC2731a abstractC2731a) {
        this.f16953a.m14652b((View) BinderC2734b.m13795a(abstractC2731a));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: c */
    public final String mo7490c() {
        return this.f16953a.m14649c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: d */
    public final AbstractC2844bu mo7489d() {
        AbstractC2252c.AbstractC2254b m14647d = this.f16953a.m14647d();
        return m14647d != null ? new BinderC2831bh(m14647d.mo11547a(), m14647d.mo11546b(), m14647d.mo11545c(), m14647d.mo11544d(), m14647d.mo11543e()) : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: e */
    public final String mo7488e() {
        return this.f16953a.m14645e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: f */
    public final String mo7487f() {
        return this.f16953a.m14643f();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: g */
    public final double mo7486g() {
        return this.f16953a.m14641g() != null ? this.f16953a.m14641g().doubleValue() : (char) 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: h */
    public final String mo7485h() {
        return this.f16953a.m14640h();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: i */
    public final String mo7484i() {
        return this.f16953a.m14639i();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: j */
    public final eba mo7483j() {
        return this.f16953a.m14638j() != null ? this.f16953a.m14638j().m14617a() : null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: k */
    public final AbstractC2837bn mo7482k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: l */
    public final AbstractC2731a mo7481l() {
        View m14636l = this.f16953a.m14636l();
        return m14636l == null ? null : BinderC2734b.m13794a(m14636l);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: m */
    public final AbstractC2731a mo7480m() {
        View m14635m = this.f16953a.m14635m();
        return m14635m == null ? null : BinderC2734b.m13794a(m14635m);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: n */
    public final AbstractC2731a mo7479n() {
        Object m14631q = this.f16953a.m14631q();
        return m14631q == null ? null : BinderC2734b.m13794a(m14631q);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: o */
    public final Bundle mo7478o() {
        return this.f16953a.m14630r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: p */
    public final boolean mo7477p() {
        return this.f16953a.m14629s();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: q */
    public final boolean mo7476q() {
        return this.f16953a.m14628t();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: r */
    public final void mo7475r() {
        this.f16953a.m14627u();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: s */
    public final float mo7474s() {
        return this.f16953a.m14634n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: t */
    public final float mo7473t() {
        return this.f16953a.m14633o();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3297le
    /* renamed from: u */
    public final float mo7472u() {
        return this.f16953a.m14632p();
    }
}
